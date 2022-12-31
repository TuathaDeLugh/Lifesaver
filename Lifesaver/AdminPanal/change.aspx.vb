Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Reflection.Emit
Imports System.Security.Cryptography
Imports System.Threading

Public Class change
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        con.Open()
        Dim ad As New SqlDataAdapter("select * from weblogin where password='" & ConvertPwdtoMD5(TextBox1.Text) & "' And username ='" & Session("a") & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            TextBox1.TextMode = TextBoxMode.SingleLine
            TextBox1.Text = "••••••••••••••••"
            TextBox1.Enabled = False
            TextBox2.Enabled = True
            TextBox3.Enabled = True
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('info'),position: ('bottom-right'),closeIn: 5000,iconType: ('info')});NolertNotify.trigger({message: 'Password will be encripted in database'});", True)

        Else
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Invalid Password','','error')", True)
        End If
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand("update weblogin set password='" & ConvertPwdtoMD5(TextBox2.Text) & "' where username='" & Session("a") & "'", con)
            cmd.ExecuteNonQuery()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' " & Session("a") & "  Password Updated','','success')", True)
            Response.Redirect("profile.aspx")
        Catch ex As System.Data.SqlClient.SqlException
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' con error ','','warning')", True)
        End Try
        con.Close()

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