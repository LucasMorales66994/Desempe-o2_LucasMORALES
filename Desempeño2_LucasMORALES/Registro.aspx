<%@ Page Title="Registro de Clientes" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Desempeño2_LucasMORALES.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-header">
            <img src="\imagenes\logo 1.png" alt="Logo Institucional Asesoría Legal" />
            <div>
                <h2>ALTA Y REGISTRO DE CLIENTES</h2>
                <p>COMPLETE SUS DATOS PERSONALES PARA ACCEDER AL SIGUIENTE PORTAL</p>
            </div>
        </div>

         <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            CssClass="val-summary" 
            HeaderText="CORRIJA LOS SIGUIENTES ERRORES ANTES DE CONTINUAR..." />

         <div class="form-group">
            <label for="txtNombreApellido">[1] NOMBRE Y APELLIDO: *!</label>
            <asp:TextBox ID="txtNombreApellido" runat="server" CssClass="form-control" placeholder="Ej: Lucas Morales"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" 
                ControlToValidate="txtNombreApellido" 
                Text="NOMBRE Y APELLIDO OBLIGATORIO" 
                ErrorMessage="[1]INGRESAR NOMBRE Y APELLIDO" 
                CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

         <div class="form-group">
            <label for="txtCorreo">[2] CORREO ELECTRÓNICO: *</label>
            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="LUCAS@GMAIL.COM"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" 
                ControlToValidate="txtCorreo" 
                Text="CORREO ELECTRÓNICO OBLIGATORIO" 
                ErrorMessage="[2] INGRESAR CORREO ELECTRÓNICO" 
                CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revCorreo" runat="server" 
                ControlToValidate="txtCorreo" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                Text="FORMATO DE CORREO NO CORRECTO" 
                ErrorMessage="[2] INGRESAR FÓRMATO CORRECTO EN SU MAIL" 
                CssClass="val-error" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>

         <div class="form-group">
            <label for="txtUsuario">[3] NOMBRE DE USUARIO: *</label>
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ej: lmorales"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" 
                ControlToValidate="txtUsuario" 
                Text="NOMBRE DE USUARIO OBLIGATORIO" 
                ErrorMessage="[3] INGRESAR UN NOMBRE DE USUARIO" 
                CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

         <div class="form-group">
            <label for="txtEdad">[4] Edad (mayor de 15 años): *</label>
            <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" placeholder="Ej: 21"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEdad" runat="server" 
                ControlToValidate="txtEdad" 
                Text="LA EDAD ES OBLIGATORIA" 
                ErrorMessage="[4] INGRESAR SU EDAD" 
                CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvEdad" runat="server" 
                ControlToValidate="txtEdad" 
                MinimumValue="16" 
                MaximumValue="120" 
                Type="Integer" 
                Text="LA EDAD DEBE SER UN NÚMERO ENTERO MAYOR A 15 AÑOS." 
                ErrorMessage="[4] LA EDAD DEBE SER UN NÚMERO ENTERO MAYOR A 15 AÑOS." 
                CssClass="val-error" Display="Dynamic"></asp:RangeValidator>
        </div>

         <div class="form-group">
            <label for="txtClave">[5] Contraseña: *</label>
            <asp:TextBox ID="txtClave" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvClave" runat="server" 
                ControlToValidate="txtClave" 
                Text="LA CONTRASEÑA ES OBLIGATORIA" 
                ErrorMessage="[5] INGRESAR CONTRASEÑA" 
                CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

         <div class="form-group">
            <label for="txtConfirmarClave">[5] Confirmar Contraseña: *</label>
            <asp:TextBox ID="txtConfirmarClave" runat="server" CssClass="form-control" TextMode="Password" placeholder="Repita su contraseña"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmarClave" runat="server" 
                ControlToValidate="txtConfirmarClave" 
                Text="DEBE REPETIR LA CONTRASEÑA" 
                ErrorMessage="[5] CONFIRMAR CONTRASEÑA" 
                CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvClaves" runat="server" 
                ControlToValidate="txtConfirmarClave" 
                ControlToCompare="txtClave" 
                Operator="Equal" 
                Type="String" 
                Text="LAS CONTRASEÑAS NO COINCIDEN" 
                ErrorMessage="[5] LAS CONTRASEÑAS NO COINCIDEN" 
                CssClass="val-error" Display="Dynamic"></asp:CompareValidator>
        </div>

         <div class="form-group" style="margin-top: 25px;">
            <asp:Button ID="btnRegistrar" runat="server" Text="-->REGISTRARME Y ACCEDER A MIS DOCUMENTOS<--" CssClass="btn-primary" OnClick="btnRegistrar_Click" />
        </div>
    </div>
</asp:Content>