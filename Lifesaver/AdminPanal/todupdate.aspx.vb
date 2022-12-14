Imports System.Data.SqlClient

Public Class todupdate
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(Str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Request.QueryString("id")
        If Not IsPostBack Then
            Dim todid As Integer
            todid = Request.QueryString("id")
            con.Open()
            Dim sql As String = "select * from  tipofday where id=" & todid & ""
            Dim cd As New SqlCommand(sql, con)
            Dim rd As SqlDataReader = cd.ExecuteReader
            While rd.Read()
                TextBox1.Text = rd("tip")
            End While
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim todid As Integer
        todid = Request.QueryString("id")
        con.Open()
        Dim cmd As New SqlCommand("update tipofday set tip='" & TextBox1.Text & "' where id=" & todid & "", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("~\AdminPanal\tipoftheday.aspx")
    End Sub


End Class