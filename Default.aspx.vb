
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles submit.Click
        ' specify constant values
        Const tax_rate1 As Decimal = 0.18
        Const tax_rate2 As Decimal = 0.22

        'create bariables to hold the values entered by the user
        Dim w As Decimal = wage.Text
        Dim h As Decimal = hours.Text
        Dim d As Decimal = deduction.Text
        Const Hour_Limit As Decimal = 40

        Dim GrossEarning As Decimal
        If h <= Hour_Limit Then
            GrossEarning = h * w
        Else : GrossEarning = (h - Hour_Limit) * (1.5 * w) + Hour_Limit * w
        End If

        Dim taxableEarning As Decimal
        taxableEarning = GrossEarning - d

        Dim tax As Decimal

        If GrossEarning <= 500 Then
            tax = tax_rate1 * taxableEarning
        Else
            tax = tax_rate2 * taxableEarning


        End If

        Dim NetEarnings As Decimal
        NetEarnings = taxableEarning - tax

        'display the results in the resluts lable web control
        taxpaid.Text = "$" & tax.ToString("#,####,##")
        Label1.Text = "You are paid by $" & NetEarnings.ToString("#,####,#")


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Clear_Click(sender As Object, e As EventArgs) Handles Clear.Click
        ' clear the output
        taxpaid.Text = String.Empty
        Label1.Text = String.Empty
        wage.Text = String.Empty
        hours.Text = String.Empty
        deduction.Text = String.Empty
    End Sub
End Class
