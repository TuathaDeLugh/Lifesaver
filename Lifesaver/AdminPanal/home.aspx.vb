Imports System.Data.SqlClient

Public Class home
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(Str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        'users
        Dim sql1 As String = "SELECT count(*) FROM users"
        Dim cd1 As New SqlCommand(sql1, con)
        Label1.Text = cd1.ExecuteScalar
        Dim sql2 As String = "SELECT count(*) FROM appdoner"
        Dim cd2 As New SqlCommand(sql2, con)
        Label2.Text = cd2.ExecuteScalar
        Dim sql3 As String = "SELECT count(*) FROM notdoner"
        Dim cd3 As New SqlCommand(sql3, con)
        Label3.Text = cd3.ExecuteScalar
        Dim sql4 As String = "SELECT count(*) FROM users where gender='male'"
        Dim cd4 As New SqlCommand(sql4, con)
        Label4.Text = cd4.ExecuteScalar
        Dim sql5 As String = "SELECT count(*) FROM users where gender='female'"
        Dim cd5 As New SqlCommand(sql5, con)
        Label5.Text = cd5.ExecuteScalar
        'campaign
        Dim sql19 As String = "SELECT count(DISTINCT pincode)as pincode FROM campaign"
        Dim cd19 As New SqlCommand(sql19, con)
        Label19.Text = cd19.ExecuteScalar
        Dim sql6 As String = "SELECT count(*) FROM campaign"
        Dim cd6 As New SqlCommand(sql6, con)
        Label6.Text = cd6.ExecuteScalar
        Dim sql7 As String = "SELECT count(*) FROM campaign where approve='yes'"
        Dim cd7 As New SqlCommand(sql7, con)
        Label7.Text = cd7.ExecuteScalar
        Dim sql8 As String = "SELECT count(*) FROM campaign where approve='no'"
        Dim cd8 As New SqlCommand(sql8, con)
        Label8.Text = cd8.ExecuteScalar
        'bloodbank
        Dim sql9 As String = "SELECT (count(*)-1) FROM weblogin"
        Dim cd9 As New SqlCommand(sql9, con)
        Label9.Text = cd9.ExecuteScalar
        Dim sql10 As String = "SELECT count(*) FROM blooddata where opve>0"
        Dim cd10 As New SqlCommand(sql10, con)
        Label10.Text = cd10.ExecuteScalar
        Dim sql11 As String = "SELECT count(*) FROM blooddata where onve>0"
        Dim cd11 As New SqlCommand(sql11, con)
        Label11.Text = cd11.ExecuteScalar
        Dim sql12 As String = "SELECT count(*) FROM blooddata where apve>0"
        Dim cd12 As New SqlCommand(sql12, con)
        Label12.Text = cd12.ExecuteScalar
        Dim sql13 As String = "SELECT count(*) FROM blooddata where anve>0"
        Dim cd13 As New SqlCommand(sql13, con)
        Label13.Text = cd13.ExecuteScalar
        Dim sql14 As String = "SELECT count(*) FROM blooddata where bpve>0"
        Dim cd14 As New SqlCommand(sql14, con)
        Label14.Text = cd14.ExecuteScalar
        Dim sql15 As String = "SELECT count(*) FROM blooddata where bnve>0"
        Dim cd15 As New SqlCommand(sql15, con)
        Label15.Text = cd15.ExecuteScalar
        Dim sql16 As String = "SELECT count(*) FROM blooddata where abpve>0"
        Dim cd16 As New SqlCommand(sql16, con)
        Label16.Text = cd16.ExecuteScalar
        Dim sql17 As String = "SELECT count(*) FROM blooddata where abnve>0"
        Dim cd17 As New SqlCommand(sql17, con)
        Label17.Text = cd17.ExecuteScalar
        Dim sql18 As String = "SELECT (count(DISTINCT pincode)-1)as pincode FROM weblogin"
        Dim cd18 As New SqlCommand(sql18, con)
        Label18.Text = cd18.ExecuteScalar
    End Sub

End Class