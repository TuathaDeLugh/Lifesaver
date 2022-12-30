Imports System.Data.SqlClient
Imports System.Drawing

Public Class home3
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Dim sql As String = "select username,donername,gender,address,pincode,mno from appdoner"
        Dim ad As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        Dim sql2 As String = "select username,donername,pincode,address,mno,organname from organ"
        Dim ad2 As New SqlDataAdapter(sql2, con)
        Dim ds2 As New DataSet
        ad2.Fill(ds2)
        GridView2.DataSource = ds2
        GridView2.DataBind()
        Dim sql3 As String = "select username,name,address,pincode,mno,tagline,date,time from campaign where approve='yes'"
        Dim ad3 As New SqlDataAdapter(sql3, con)
        Dim ds3 As New DataSet
        ad3.Fill(ds3)
        GridView3.DataSource = ds3
        GridView3.DataBind()
        con.Close()
    End Sub

End Class