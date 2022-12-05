Imports System.Data.SqlClient

Public Class Blooddata
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("a")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        con = New SqlConnection(str)
        con.Open()
        Dim sql As String = "select * from blooddata where username='" & Session("a") & "'"
        Dim cd As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = cd.ExecuteReader
        While rd.Read()
            TextBox1.Text = rd("opve")
            TextBox2.Text = rd("onve")
            TextBox3.Text = rd("apve")
            TextBox4.Text = rd("anve")
            TextBox5.Text = rd("bpve")
            TextBox6.Text = rd("bnve")
            TextBox7.Text = rd("abpve")
            TextBox8.Text = rd("abnve")
        End While
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim cmd As New SqlCommand("update blooddata set opve='" & TextBox1.Text & "',onve='" & TextBox2.Text & "',apve='" & TextBox3.Text & "',anve='" & TextBox4.Text & "',bpve='" & TextBox5.Text & "',bnve='" & TextBox6.Text & "',abpve='" & TextBox7.Text & "',abnve='" & TextBox8.Text & "' where username='" & Session("a") & "'", con)
        cmd.ExecuteNonQuery()
        con.Close()
    End Sub
End Class