<%@ Page Title="Gestión de Documentos Legales" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GestionDocumentos.aspx.cs" Inherits="Desempeño2_LucasMORALES.GestionDocumentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-header">
            <h2>ESPACIO PARA GESTIÓN DE DOCUMENTOS</h2>
            <p>SISTEMA SEGURO DE ASESORÍA LEGAL GLOBAL</p>
        </div>

         <div style="background-color: #e2e8f0; padding: 15px; border-radius: 6px; margin-bottom: 20px;">
            <p><strong>USUARIO EN SESIÓN:</strong> <asp:Label ID="lblUsuarioSesion" runat="server" Text="VERIFICANDO USUARIO..."></asp:Label></p>
            <p><strong>ESTADO DE SEGURIDAD:</strong> <asp:Label ID="lblEstadoCookie" runat="server" Text="VERIFICANDO ESTADO..."></asp:Label></p>
        </div>

        <asp:Label ID="lblMensaje" runat="server" CssClass="val-error" Style="margin-bottom: 15px; display: block;"></asp:Label>

        <div class="form-group">
            <label for="fileDocumento">SELECCIONE EL DOCUMENTO DESEADO (PDF, Word, Imagen): *</label>
            <asp:FileUpload ID="fileDocumento" runat="server" CssClass="form-control" style="padding: 6px;" />
        </div>

        <div class="form-group" style="margin-top: 20px;">
            <asp:Button ID="btnSubir" runat="server" Text="SUBRIR ELEMENTO DE FORMA SEGURA" CssClass="btn-primary" OnClick="btnSubir_Click" />
        </div>

        <asp:Panel ID="pnlDetalles" runat="server" Visible="false" style="margin-top: 30px; border-top: 1px solid #cbd5e1; padding-top: 20px;">
            <h3 style="color: #162052; margin-bottom: 10px;">Detalles del Último Archivo Cargado:</h3>
            <p><strong>NOMBRE DEL ARCHIVO:</strong> <asp:Label ID="lblNombreArchivo" runat="server"></asp:Label></p>
            <p><strong>TAMAÑO DEL ARCHIVO:</strong> <asp:Label ID="lblTamanio" runat="server"></asp:Label></p>
            <p><strong>TIPO DE ARCHIVO:</strong> <asp:Label ID="lblTipo" runat="server"></asp:Label></p>
        </asp:Panel>
    </div>
</asp:Content>