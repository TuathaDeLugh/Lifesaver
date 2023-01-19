Imports System.Data.SqlClient

Public Class profile1
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Dim userid As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label1.Text = Session("a")
        If Not IsPostBack Then
            con.Open()
            Dim sql As String = "select * from weblogin where username='" & Session("a") & "'"
            Dim cd As New SqlCommand(sql, con)
            Dim rd As SqlDataReader = cd.ExecuteReader
            While rd.Read()
                userid = rd("id")
                TextBox2.Text = rd("username")
                TextBox3.Text = rd("name")

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

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Button1.Text = "update" Then
            Button1.Text = "cancel"
            Button2.Visible = True
            TextBox3.Enabled = True

            TextBox5.Enabled = True
            TextBox6.Enabled = True
            TextBox7.Enabled = True
            TextBox8.Enabled = True
            TextBox9.Enabled = True
            TextBox10.Enabled = True
            TextBox11.Enabled = True
        Else
            Button1.Text = "update"
            Button2.Visible = False
            con.Open()
            Dim sql As String = "select * from weblogin where username='" & Session("a") & "'"
            Dim cd As New SqlCommand(sql, con)
            Dim rd As SqlDataReader = cd.ExecuteReader
            While rd.Read()
                userid = rd("id")
                TextBox2.Text = rd("username")
                TextBox3.Text = rd("name")

                TextBox5.Text = rd("email")
                TextBox6.Text = rd("address")
                TextBox7.Text = rd("pincode")
                TextBox8.Text = rd("mno")
                TextBox9.Text = rd("question")
                TextBox10.Text = rd("answer")
                TextBox11.Text = rd("time")
            End While
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('warning'),position: ('bottom-right'),closeIn: 5000,iconType: ('warning')});NolertNotify.trigger({message: 'Profile update cancelled'});", True)
            TextBox3.Enabled = False

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
        If TextBox2.Text = "********" Then
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Can't Update','You Need To Revel Data First','warning')", True)
        Else
            Try
                Dim cmd As New SqlCommand("update weblogin set name='" & TextBox3.Text & "',email='" & TextBox5.Text & "',address='" & TextBox6.Text & "',pincode='" & TextBox7.Text & "',mno='" & TextBox8.Text & "',question='" & TextBox9.Text & "',answer='" & TextBox10.Text & "',time='" & TextBox11.Text & "' where id=" & userid & "", con)
                cmd.ExecuteNonQuery()


                ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' " & TextBox2.Text & "  Profile Updated','','success')", True)
            Catch ex As Exception
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' con error ','','warning')", True)
            End Try
            TextBox3.Enabled = False

            TextBox5.Enabled = False
            TextBox6.Enabled = False
            TextBox7.Enabled = False
            TextBox8.Enabled = False
            TextBox9.Enabled = False
            TextBox10.Enabled = False
            TextBox11.Enabled = False
            Button2.Visible = False
            Button1.Text = "update"
        End If
        con.Close()
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/AdminPanal/change.aspx")
    End Sub
End Class