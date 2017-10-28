<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Staff_Disponibilites.aspx.cs" Inherits="JuryAthlete.Staff_Disponibilites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText="" ShowNextPrevMonth ="false"  SelectionMode="Day"
                    
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar3" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar4" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar5" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar6" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar7" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar8" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar9" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar10" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar11" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="Calendar12" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Width="100%" Height="100%"
                    Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
                    PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

            </div>
        </div>
    </div>
    <%--


    <asp:Calendar ID="Calendar4" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

    <asp:Calendar ID="Calendar5" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
    <asp:Calendar ID="Calendar6" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>

    <asp:Calendar ID="Calendar7" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
    <asp:Calendar ID="Calendar8" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
    <asp:Calendar ID="Calendar9" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
    <asp:Calendar ID="Calendar10" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
    <asp:Calendar ID="Calendar11" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
    <asp:Calendar ID="Calendar12" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        Font-Names="Verdana" ForeColor="#663399" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>
    --%>

    <%--<asp:Calendar ID="Calendar13" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
        BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
        ForeColor="#663399" ShowGridLines="True" NextMonthText=""
        PrevMonthText="" VisibleDate="2017-01-01"></asp:Calendar>--%>
</asp:Content>
