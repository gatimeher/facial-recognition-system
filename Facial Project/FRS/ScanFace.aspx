<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScanFace.aspx.cs" Inherits="FRS.ScanFace" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style2">
            <strong>Show photo saved details</strong></p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
             <asp:DataList ID="DataList1" runat="server" OnItemDataBound="DataList1_ItemDataBound" OnSelectedIndexChanged="DataList1_ItemDataBound">

                 <ItemTemplate>
                    <h2>
                        <%#Eval("Email_ID") %>
                        <asp:Image Width="100" Height="100" ID="photo" runat="server" />

                    </h2>
                </ItemTemplate>

            </asp:DataList>&nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
