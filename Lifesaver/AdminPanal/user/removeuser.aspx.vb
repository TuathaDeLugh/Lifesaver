Imports System.Data.SqlClient

Public Class removeuser
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Dim sql As String = "select username,donername,mno,email from users"
        Dim ad As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        con.Close()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Try
            Dim cd As New SqlCommand("delete from users where username='" & TextBox1.Text & "'", con)
            cd.ExecuteNonQuery()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Campaign Deleted','','success')", True)
        Catch
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Campaign not Deleted','','success')", True)

        End Try
    End Sub
End Class