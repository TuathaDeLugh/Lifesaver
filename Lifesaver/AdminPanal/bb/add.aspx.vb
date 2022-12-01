Imports System.Data.SqlClient

Public Class add
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(Str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim cmd1 As New SqlCommand("insert into weblogin (username,name,password,email,address,pincode,mno,time,question,answer) values ('" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox11.Text & "','Please Enter This It help in account recovery','Please Enter This It help in account recovery')", con)
        cmd1.ExecuteNonQuery()
        Dim cmd2 As New SqlCommand("insert into blooddata (username,Name,opve,onve,apve,anve,bpve,bnve,abpve,abnve) values ('" & TextBox2.Text & "','" & TextBox3.Text & "',0,0,0,0,0,0,0,0)", con)
        cmd2.ExecuteNonQuery()
        con.Close()
        Label1.Visible = True
        Label1.Text = "Data Added"
        con.Close()
    End Sub
End Class