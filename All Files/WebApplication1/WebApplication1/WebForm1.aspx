<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="border: medium double #000000; background-color: #F3F5DD; width: 558px; height: 384px; font-family: 'Times New Roman', Times, serif; color: #CC0099;">
        <div>
            
            <h2 style="font-family: 'Times New Roman', Times, serif; font-size: large; font-style: normal; font-variant: normal; color: #FF3399; position: absolute; z-index: auto; top: 18px; left: 178px; width: 209px; height: 19px; font-weight: bold;"> Employee Information </h2>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" BackColor="Ivory" BorderStyle="Double" BorderColor="#D291BC" BorderWidth="2px" CellPadding="5" Height="238px" style="margin-left: 62px; margin-top: 70px">
            <Columns>
                <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="Employee ID" SortExpression="EMPLOYEE_ID" />
                <asp:BoundField DataField="EMPLOYEE_FIRST_NAME" HeaderText="Employee First Name" SortExpression="EMPLOYEE_FIRST_NAME" />
                <asp:BoundField DataField="EMPLOYEE_LAST_NAME" HeaderText="Employee Last Name" SortExpression="EMPLOYEE_LAST_NAME" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAll" TypeName="CoffeeShop.clEmployeeList"></asp:ObjectDataSource>
    </form>
</body>
</html>
