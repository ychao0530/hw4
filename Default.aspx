<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <h1>CY corp.</h1>
        <h1><strong>Salary Calculator</strong></h1>
    
    </div>
        <p>
            Hourly Wage <asp:TextBox ID="wage" runat="server" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p>
            Number of hours worked
            <asp:TextBox ID="hours" runat="server"></asp:TextBox>
        </p>
        <p>
            Tax deductions
            <asp:TextBox ID="deduction" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="submit" runat="server" Text="submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Clear" runat="server" Text="Clear" />
        </p>
        <p>
            TaxPaid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="taxpaid" runat="server"></asp:Label>
        </p>
        <p>
            Net earning&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
