<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Staff_Prestations.aspx.cs" Inherits="JuryAthlete.Staff_Prestations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="panel-group">
                    <h2></h2>
                    <div class="panel panel-success">
                        <div class="panel-heading">Mes prestations</div>
                        <div class="panel-body">
                            <div class="form-inline" style="margin: 5px; border: 0px solid red">
                                <div class="form-group" style="margin: 5px">
                                    <label for="ddlSaison">Saison :  </label>
                                    <asp:DropDownList ID="ddlSaison" runat="server" class="form-control" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlSaison_SelectedIndexChanged" AutoPostBack="true">
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group" style="margin: 5px">
                                    <label for="ddlOfficial">Officiels :  </label>
                                    <asp:DropDownList ID="ddlOfficial" runat="server" class="form-control" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlOfficial_SelectedIndexChanged" AutoPostBack="true">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group text-right" style="float: right; border: 0px solid red">
                                    <asp:Button runat="server" ID="btnSearch" Text="Search" CssClass="btn btn-success" Style="display: none" />
                                </div>
                            </div>

                            <div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="panel panel-success">
                                            <div class="panel-heading">Prestations planifiées</div>
                                            <div class="panel-body">
                                                <asp:GridView runat="server" ID="gvplannedBenefitsPerSaison" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333"
                                                    CssClass="table table-striped table-bordered table-condensed"
                                                    GridLines="Both" Style="width: 100%"
                                                    UseAccessibleHeader="true"
                                                    ShowHeaderWhenEmpty="true" EmptyDataText="No records found!!!">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:BoundField DataField="f_date" HeaderText="Date" ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left" DataFormatString="{0:d}"></asp:BoundField>
                                                        <asp:BoundField DataField="f_club" HeaderText="Club" ItemStyle-Width="90" HeaderStyle-CssClass="text-center"></asp:BoundField>
                                                        <asp:BoundField DataField="f_nom" HeaderText="Function" ItemStyle-Width="90" HeaderStyle-CssClass="text-center"></asp:BoundField>
                                                        <asp:BoundField DataField="f_matin" HeaderText="Matin" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"></asp:BoundField>
                                                        <asp:BoundField DataField="f_apresmidi" HeaderText="Après-Midi" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"></asp:BoundField>
                                                        <asp:BoundField DataField="f_soir" HeaderText="Soir" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"></asp:BoundField>
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
                                        <%--</div>
                            <div class="col-sm-4" style="display:none">--%>
                                        <div class="panel panel-success">
                                            <div class="panel-heading">22-10 - RCAS - Meeting des lancers</div>
                                            <div class="panel-body">
                                                <asp:GridView runat="server" ID="gvOfficielsByCompetition" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333"
                                                    CssClass="table table-striped table-bordered table-condensed"
                                                    GridLines="Both" Style="width: 100%"
                                                    UseAccessibleHeader="true"
                                                    ShowHeaderWhenEmpty="true" EmptyDataText="No records found!!!">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Function" HeaderText="Function" ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left"></asp:BoundField>
                                                        <asp:BoundField DataField="Officiel" HeaderText="Officiel" ItemStyle-Width="90" HeaderStyle-CssClass="text-center"></asp:BoundField>
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
                                    <div class="col-sm-6">
                                        <div class="panel panel-success">
                                            <div class="panel-heading">Résumé</div>
                                            <div class="panel-body">
                                                <asp:GridView runat="server" ID="gvsummary" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333"
                                                    CssClass="table table-striped table-bordered table-condensed"
                                                    GridLines="Both" Style="width: 100%"
                                                    UseAccessibleHeader="true"
                                                    ShowHeaderWhenEmpty="true" EmptyDataText="No records found!!!">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:BoundField DataField="f_status" HeaderText="Statut " ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-left"></asp:BoundField>
                                                        <asp:BoundField DataField="nb_tot" HeaderText="Effectué " ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"></asp:BoundField>
                                                        <asp:BoundField DataField="nb_past" HeaderText="Planifié " ItemStyle-Width="90" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"></asp:BoundField>
                                                        <asp:BoundField DataField="nb_fut" HeaderText="Total " HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"></asp:BoundField>                                                        
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
                    </div>
                </div>
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
