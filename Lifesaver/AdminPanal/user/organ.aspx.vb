Imports System.Data.SqlClient

Public Class organ
    Inherits System.Web.UI.Page
    Dim str As String = ConfigurationManager.ConnectionStrings("umangpc").ConnectionString
    Dim con As New SqlConnection(str)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            con.Open()
            Dim sql As String = "select username,donername,bdate,address,pincode,mno,email,organname from organ where approve='no'"
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()
        End If

    End Sub
    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs)


        Dim rowIndex As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = GridView1.Rows(rowIndex)
        Dim username As String = row.Cells(0).Text
        Dim name As String = row.Cells(1).Text
        If e.CommandName = "approve" Then
            con.Open()
            Dim cmd As New SqlCommand("update organ set approve='yes' where username='" & username & "'And donername='" & name & "'", con)
            cmd.ExecuteNonQuery()
            Dim sql As String = "select username,donername,bdate,address,pincode,mno,email,organname from organ where approve='no'"
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('info'),position: ('bottom-right'),closeIn: 5000,iconType: ('success')});NolertNotify.trigger({message: '" & name & " Approved'});", True)

        ElseIf e.CommandName = "reject" Then
            con.Open()
            Dim cmd As New SqlCommand("update organ set approve='rejected' where username='" & username & "'And donername='" & name & "'", con)
            cmd.ExecuteNonQuery()

            Dim sql As String = "select username,donername,bdate,address,pincode,mno,email,organname from organ where approve='no'"
            Dim ad As New SqlDataAdapter(sql, con)
            Dim ds As New DataSet
            ad.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('danger'),position: ('bottom-right'),closeIn: 5000,iconType: ('success')});NolertNotify.trigger({message: '" & name & " Rejected'});", True)
        ElseIf e.CommandName = "certi" Then
            con.Open()
            Try
                Dim cd1 As New SqlCommand("select certi from organ where username='" & username & "'And donername='" & name & "'", con)
                Dim link As String = cd1.ExecuteScalar
                If link = "notgiven" Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('dark'),position: ('bottom-right'),closeIn: 5000,iconType: ('warning')});NolertNotify.trigger({message: 'cerrtifecate is not given by " & name & "'});", True)

                Else
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "Thennew", "window.open('" & link & "', '_newtab');", True)

                End If

            Catch
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('danger'),position: ('bottom-right'),closeIn: 5000,iconType: ('success')});NolertNotify.trigger({message: 'No data found from" & name & "'});", True)

            End Try
        End If
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim cmd As New SqlCommand("update organ set approve='no'", con)
        cmd.ExecuteNonQuery()
        ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "NolertNotify.setConfig({type: ('dark'),position: ('bottom-right'),closeIn: 5000,iconType: ('info')});NolertNotify.trigger({message: 'Not a single campaign approved `(*>﹏<*)′ '});", True)

        Dim sql As String = "select username,donername,bdate,address,pincode,mno,email,organname from organ where approve='no'"
        Dim ad As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        con.Close()
    End Sub

End Class