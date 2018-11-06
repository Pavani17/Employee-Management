<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Employee_Management.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 104px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                 <td class="auto-style1">
                     EmpNo:</td>
            
              <td>  <asp:TextBox ID="EmpnoTextbox1"  runat="server"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNo" runat="server" ForeColor="Red" ErrorMessage="No is Required" ControlToValidate="EmpnoTextbox1"></asp:RequiredFieldValidator>
             </tr>
           
           
                <tr>
                    <td class="auto-style1">
                        Employee Name:</td>
           <td> <asp:TextBox ID="EmpnameTextbox2" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ForeColor="Navy" ErrorMessage=" Name is Required" ControlToValidate="EmpnameTextbox2"></asp:RequiredFieldValidator>

                    </td>

                </tr>
            <tr>
                <td>Age</td>
                <td><asp:TextBox ID="AgeTextbox" runat="server"></asp:TextBox></td>
                <asp:RangeValidator ID="RangeValidatorAge" Display="Dynamic" runat="server" ErrorMessage="Age must be between 24 to 50" ControlToValidate="AgeTextbox" 
                    MinimumValue="24" MaximumValue ="50" Type="Integer"></asp:RangeValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" Display="Dynamic" runat="server" ErrorMessage="Age is Required" ControlToValidate="AgeTextbox"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td>Date</td>
                    <td> <asp:TextBox ID="DateTextbox" runat="server" Width="155px"></asp:TextBox></td>
                    <asp:RangeValidator ID="RangeValidatorDate" runat="server" ErrorMessage="Date must be between 17/06/1994 and 17/06/2018"
                     MinimumValue="17/06/1994"  MaximumValue="17/06/2018" Type="Date" ControlToValidate="DateTextbox"></asp:RangeValidator>
                </tr>
                
            
                <tr>
           <td class="auto-style1">Gender:</td> 
           <td> <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
               
                <asp:ListItem Value="1">Male</asp:ListItem>
                <asp:ListItem Value="2">Female</asp:ListItem>
            </asp:RadioButtonList> </td>
                </tr>
                <tr>
           <td class="auto-style1">Technology:</td> 
            
          
           <td><asp:DropDownList ID="DropDownList1" runat="server" >
               <asp:ListItem Text="Select Technology " Value="-1"></asp:ListItem>
                <asp:ListItem Value="1">Asp.net</asp:ListItem>
                <asp:ListItem Value="2">Java</asp:ListItem>
                <asp:ListItem Value="3">Erp</asp:ListItem>
                <asp:ListItem Value="4">Angularjs</asp:ListItem>
            </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorDropdown" InitialValue="-1" runat="server" ErrorMessage="Technology is required" ForeColor="YellowGreen" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
           </td>
                    </tr>
            
            <tr>
           <td class="auto-style1"> Address:</td>
<td><asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">Hyderabad</asp:ListItem>
                <asp:ListItem Value="2">Amalapuram</asp:ListItem>
                <asp:ListItem Value="3">Rajamundry</asp:ListItem>
                <asp:ListItem Value="4">Kakinada</asp:ListItem>
                <asp:ListItem Value="5">Vizag</asp:ListItem>
            </asp:CheckBoxList></td>
                </tr>
          <tr>
              <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>

          </tr>
                <tr>
           <td class="auto-style1"> <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                

            </table>
             

        </div>
    </form>
</body>
</html>
