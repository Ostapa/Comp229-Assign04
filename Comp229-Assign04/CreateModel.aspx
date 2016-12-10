<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CreateModel.aspx.cs" Inherits="Comp229_Assign04.CreateModel" %>

<%-----------------
    Ostap Hamarnyk
    Assign 04
    Comp229-007
 -----------------%>

<asp:Content ContentPlaceHolderID="MainContent" ID="Content" runat="server">
    <div class="container well">
        <h1 class="display-2">Create new model</h1>
        <p class="lead">Please fill in the following form to create new model</p>
        <p class="lead">Fields marked with * are required</p>
        <table class="table table-stripped col-md-8 col-xs-12">
            <tr>
                <td>Name: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="nameTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Faction: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="factionTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Rank: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="rankTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Base: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="baseTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Size</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="sizeTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Deployment Zone</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="deploymentZoneTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Traits: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="traitsTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>
                    <p>Please specify traits separating them with comma without space</p>
                </td>

            </tr>
            <tr>
                <td>Types: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="typesTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>
                    <p>Please specify types separating them with comma without space</p>
                </td>

            </tr>
            <tr>
                <td>Defensive chart</td>
                <td>
                   <asp:TextBox CssClass="form-control" ID="defenseChart" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Mobility</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="mobilityTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Willpower</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="willpowerTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Resiliance</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="resilianceTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Wounds</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="woundsTxt" runat="server" /></td>
            </tr>
            <tr>
                <td>Actions</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="actionName" runat="server" /></td>
            </tr>
            <tr>
                <td>Type: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="actionType" runat="server" /></td>
            </tr>
            <tr>
                <td>Rating: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="actionRating" runat="server" /></td>
            </tr>
            <tr>
                <td>Range: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="actionRange" runat="server" /></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="actionDescription" TextMode="MultiLine" Rows="5" runat="server" /></td>
            </tr>

            <tr>

                <td>Special Abilities</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="specialAbName" runat="server" /></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>
                    <asp:TextBox CssClass="form-control" TextMode="MultiLine" Rows="5" ID="specialAbDesc" runat="server" /></td>
            </tr>
            
            <asp:Button ID="createModel" Text="Create" CssClass="btn btn-warning" runat="server" OnClick="createModel_Click" />
            <asp:Button ID="cancelBtn" Text="Cancel" CssClass="btn btn-danger" runat="server" OnClick="cancelBtn_Click" />            
        </table>
    </div>
</asp:Content>
