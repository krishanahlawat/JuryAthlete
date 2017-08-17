<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="StaffOfficielsMeritants.aspx.cs" Inherits="JuryAthlete.StaffOfficielsMeritants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="alert alert-danger" role="alert" runat="server" id="divError">
        <asp:Label runat="server" ID="lblError" Text=""></asp:Label>
    </div>


    <div class="container">
        <div class="panel-group">
            <h2></h2>
            <div class="panel panel-success">
                <div class="panel-heading">Officiels méritants de la Région de Bruxelles-Capitale</div>
                <div class="panel-body">

                    <div class="row text-center">
                        <div class="col-sm-6 col-md-3 service">
                            <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333"
                                CssClass="table table-striped table-bordered table-condensed"
                                GridLines="Both" Style="width: 100%"
                                UseAccessibleHeader="true"
                                ShowHeaderWhenEmpty="true" EmptyDataText="No records found in logs!!!">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="f_annee" HeaderText="Année" ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left"></asp:BoundField>
                                    <asp:BoundField DataField="f_nom" HeaderText="Nom" HeaderStyle-CssClass="text-center"></asp:BoundField>
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
                        <div class="col-sm-6 col-md-3 service">
                            <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333"
                                CssClass="table table-striped table-bordered table-condensed"
                                GridLines="Both" Style="width: 100%"
                                UseAccessibleHeader="true"
                                ShowHeaderWhenEmpty="true" EmptyDataText="No records found in logs!!!">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="f_annee" HeaderText="Année" ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left"></asp:BoundField>
                                    <asp:BoundField DataField="f_nom" HeaderText="Nom" HeaderStyle-CssClass="text-center"></asp:BoundField>
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
                        <div class="col-sm-6 col-md-3 service">
                            <asp:GridView runat="server" ID="GridView3" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333"
                                CssClass="table table-striped table-bordered table-condensed"
                                GridLines="Both" Style="width: 100%"
                                UseAccessibleHeader="true"
                                ShowHeaderWhenEmpty="true" EmptyDataText="No records found in logs!!!">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="f_annee" HeaderText="Année" ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left"></asp:BoundField>
                                    <asp:BoundField DataField="f_nom" HeaderText="Nom" HeaderStyle-CssClass="text-center"></asp:BoundField>
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
                        <div class="col-sm-6 col-md-3 service">
                            <asp:GridView runat="server" ID="GridView4" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333"
                                CssClass="table table-striped table-bordered table-condensed"
                                GridLines="Both" Style="width: 100%"
                                UseAccessibleHeader="true"
                                ShowHeaderWhenEmpty="true" EmptyDataText="No records found in logs!!!">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="f_annee" HeaderText="Année" ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left"></asp:BoundField>
                                    <asp:BoundField DataField="f_nom" HeaderText="Nom" HeaderStyle-CssClass="text-center"></asp:BoundField>
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

        </div>
    </div>
</asp:Content>
