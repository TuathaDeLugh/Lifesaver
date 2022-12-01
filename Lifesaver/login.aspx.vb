Imports System.Data.SqlClient

Public Class login
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
    Protected Sub Rememberme_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Rememberme.CheckedChanged
        If Rememberme.Checked Then
            PASS.TextMode = TextBoxMode.SingleLine
            Response.Cookies("loginid").Value = ID.Text
            Response.Cookies("loginpass").Value = PASS.Text
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim ad As New SqlDataAdapter("select * from weblogin where username='" & ID.Text & "'AND password='" & PASS.Text & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            Session("a") = ID.Text
            If ID.Text = "admin" Then
                Response.Redirect("~\AdminPanal/home.aspx")
            Else
                Response.Redirect("~\Bloodbank\home.aspx")

            End If
        Else
            MsgBox("Invalid email or password you noob")
        End If
        con.Close()

    End Sub

    Protected Sub autofill_Click(sender As Object, e As EventArgs) Handles autofill.Click
        Try
            PASS.TextMode = TextBoxMode.SingleLine
            ID.Text = Request.Cookies("loginid").Value
            PASS.Text = Request.Cookies("loginpass").Value
        Catch CookieException As Exception
            MsgBox("cookie not found")
        End Try
        PASS.TextMode = TextBoxMode.Password
    End Sub
End Class