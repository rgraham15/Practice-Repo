<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Reservations.aspx.cs" Inherits="DemoPages_Reservations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" PageSize="5">
        <AlternatingRowStyle BackColor="#FFCCCC" />
        <Columns>
            <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" ReadOnly="True" SortExpression="ReservationID">
            <HeaderStyle BackColor="#66CCFF" ForeColor="Black" />
            <ItemStyle Font-Bold="True" Font-Size="Medium" />
            </asp:BoundField>
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            <asp:BoundField DataField="ReservationDate" DataFormatString="{0:MMM dd, yyyy}" HeaderText="ReservationDate" SortExpression="ReservationDate">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberinParty" HeaderText="NumberinParty" SortExpression="NumberinParty" />
            <asp:BoundField DataField="ContactPhone" HeaderText="ContactPhone" SortExpression="ContactPhone" />
            <asp:BoundField DataField="ReservationStatus" HeaderText="ReservationStatus" SortExpression="ReservationStatus" />
            <asp:BoundField DataField="EventCode" HeaderText="EventCode" SortExpression="EventCode" />
        </Columns>
        <PagerSettings FirstPageText="FIRST" LastPageText="LAST" Mode="NumericFirstLast" NextPageText="NEXT" PreviousPageText="PREVIOUS" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Reservations_List" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
</asp:Content>

