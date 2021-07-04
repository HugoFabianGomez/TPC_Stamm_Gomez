<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistorialStock.aspx.cs" Inherits="TPC_Stamm_Gomez.HistorialStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1> HISTORIAL STOCK </h1>
     <div class="container">
        <div class="row py-3">
            <div class="col-3 order-2" id="sticky-sidebar">
                <div class="sticky-top">
                    <div class="nav flex-column">
                        <div class='col-xs-3'> 
                             <a href=# class="btn btn-primary btn-block">Cargar Stock</a>
                             <a href="default.aspx" class="btn btn-primary btn-block" >Stock</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col" id="main">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">DESCRIPCION</th>
                            <th scope="col">FECHA INGRESO</th>
                            <th scope="col">CANTIDAD INGRESADA</th>
                            <th scope="col">STOCK</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%foreach (Dominio.Stock item in List_Historial)
                            {%>
                        <tr>
                            <th scope="row"><% =item.id %></th>
                            <td><% =item.marcas.nombreMarcas%> </td>
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
