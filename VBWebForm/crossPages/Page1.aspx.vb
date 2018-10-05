Public Class Page1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        'Dim sub1 = New MenuItem("toPage1")
        'sub1.NavigateUrl = "/Page1"
        'Dim sub2 = New MenuItem("toPage2")
        'sub1.NavigateUrl = "/Page2"

        'menu.Items.Add(sub1)
        'menu.Items.Add(sub2)
        If Not IsPostBack Then
            Dim subMenu = New MenuItem("TEST")

            Dim items As ArrayList = New ArrayList()
            items.Add("item1")
            items.Add("item2")

            subMenu.NavigateUrl = "password.aspx"

            For index = 0 To items.Count - 1
                Dim menuItem As MenuItem = New MenuItem(items.Item(index), "Value")

                menuItem.NavigateUrl = "/Page2"
                subMenu.ChildItems.Add(menuItem)

            Next

            Menu1.Items.Add(subMenu)

        End If





    End Sub

End Class