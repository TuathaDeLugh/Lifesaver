Imports System.Data.SqlClient

Public Class bloodapprove
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'con.Open()
            'Dim sql As String = "select username,donername,email,gender,address,mno,certificate from notdoner"
            'Dim ad As New SqlDataAdapter(sql, con)
            'Dim ds As New DataSet
            'ad.Fill(ds)
            'GridView1.DataSource = ds
            'GridView1.DataBind()
            'con.Close()
        End If

    End Sub
    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs)


        Dim rowIndex As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = GridView1.Rows(rowIndex)
        Dim username As String = row.Cells(0).Text
        Dim name As String = row.Cells(1).Text
        If e.CommandName = "approve" Then
            con.Open()
            Dim cmd As New SqlCommand("update users set candonate='yes' where username='" & username & "'And donername='" & name & "'", con)
            cmd.ExecuteNonQuery()
            Dim sql As String = "select username,donername,email,gender,address,mno,certificate from notdoner"
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('info'),position: ('bottom-right'),closeIn: 5000,iconType: ('success')});NolertNotify.trigger({message: '" & name & " Approved'});", True)

        ElseIf e.CommandName = "reject" Then
            con.Open()
            Dim cmd As New SqlCommand("update users set candonate='rejected' where username='" & username & "'And donername='" & name & "'", con)
            cmd.ExecuteNonQuery()

            Dim sql As String = "select username,donername,email,gender,address,mno,certificate from notdoner"
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('danger'),position: ('bottom-right'),closeIn: 5000,iconType: ('success')});NolertNotify.trigger({message: '" & name & " Rejected'});", True)

        End If
        con.Close()
    End Sub

End Class