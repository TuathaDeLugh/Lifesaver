Imports System.Data.SqlClient
Imports System.Security.Cryptography

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
        Try
            username = ID.Text
            userpass = ConvertPwdtoMD5(PASS.Text)
            If Rememberme.Checked Then
                PASS.TextMode = TextBoxMode.SingleLine
                Response.Cookies("loginid").Value = ID.Text
                Response.Cookies("loginpass").Value = ConvertPwdtoMD5(PASS.Text)
                Response.Cookies("loginid").Expires = DateTime.Now.AddHours(5)
                Response.Cookies("loginpass").Expires = DateTime.Now.AddHours(5)
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
        Catch
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Something Wrong Try Again.','','error')", True)
        End Try
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
            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('danger'),position: ('bottom-right'),closeIn: 5000,iconType: ('warning')});NolertNotify.trigger({message: 'Autofill Data Not Match, Maybe Password Changed'});", True)

            End If
            con.Close()
        Catch CookieException As Exception

            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('danger'),position: ('bottom-right'),closeIn: 5000,iconType: ('danger')});NolertNotify.trigger({message: 'Autofill Data Not Found'});", True)
        End Try

    End Sub
    Public Shared Function ConvertPwdtoMD5(strword As String) As String
        Dim md5 As MD5 = md5.Create()
        Dim Bytes As Byte() = Encoding.ASCII.GetBytes(strword)
        Dim hash As Byte() = md5.ComputeHash(Bytes)
        Dim sBuilder As New StringBuilder()
        For i As Integer = 0 To hash.Length - 1
            sBuilder.Append(hash(i).ToString("x2"))
        Next
        Return sBuilder.ToString()
    End Function
End Class