Imports System.Data.SqlClient

Public Class updaterem
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Dim sql As String = "select name,pincode,mno,date,approve from campaign where username='" & Session("a") & "'"
        Dim ad As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        con.Close()
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim sql As String = "select * from campaign where name='" & TextBox1.Text & "'"
        Dim cd As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = cd.ExecuteReader
        If rd.Read() Then
            TextBox9.Text = rd("id")
            TextBox2.Text = rd("name")
            TextBox3.Text = rd("address")
            TextBox4.Text = rd("pincode")
            TextBox5.Text = rd("mno")
            TextBox6.Text = rd("tagline")
            TextBox7.Text = rd("date")
            TextBox8.Text = rd("time")
            TextBox10.Text = rd("map")
            TextBox2.Enabled = True
            TextBox3.Enabled = True
            TextBox4.Enabled = True
            TextBox4.Enabled = True
            TextBox5.Enabled = True
            TextBox6.Enabled = True
            TextBox7.Enabled = True
            TextBox8.Enabled = True
            TextBox10.Enabled = True
            Button2.Enabled = True
            Button3.Enabled = True
        Else
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' No Data found ','','error')", True)

        End If


        con.Close()

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Try
            con.Open()
            Dim cd As New SqlCommand("update campaign set name='" & TextBox2.Text & "',address='" & TextBox3.Text & "',pincode='" & TextBox4.Text & "',mno='" & TextBox5.Text & "',tagline='" & TextBox6.Text & "',date='" & TextBox7.Text & "',time='" & TextBox8.Text & "',approve='yes' where id=" & TextBox9.Text & "", con)
            cd.ExecuteNonQuery()
            con.Close()
            con.Open()
            Dim sql As String = "select name,pincode,mno,date,approve from campaign where username='" & Session("a") & "'"
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Campaign Updated','','success')", True)
        Catch
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' No Data found ','','error')", True)
        End Try
    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        con.Open()
        Try
            Dim cd As New SqlCommand("delete from campaign where id=" & TextBox9.Text & "", con)
            cd.ExecuteNonQuery()
            con.Close()
            con.Open()
            Dim sql As String = "select name,pincode,mno,date,approve from campaign where username='" & Session("a") & "'"
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Campaign Deleted','','success')", True)

        Catch
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' No campaign Data found','','error')", True)
        End Try

    End Sub


End Class