﻿Imports System.Data.SqlClient

Public Class remove
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(Str)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        con.Open()
        Try
            Dim cmd As New SqlCommand("delete from weblogin where name='" & TextBox3.Text & "'And email='" & TextBox5.Text & "'", con)
            cmd.ExecuteNonQuery()
            Dim cmd2 As New SqlCommand("delete from blooddata where name='" & TextBox3.Text & "'", con)
            cmd2.ExecuteNonQuery()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Blood Bank Deleted Sucessfully','','success')", True)
        Catch ex As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal('Blood Bank  not Deleted Sucessfully','','error')", True)
            con.Close()
        End Try
    End Sub
End Class