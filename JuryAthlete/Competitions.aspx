<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Competitions.aspx.cs" Inherits="JuryAthlete.Competitions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="alert alert-danger" role="alert" runat="server" id="divError">
        <asp:Label runat="server" ID="lblError" Text=""></asp:Label>
    </div>

    <div class="container">
        <div class="panel-group">
            <h2></h2>
            <div class="panel panel-success">
                <div class="panel-heading">Compétitions planifiées pour la Région de Bruxelles-Capitale</div>
                <div class="panel-body">
                    <asp:GridView runat="server" ID="gvCompetitions" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333"
                        CssClass="table table-striped table-bordered table-condensed"
                        GridLines="Both" Style="width: 100%"
                        UseAccessibleHeader="true"
                        ShowHeaderWhenEmpty="true" EmptyDataText="No records found in logs!!!">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="date" HeaderText="Date" ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left"></asp:BoundField>
                            <asp:BoundField DataField="f_heure" HeaderText="Heure" ItemStyle-Width="90" HeaderStyle-CssClass="text-center"></asp:BoundField>
                            <asp:BoundField DataField="f_club" HeaderText="Club" ItemStyle-Width="90" HeaderStyle-CssClass="text-center"></asp:BoundField>
                            <asp:TemplateField HeaderText="Lieu" ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="text-center">
                                <ItemTemplate>
                                    <a target="_blank" href="https://maps.google.be/maps?hl=fr&q=<%# Eval("lieu") %>"><%# Eval("lieu") %>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="f_nom" HeaderText="Nom" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left"></asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#999999"></EditRowStyle>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>
                        <HeaderStyle BackColor="#284775" Font-Bold="True" ForeColor="White"></HeaderStyle>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"></PagerStyle>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
                        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>
                        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>
                        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                    </asp:GridView>
                </div>
            </div>
                        
        </div>
    </div>
</asp:Content>
