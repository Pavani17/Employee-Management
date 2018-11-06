
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
                 <td class="auto-style1">EmpNo:</td>
            
              <td>  <asp:TextBox ID="EmpnoTextbox1"  runat="server"></asp:TextBox></td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorNo" ForeColor="SeaGreen" runat="server" ErrorMessage=" No is Required" ControlToValidate="EmpnoTextbox1"></asp:RequiredFieldValidator>--%>
             </tr>
           
           
                <tr>
                    <td class="auto-style1">
                        Employee Name:</td>
           <td> <asp:TextBox ID="EmpnameTextbox2" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ForeColor="Red" runat="server" ErrorMessage=" Name is Required" ControlToValidate="EmpnameTextbox2"></asp:RequiredFieldValidator>

                    </td>

                </tr>
            
            <tr>
           <td class="auto-style1">Gender:</td> 
           <td> <asp:RadioButtonList ID="radioGender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList> </td>
                </tr>
                <tr>
           <td class="auto-style1">Technology:</td> 
           <td><asp:DropDownList ID="dropdownDepartment" runat="server" >
                <asp:ListItem>Asp.net</asp:ListItem>
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>Erp</asp:ListItem>
                <asp:ListItem>Angularjs</asp:ListItem>
            </asp:DropDownList></td>
                    </tr>
            
            <tr>
           <td class="auto-style1"> Address:</td>
<td><asp:CheckBoxList ID="checkboxAddress" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Hyderabad</asp:ListItem>
                <asp:ListItem>Amalapuram</asp:ListItem>
                <asp:ListItem>Rajamundry</asp:ListItem>
                <asp:ListItem>Kakinada</asp:ListItem>
                <asp:ListItem>Vizag</asp:ListItem>
            </asp:CheckBoxList></td>
                </tr>
          <tr>
              <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />&nbsp;
                  <asp:Button ID="ButtonUpdate" runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="ButtonDel" runat="server" Text="Delete" OnClick="ButtonDel_Click" />
              </td>

          </tr>
                <tr>
           <td class="auto-style1"> <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
               <br />
               <br />
                    </td>
                    </tr>

            </table>
             

        </div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
