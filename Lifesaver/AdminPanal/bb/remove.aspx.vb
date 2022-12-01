Imports System.Data.SqlClient

Public Class remove
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(Str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        con.Open()
        Dim cmd As New SqlCommand("delete from weblogin where name='" & TextBox3.Text & "'And email='" & TextBox5.Text & "'", con)
        cmd.ExecuteNonQuery()
        Dim cmd2 As New SqlCommand("delete from blooddata where name='" & TextBox3.Text & "'", con)
        cmd2.ExecuteNonQuery()
        con.Close()
        Label1.Visible = True
        Label1.Text = "Blood Bank Deleted"
    End Sub
End Class