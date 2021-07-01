<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPC_Stamm_Gomez._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row py-3">
            <div class="col-3 order-2" id="sticky-sidebar">
                <div class="sticky-top">
                    <div class="nav flex-column">
                        <div class='col-xs-3'>
                            <asp:Button Text="Ingreso Stock" runat="server" class="btn btn-primary btn-block" />
                            <asp:Button Text="Productos" runat="server" class="btn btn-primary btn-block" />
                            <asp:Button Text="Vendedores" runat="server" class="btn btn-primary btn-block" />
                            <asp:Button Text="Ventas" runat="server" class="btn btn-primary btn-block" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col" id="main">
                <h1>Main Area</h1>
                <p></p>

            </div>
        </div>
    </div>


</asp:Content>
