Imports System.Data.SqlClient
Public Class profile
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(Str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("a")
        
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Button1.Text = "want to update" Then
            Button1.Text = "cancel"
            Button2.Visible = True
        Else
            Button1.Text = "want to update"
            Button2.Visible = False
            con.Open()
            Dim sql As String = "select * from weblogin where username='" & Session("a") & "'"
            Dim cd As New SqlCommand(sql, con)
            Dim rd As SqlDataReader = cd.ExecuteReader
            While rd.Read()
                TextBox1.Text = rd("id")
                TextBox2.Text = rd("username")
                TextBox3.Text = rd("name")
                TextBox4.Text = rd("password")
                TextBox5.Text = rd("email")
                TextBox6.Text = rd("address")
                TextBox7.Text = rd("pincode")
                TextBox8.Text = rd("mno")
                TextBox9.Text = rd("question")
                TextBox10.Text = rd("answer")
                TextBox11.Text = rd("time")
            End While
            con.Close()
        End If
        If TextBox2.Enabled = False Then
            TextBox2.Enabled = True
            TextBox3.Enabled = True
            TextBox4.Enabled = True
            TextBox5.Enabled = True
            TextBox6.Enabled = True
            TextBox7.Enabled = True
            TextBox8.Enabled = True
            TextBox9.Enabled = True
            TextBox10.Enabled = True
            TextBox11.Enabled = True
        Else
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
            TextBox6.Enabled = False
            TextBox7.Enabled = False
            TextBox8.Enabled = False
            TextBox9.Enabled = False
            TextBox10.Enabled = False
            TextBox11.Enabled = False
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        con.Open()
        Dim cmd As New SqlCommand("update weblogin set username='" & TextBox2.Text & "',name='" & TextBox3.Text & "',password='" & TextBox4.Text & "',email='" & TextBox5.Text & "',address='" & TextBox6.Text & "',pincode='" & TextBox7.Text & "',mno='" & TextBox8.Text & "',question='" & TextBox9.Text & "',answer='" & TextBox10.Text & "',time='" & TextBox11.Text & "' where id=" & TextBox1.Text & "", con)
        cmd.ExecuteNonQuery()
        con.Close()
        TextBox2.Enabled = False
        TextBox3.Enabled = False
        TextBox4.Enabled = False
        TextBox5.Enabled = False
        TextBox6.Enabled = False
        TextBox7.Enabled = False
        TextBox8.Enabled = False
        TextBox9.Enabled = False
        TextBox10.Enabled = False
        TextBox11.Enabled = False
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        con.Open()
        Dim sql As String = "select * from weblogin where username='" & Session("a") & "'"
        Dim cd As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = cd.ExecuteReader
        While rd.Read()
            TextBox1.Text = rd("id")
            TextBox2.Text = rd("username")
            TextBox3.Text = rd("name")
            TextBox4.Text = rd("password")
            TextBox5.Text = rd("email")
            TextBox6.Text = rd("address")
            TextBox7.Text = rd("pincode")
            TextBox8.Text = rd("mno")
            TextBox9.Text = rd("question")
            TextBox10.Text = rd("answer")
            TextBox11.Text = rd("time")
        End While
        con.Close()
    End Sub
End Class