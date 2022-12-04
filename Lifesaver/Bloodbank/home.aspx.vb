Imports System.Data.SqlClient
Imports System.Reflection.Emit

Public Class home2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
        Dim con As New SqlConnection(str)
        'blooddata
        con.Open()
        Dim sql As String = "SELECT opve FROM blooddata where username='" & Session("a") & "'"
        Dim cd As New SqlCommand(sql, con)
        Label0.Text = cd.ExecuteScalar
        Dim sql1 As String = "SELECT onve FROM blooddata where username='" & Session("a") & "'"
        Dim cd1 As New SqlCommand(sql1, con)
        Label1.Text = cd1.ExecuteScalar
        Dim sql2 As String = "SELECT apve FROM blooddata where username='" & Session("a") & "'"
        Dim cd2 As New SqlCommand(sql2, con)
        Label2.Text = cd2.ExecuteScalar
        Dim sql3 As String = "SELECT anve FROM blooddata where username='" & Session("a") & "'"
        Dim cd3 As New SqlCommand(sql3, con)
        Label3.Text = cd3.ExecuteScalar
        Dim sql4 As String = "SELECT bpve FROM blooddata where username='" & Session("a") & "'"
        Dim cd4 As New SqlCommand(sql4, con)
        Label4.Text = cd4.ExecuteScalar
        Dim sql5 As String = "SELECT bnve FROM blooddata where username='" & Session("a") & "'"
        Dim cd5 As New SqlCommand(sql5, con)
        Label5.Text = cd5.ExecuteScalar
        Dim sql6 As String = "SELECT opve FROM blooddata where username='" & Session("a") & "'"
        Dim cd6 As New SqlCommand(sql6, con)
        Label6.Text = cd6.ExecuteScalar
        Dim sql7 As String = "SELECT onve FROM blooddata where username='" & Session("a") & "'"
        Dim cd7 As New SqlCommand(sql7, con)
        Label7.Text = cd7.ExecuteScalar
        'campaign

        Dim sql8 As String = "SELECT count(*) FROM campaign where approve='yes' and username='" & Session("a") & "'"
        Dim cd8 As New SqlCommand(sql8, con)
        Label8.Text = cd8.ExecuteScalar
        Dim sql9 As String = "SELECT count(*) FROM campaign where approve='no' and username='" & Session("a") & "'"
        Dim cd9 As New SqlCommand(sql9, con)
        Label9.Text = cd9.ExecuteScalar
        Dim sql10 As String = "SELECT count(*) FROM campaign where approve='rejected' and username='" & Session("a") & "'"
        Dim cd10 As New SqlCommand(sql10, con)
        Label10.Text = cd10.ExecuteScalar
        Dim sql11 As String = "SELECT count(*) FROM campaign where username='" & Session("a") & "'"
        Dim cd11 As New SqlCommand(sql11, con)
        Label11.Text = cd11.ExecuteScalar
    End Sub

End Class