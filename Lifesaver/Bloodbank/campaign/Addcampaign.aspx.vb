Imports System.Data.SqlClient
Imports System.Reflection.Emit

Public Class Addcampaign
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim datedata, timedata As String
        datedata = TextBox6.Text + " To " + TextBox7.Text
        timedata = TextBox8.Text + " To " + TextBox9.Text
        con.Open()
        Dim cmd1 As New SqlCommand("insert into campaign (username,name,address,pincode,mno,tagline,date,time,approve) values ('" & Session("a") & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & datedata & "','" & timedata & "','no')", con)
        cmd1.ExecuteNonQuery()
        con.Close()
        ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Campaign Added Now Wait For Approvement','','success')", True)
        con.Close()
    End Sub
    Protected Sub map_CheckedChanged(sender As Object, e As EventArgs) Handles map.CheckedChanged
        If map.Checked Then
            Panel1.Visible = True
            TextBox10.Text = ""
            RequiredFieldValidator7.ControlToValidate = "TextBox10"
        ElseIf Not map.Checked Then
            Panel1.Visible = False
            TextBox10.Text = "notgiven"
            RequiredFieldValidator7.ControlToValidate = ""
        End If
    End Sub
End Class