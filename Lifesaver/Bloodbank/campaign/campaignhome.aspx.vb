Imports System.Data.SqlClient


Public Class campaignhome
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Dim sql As String = "select name,address,pincode,mno,tagline,date	,time from campaign where username='" & Session("a") & "'And approve='yes'"
        Dim ad As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()


        Dim sql1 As String = "select name,address,pincode,mno,tagline,date,time from campaign where username='" & Session("a") & "'And approve='no' "
        Dim ad1 As New SqlDataAdapter(sql1, con)
            Dim ds1 As New DataSet
            ad1.Fill(ds1)
            GridView2.DataSource = ds1
            GridView2.DataBind()

        Dim sql2 As String = "select name,address,pincode,mno,tagline,date,time from campaign where username='" & Session("a") & "'And approve='rejected'"
        Dim ad2 As New SqlDataAdapter(sql2, con)
            Dim ds2 As New DataSet
        ad2.Fill(ds2)
        GridView3.DataSource = ds2
            GridView3.DataBind()

        con.Close()
    End Sub
End Class