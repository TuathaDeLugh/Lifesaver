Imports System.Data.SqlClient

Public Class login
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Rememberme_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Rememberme.CheckedChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Rememberme.Checked Then
            PASS.TextMode = TextBoxMode.SingleLine
            Response.Cookies("loginid").Value = ID.Text
            Response.Cookies("loginpass").Value = PASS.Text
        End If
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

            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Invalid Id or Password','','error')", True)
        End If
        con.Close()

    End Sub

    Protected Sub autofill_Click(sender As Object, e As EventArgs) Handles autofill.Click
        '0;c;1;P;c;5;h;0;0t;4;0l;1;0o;1;0a;1;0m;1;0s;0.045;0e;0.083;1o;2;1a;1;1m;0;1f;0
        Try
            PASS.TextMode = TextBoxMode.SingleLine
            ID.Text = Request.Cookies("loginid").Value
            PASS.Text = Request.Cookies("loginpass").Value
        Catch CookieException As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('cookie not found','','error')", True)
        End Try
        PASS.TextMode = TextBoxMode.Password
    End Sub
End Class