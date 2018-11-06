<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpWebForm.aspx.cs" Inherits="Employee_Management.EmpWebForm" %>

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
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                  </td>
              </tr>
               <%--  <<%--asp:Button ID="ButtonUpdate" runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="ButtonDel" runat="server" Text="Delete" OnClick="ButtonDel_Click" />
              </td>

          </tr>
                <tr>
           <td class="auto-style1"> <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
               <br />
               <br />
                    </td>
                    </tr>--%>

            </table>
             
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DeleteCommand="DELETE FROM [tblEmployee] WHERE [EmpNo] = @original_EmpNo AND (([EmpName] = @original_EmpName) OR ([EmpName] IS NULL AND @original_EmpName IS NULL)) AND (([DeptName] = @original_DeptName) OR ([DeptName] IS NULL AND @original_DeptName IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))"
            InsertCommand="INSERT INTO [tblEmployee] ([EmpNo], [EmpName], [DeptName], [Gender], [Address]) VALUES (@EmpNo, @EmpName, @DeptName, @Gender, @Address)"
            SelectCommand="SELECT * FROM [tblEmployee]"
            UpdateCommand="UPDATE [tblEmployee] SET [EmpName] = @EmpName, [DeptName] = @DeptName, [Gender] = @Gender, [Address] = @Address WHERE [EmpNo] = @original_EmpNo AND (([EmpName] = @original_EmpName) OR ([EmpName] IS NULL AND @original_EmpName IS NULL)) AND (([DeptName] = @original_DeptName) OR ([DeptName] IS NULL AND @original_DeptName IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))" 
            ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="original_EmpNo" Type="Int32" />
                <asp:Parameter Name="original_EmpName" Type="String" />
                <asp:Parameter Name="original_DeptName" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpNo" Type="Int32" />
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="DeptName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
            </InsertParameters>
           <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="DeptName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="original_EmpNo" Type="Int32" />
                <asp:Parameter Name="original_EmpName" Type="String" />
                <asp:Parameter Name="original_DeptName" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpNo" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EmpNo" HeaderText="EmpNo" ReadOnly="True" SortExpression="EmpNo" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="DeptName" HeaderText="DeptName" SortExpression="DeptName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
    </form>
</body>
</html>
