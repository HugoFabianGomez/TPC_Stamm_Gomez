<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CargarStock.aspx.cs" Inherits="TPC_Stamm_Gomez.CargarStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>    CARGAR STOCK</h1>

        <br />  
        <tr> 
             
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon1" width=>PRODUCTO.........</span>
              <input type="text" class="form-control" placeholder="Coca-Cola" aria-label="Username" aria-describedby="basic-addon1">
            </div>
                    
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon2" width="125px">FECHA INGRESO</span>
              <input type="text" class="form-control" placeholder="dd/mm/aaaa" aria-label="Username" aria-describedby="basic-addon1">
            </div>
                    
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon3" >CANTIDAD..........</span>
              <input type="text" class="form-control" placeholder="123 Cantidad" aria-label="Username" aria-describedby="basic-addon1">
            </div>   
             
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon4">STOCK.................</span>
              <input type="text" class="form-control" placeholder="123 Cantidad" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            
        

        
        <div class="btn-group" role="group" aria-label="Basic example">
             <button type="button" class="btn btn-primary">AGREGAR</button>
             <button type="button" class="btn btn-primary">MODIFICAR</button>
             <button type="button" class="btn btn-primary">ELIMINAR</button>
        </div>
            </tr>
        <br />
        <br />  
        <button type="button" class="btn btn-success">VOLVER</button>

</asp:Content>
