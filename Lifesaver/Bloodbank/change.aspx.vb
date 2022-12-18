Imports System.Data.SqlClient

Public Class change1
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        con.Open()
        Dim ad As New SqlDataAdapter("select * from weblogin where password='" & TextBox1.Text & "' And username='" & Session("a") & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then

            TextBox2.Enabled = True
            TextBox3.Enabled = True

        Else
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Invalid Password','','error')", True)
        End If
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand("update weblogin set password='" & TextBox3.Text & "' where username ='" & Session("a") & "'", con)
            cmd.ExecuteNonQuery()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' " & Session("a") & "  Password Updated','','success')", True)
            Response.Redirect("profile.aspx")
        Catch ex As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' con error ','','warning')", True)
        End Try
        con.Close()

    End Sub
End Class