﻿Imports System.Data.SqlClient
Imports System.Drawing

Public Class FaQ
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            con.Open()
            Dim sql As String
            sql = "select * from feedback"
            Dim ad As New SqlDataAdapter(Sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            ListView1.DataSource = ds
            ListView1.DataBind()
            con.Close()
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        Try
            con.Open()
            Dim cmd1 As New SqlCommand("insert into feedback values('Umang','ursailor@gmail.com','feedback','Rateing','This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.')", con)
            cmd1.ExecuteNonQuery()
            Dim cmd2 As New SqlCommand("insert into feedback values('Umang','ursailor@gmail.com','question','Rateing','This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.')", con)
            cmd2.ExecuteNonQuery()
            Dim cmd3 As New SqlCommand("insert into feedback values('Umang','ursailor@gmail.com','bbadd','Rateing','This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.This is main data.')", con)
            cmd3.ExecuteNonQuery()
            con.Close()
            con.Open()
            Dim sql As String
            If DropDownList1.SelectedValue = "*" Then
                sql = "select * from feedback"
            Else
                sql = "select * from feedback where type='" & DropDownList1.SelectedValue & "'"
            End If
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            ListView1.DataSource = ds
            ListView1.DataBind()

            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('dark'),position: ('bottom-right'),closeIn: 5000,iconType: ('info')});NolertNotify.trigger({message: 'Dummy Data Added'});", True)

        Catch ex As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' Failed to add ','','error')", True)
        End Try

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim sq As String
        If DropDownList1.SelectedValue = "*" Then
            sq = "truncate table feedback"
        Else
            sq = "delete from feedback where type='" & DropDownList1.SelectedValue & "'"
        End If
        Try
            Dim cmd1 As New SqlCommand(sq, con)
            cmd1.ExecuteNonQuery()

            con.Close()
            con.Open()
            Dim sql As String
            If DropDownList1.SelectedValue = "*" Then
                sql = "select * from feedback"
            Else
                sql = "select * from feedback where type='" & DropDownList1.SelectedValue & "'"
            End If
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            ListView1.DataSource = ds
            ListView1.DataBind()


            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('success'),position: ('bottom-right'),closeIn: 5000,iconType: ('success')});NolertNotify.trigger({message: 'Selected feedback cleared'});", True)

        Catch ex As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "swal(' Failed to clear ','','error')", True)
        End Try
        con.Close()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        con.Open()
        Dim sql As String
        If DropDownList1.SelectedValue = "*" Then
            sql = "select * from feedback"
        Else
            sql = "select * from feedback where type='" & DropDownList1.SelectedValue & "'"
        End If
        Dim ad As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        ad.Fill(ds)
        ListView1.DataSource = ds
        ListView1.DataBind()
        If DropDownList1.SelectedValue = "*" Then
            Button1.Text = "Clear All"
        ElseIf DropDownList1.SelectedValue = "bbadd" Then
            Button1.Text = "Clear BloodBankAdd"
        Else
            Button1.Text = "Clear " + DropDownList1.SelectedValue
        End If
        con.Close()
    End Sub
End Class