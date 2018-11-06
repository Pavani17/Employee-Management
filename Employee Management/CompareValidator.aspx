<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidator.aspx.cs" Inherits="Employee_Management.CompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table><tr>
                <td>Password</td>
                <td> 
                    <asp:TextBox ID="PasswordTxtbox" runat="server" TextMode="Password"></asp:TextBox>

                </td>
                
                   </tr>
                <tr>
                    <td>ReEnter Password</td>
                    <td>
                        <asp:TextBox ID="ReEnterTxtbox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Password and Retype password should match" 
                            ControlToValidate="ReEnterTxtbox" ControlToCompare="PasswordTxtbox"
                            Operator="Equal"  Type="String" ForeColor="#0033CC"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Application</td>
                    <td>
                        <asp:TextBox ID="DateTxtbox" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorDate" runat="server" ErrorMessage="Date of app must be greater than 30/07/2018" 
                         ValueToCompare="30/07/2018" Operator="GreaterThan"  Type="Date"  ControlToValidate="DateTxtbox"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><asp:TextBox ID="AgeTxtbox" runat="server"></asp:TextBox>

                        <asp:CompareValidator ID="CompareValidatorAge" runat="server" ErrorMessage="Age must be number" 
                          Operator="DataTypeCheck" Type="Integer" ControlToValidate="AgeTxtbox"></asp:CompareValidator>

                    </td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button" Text="Save" runat="server" OnClick="Button_click" />

                    </td>

                </tr>
                 <tr>
           <td class="auto-style1"> <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
            </table>
           
        </div>
    </form>
</body>
</html>
