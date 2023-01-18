Imports System.Data.SqlClient
Imports System.Drawing

Public Class contactus
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (TextBox1.Text Is Nothing Or TextBox2.Text Is Nothing Or TextBox3.Text Is Nothing Or TextBox4.Text Is Nothing) Then
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('info'),position: ('bottom-right'),closeIn: 5000,iconType: ('warning')});NolertNotify.trigger({message: 'You missed something to fill'});", True)
        Else
            Try
                con.Open()
                Dim cmd1 As New SqlCommand("insert into feedback values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & DropDownList1.SelectedValue & "','" & TextBox3.Text & "','" & TextBox4.Text & "')", con)
                cmd1.ExecuteNonQuery()
                con.Close()
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Your " & DropDownList1.Text & " request saved successfully','','success')", True)
            Catch
            End Try
        End If
    End Sub
End Class