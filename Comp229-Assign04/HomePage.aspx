<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Comp229_Assign04.HomePage" %>

<%-----------------
    Ostap Hamarnyk
    Assign 04
    Comp229-007
 -----------------%>

<asp:Content ContentPlaceHolderID="MainContent" ID="Content" runat="server" >
    <div class="container well">
        <h1>List of Models</h1>
        <table class="table">
            <asp:Repeater ID="modelsRepeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><a id="modelLinks" href="<%# String.Format("SingleModel.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>"><%# Eval("name") + ", " + Eval("faction") %></a></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr>
                <td><asp:Button ID="newModel" CssClass="btn btn-warning" Text="Create New Model" OnClick="newModel_Click" runat="server" /></td>
            </tr>
        </table>
        <p class="lead">Want an updated JSON file of models? Provide an email and your name and we'll send it to you!</p>
        <asp:TextBox ID="email" PlaceHolder="john@mail.com" CssClass="form-control" runat="server" />
        <asp:TextBox ID="name" PlaceHolder="John Doe" CssClass="form-control" runat="server" />
        <asp:Button ID="sendMail" CssClass="btn btn-info" Text="Send" runat="server" OnClick="sendMail_Click" />
        <asp:Label ID="statusLabel" CssClass="has-success" runat="server" />
        <%-- It's ugly --%>
    </div>
</asp:Content>
