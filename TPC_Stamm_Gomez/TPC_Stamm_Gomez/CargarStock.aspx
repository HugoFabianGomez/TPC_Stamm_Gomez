<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CargarStock.aspx.cs" Inherits="TPC_Stamm_Gomez.CargarStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>    CARGAR STOCK</h1>

        <br />
            <div class="input-group mb-3">
              <span class="input-group-text" width="125px">IDPRODUCTO......</span>
              <%--<input type="text" class="form-control" placeholder="Coca-Cola" aria-label="Username" aria-describedby="basic-addon1">--%>
                <asp:TextBox runat="server" ID="text_idproducto" TextMode="Number" type="number" />  
            </div>
                    
            <div class="input-group mb-3">
              <span class="input-group-text" width="125px">FECHA INGRESO</span>
              <%--<input type="text" class="form-control" placeholder="dd/mm/aaaa" aria-label="Username" aria-describedby="basic-addon1">--%>
                <asp:TextBox runat="server" ID="text_fecha_ingreso" TextMode="Date" type="date" />  
            </div>
                    
            <div class="input-group mb-3">
              <span class="input-group-text" >CANTIDAD...........</span>
              <%--<input type="text" class="form-control" placeholder="123 Cantidad" aria-label="Username" aria-describedby="basic-addon1">--%>
                <asp:TextBox runat="server" ID="text_cantidad" TextMode="Number" type="number"/>  
            </div>   
             
            <div class="input-group mb-3">
              <span class="input-group-text" >STOCK...................</span>
              <%--<input type="text" class="form-control" placeholder="123 Cantidad" aria-label="Username" aria-describedby="basic-addon1" >--%>
                <asp:TextBox runat="server" ID="text_stock" TextMode="Number" type="number"/>  
            </div>
            
        

        
        <div class="btn-group" role="group" aria-label="Basic example">
            <%--<asp:Button Text="AGREGAR" ID="btn_Agreg" OnClick="Unnamed_Click" runat="server"  /> <!-- este es el boton agrear-->--%>
            <asp:Button Text="AGREGAR"   ID ="btn_Agregar"   OnClick="btn_Agregar_Click"   runat="server" class="btn btn-success" />
            <asp:Button Text="MODIFICAR" ID ="btn_Modificar" OnClick="btn_Modificar_Click" runat="server" class="btn btn-success" />
            <asp:Button Text="ELIMINAR"  ID ="btn_Eliminar"  OnClick="btn_Eliminar_Click"  runat="server" class="btn btn-success" />
             
        </div>
           
        <br />
        <br />  
        <asp:Button ref="HistorialStock.aspx" Text="VOLVER" runat="server" class="btn btn-success"/>

</asp:Content>
