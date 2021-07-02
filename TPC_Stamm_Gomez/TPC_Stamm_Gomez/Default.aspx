 <%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPC_Stamm_Gomez._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row py-3">
            <div class="col-3 order-2" id="sticky-sidebar">
                <div class="sticky-top">
                    <div class="nav flex-column">
                        <div class='col-xs-3'> 
                             <a href=# class="btn btn-primary btn-block">Cargar Stock</a>
                             <a href=# class="btn btn-primary btn-block">Historial de ingresos</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col" id="main">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Codigo</th>
                            <th scope="col">Producto</th>
                            <th scope="col">Presentacion</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Sector</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%foreach (Dominio.Stock item in lista)
                            {%>
                        <tr>
                            <th scope="row"><% =item.id %></th>
                            <td><% =item.marcas.nombreMarcas%>
                            <td><% =item.presentacion.descripcion %></td>
                            <td><% =item.stock %></td>
                            <td><% =item.categorias.nombreCategoria %></td>
                        </tr>

                        <%} %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
