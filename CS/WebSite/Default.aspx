<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to highlight ASPxGridView cells on a click and get their values and column names</title>
    <script type="text/javascript">
        var FocusedCell;
        function onCellClick(columnName, cellValue, htmlId) {
            if (FocusedCell != null) {
                FocusedCell.style.color = '';
                FocusedCell.style.border = '';
            }
            FocusedCell = document.getElementById(htmlId);
            FocusedCell.style.color = 'Red';
            FocusedCell.style.border = '1px solid Red';
            clientLabelField.SetText(columnName);
            clientTextBoxCellValue.SetText(cellValue);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductID" ClientInstanceName="clientGridView" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <table>
                <tr>
                    <td style="width: 200px;">
                        <dx:ASPxLabel ID="ASPxLabelField" runat="server" Text="Field: " ClientInstanceName="clientLabelField"></dx:ASPxLabel>
                    </td>
                    <td>
                        <dx:ASPxTextBox ID="ASPxTextBoxCellValue" runat="server" Width="170px" ClientInstanceName="clientTextBoxCellValue"></dx:ASPxTextBox>
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [CategoryName] FROM [Alphabetical list of products]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
