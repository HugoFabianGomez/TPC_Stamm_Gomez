<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CargarStock.aspx.cs" Inherits="TPC_Stamm_Gomez.CargarStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>    CARGAR STOCK</h1>

        <br />  
         
             
            <div class="col-md-4">
            <label for="inputState" class="form-label">State</label>
            <select id="inputState" class="form-select">
              <option selected>Choose...</option>
              <option>...</option>
            </select>
          </div>
        <br />
            <div class="input-group mb-3">
              <span class="input-group-text" id="idroducto" width=>IDPRODUCTO.........</span>
              <%--<input type="text" class="form-control" placeholder="Coca-Cola" aria-label="Username" aria-describedby="basic-addon1">--%>
                <asp:TextBox runat="server" ID="text_idproducto" />  
            </div>
                    
            <div class="input-group mb-3">
              <span class="input-group-text" id="fecha_ingreso" width="125px">FECHA INGRESO</span>
              <%--<input type="text" class="form-control" placeholder="dd/mm/aaaa" aria-label="Username" aria-describedby="basic-addon1">--%>
                <asp:TextBox runat="server" ID="text_fecha_ingreso"/>  
            </div>
                    
            <div class="input-group mb-3">
              <span class="input-group-text" id="cantidad" >CANTIDAD..........</span>
              <%--<input type="text" class="form-control" placeholder="123 Cantidad" aria-label="Username" aria-describedby="basic-addon1">--%>
                <asp:TextBox runat="server" ID="text_cantidad"/>  
            </div>   
             
            <div class="input-group mb-3">
              <span class="input-group-text" id="stock" >STOCK.................</span>
              <%--<input type="text" class="form-control" placeholder="123 Cantidad" aria-label="Username" aria-describedby="basic-addon1" >--%>
                <asp:TextBox runat="server" ID="text_stock" />  
            </div>
            
        

        
        <div class="btn-group" role="group" aria-label="Basic example">
            <asp:Button Text="AGREGAR" ID="btn_Agregar" OnClick="Unnamed_Click" runat="server"  /> 
            <button type="button" class="btn btn-primary" onclick="Ägregar" >AGREGAR</button>
             <button type="button" class="btn btn-primary">MODIFICAR</button>
             <button type="button" class="btn btn-primary">ELIMINAR</button>
        </div>
           
        <br />
        <br />  
        <button type="button" class="btn btn-success">VOLVER</button>

</asp:Content>
