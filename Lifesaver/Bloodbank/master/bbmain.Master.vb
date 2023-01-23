Public Class bbmain
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("a") = "lifeline"
        If String.IsNullOrEmpty(Session("a")) Then
            Response.Redirect("~/login.aspx")
        End If
        Label2.Text = Session("a") + " loged in"
    End Sub
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        Response.Redirect("~\login.aspx")
    End Sub
End Class