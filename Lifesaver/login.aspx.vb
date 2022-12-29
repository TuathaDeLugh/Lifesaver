Imports System.Data.SqlClient

Public Class login
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Dim username, userpass As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Rememberme_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Rememberme.CheckedChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        username = ID.Text
        userpass = PASS.Text
        If Rememberme.Checked Then
            PASS.TextMode = TextBoxMode.SingleLine
            Response.Cookies("loginid").Value = ID.Text
            Response.Cookies("loginpass").Value = PASS.Text
        End If
        con.Open()
        Dim ad As New SqlDataAdapter("select * from weblogin where username='" & username & "'AND password='" & userpass & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            Session("a") = username
            If username = "admin" Then
                Response.Redirect("~\AdminPanal/home.aspx")
            Else
                Response.Redirect("~\Bloodbank\home.aspx")

            End If
        Else

            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Invalid Id or Password','','error')", True)
        End If
        con.Close()

    End Sub

    Protected Sub autofill_Click(sender As Object, e As EventArgs) Handles autofill.Click
        '0;c;1;P;c;5;h;0;0t;4;0l;1;0o;1;0a;1;0m;1;0s;0.045;0e;0.083;1o;2;1a;1;1m;0;1f;0
        Try
            username = Request.Cookies("loginid").Value
            userpass = Request.Cookies("loginpass").Value
            con.Open()
            Dim ad As New SqlDataAdapter("select * from weblogin where username='" & username & "'AND password='" & userpass & "'", con)
            Dim ds As New DataSet
            ad.Fill(ds)
            If ds.Tables(0).Rows.Count > 0 Then
                Session("a") = username
                If username = "admin" Then
                    Response.Redirect("~\AdminPanal/home.aspx")
                Else
                    Response.Redirect("~\Bloodbank\home.aspx")

                End If
            End If
            con.Close()
        Catch CookieException As Exception

            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('danger'),position: ('bottom-right'),closeIn: 5000,iconType: ('danger')});NolertNotify.trigger({message: 'Autofill Data Not Found'});", True)
        End Try

    End Sub
End Class