Imports System.Data.SqlClient
Public Class tipoftheday
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Dim sql1 As String = "select tip from tipofday where id =1"
        Dim cd1 As New SqlCommand(sql1, con)
        label1.Text = cd1.ExecuteScalar
        Dim sql2 As String = "select tip from tipofday where id =2"
        Dim cd2 As New SqlCommand(sql2, con)
        Label2.Text = cd2.ExecuteScalar
        Dim sql3 As String = "select tip from tipofday where id =3"
        Dim cd3 As New SqlCommand(sql3, con)
        Label3.Text = cd3.ExecuteScalar
        Dim sql4 As String = "select tip from tipofday where id =4"
        Dim cd4 As New SqlCommand(sql4, con)
        Label4.Text = cd4.ExecuteScalar
        Dim sql5 As String = "select tip from tipofday where id =5"
        Dim cd5 As New SqlCommand(sql5, con)
        Label5.Text = cd5.ExecuteScalar
        Dim sql6 As String = "select tip from tipofday where id =6"
        Dim cd6 As New SqlCommand(sql6, con)
        Label6.Text = cd6.ExecuteScalar
        Dim sql7 As String = "select tip from tipofday where id =7"
        Dim cd7 As New SqlCommand(sql7, con)
        Label7.Text = cd7.ExecuteScalar
        Dim sql8 As String = "select tip from tipofday where id =8"
        Dim cd8 As New SqlCommand(sql8, con)
        Label8.Text = cd8.ExecuteScalar
        Dim sql9 As String = "select tip from tipofday where id =9"
        Dim cd9 As New SqlCommand(sql9, con)
        Label9.Text = cd9.ExecuteScalar
        Dim sql10 As String = "select tip from tipofday where id =10"
        Dim cd10 As New SqlCommand(sql10, con)
        Label10.Text = cd10.ExecuteScalar
        Dim sql11 As String = "select tip from tipofday where id =11"
        Dim cd11 As New SqlCommand(sql11, con)
        Label11.Text = cd11.ExecuteScalar
        Dim sql12 As String = "select tip from tipofday where id =12"
        Dim cd12 As New SqlCommand(sql12, con)
        Label12.Text = cd12.ExecuteScalar
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=1")
    End Sub
    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton2.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=2")
    End Sub
    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton3.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=3")
    End Sub
    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton4.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=4")
    End Sub
    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton5.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=5")
    End Sub
    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton6.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=6")
    End Sub
    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton7.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=7")
    End Sub
    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton8.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=8")
    End Sub
    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton9.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=9")
    End Sub
    Protected Sub LinkButton10_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton10.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=10")
    End Sub
    Protected Sub LinkButton11_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton11.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=11")
    End Sub
    Protected Sub LinkButton12_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton12.Click
        Response.Redirect("~\AdminPanal\todupdate.aspx?id=12")
    End Sub
End Class