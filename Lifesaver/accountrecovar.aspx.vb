Imports System.Data.SqlClient
Public Class accountrecovar
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(Str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        con.Open()
        Dim ad As New SqlDataAdapter("select * from weblogin where email='" & TextBox1.Text & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then

            Label1.Text = ds.Tables(0).Rows(0).Item("question").ToString
            Label1.Visible = True
            TextBox2.Enabled = True
            Button1.Enabled = True

        Else
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Invalid Email','','error')", True)
        End If
        con.Close()

    End Sub
    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        con.Open()
        Dim ad As New SqlDataAdapter("select * from weblogin where email='" & TextBox1.Text & "'AND answer='" & TextBox2.Text & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            TextBox3.Enabled = True
            TextBox4.Enabled = True
            Button2.Enabled = True
        Else
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Invalid Answer','','error')", True)
        End If
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        con.Open()
        Dim cmd As New SqlCommand("update weblogin set password='" & TextBox3.Text & "' where email='" & TextBox1.Text & "'", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("~\login.aspx")
    End Sub
End Class