<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularExp.aspx.cs" Inherits="Employee_Management.RegularExp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Email
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTxtbox" runat="server" ValidateRequestMode="Disabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="EmailTxtbox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Save" />
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Labelmsg" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
