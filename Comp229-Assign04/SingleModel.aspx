<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleModel.aspx.cs" Inherits="Comp229_Assign04.SingleModel" %>

<asp:Content ContentPlaceHolderID="MainContent" ID="Content" runat="server">
    <div class="container well">
        <h1 class="display-2"><asp:Label ID="nameLbl" runat="server" /></h1>
        <asp:Image CssClass="col-md-4 col-sx-12" Width="200px" ID="modelImage" runat="server" />
                <table class="table table-stripped col-md-8 col-xs-12">
                    <tr>
                        <td>Faction: </td>
                        <td><asp:Label ID="factionLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Rank: </td>
                         <td><asp:Label ID="rankLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Base: </td>
                        <td><asp:Label ID="baseLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Size</td>
                       <td><asp:Label ID="sizeLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Deployment Zone</td>
                         <td><asp:Label ID="deploymentZonelbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Traits: </td>
                        <asp:Repeater ID="traitsRepeater" runat="server">
                            <ItemTemplate>
                                <td><%# Container.DataItem.ToString() %></td> 
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                    <tr>
                        <td>Types: </td>
                        <asp:Repeater ID="typesRepeate" runat="server">
                            <ItemTemplate>
                                <td><%# Container.DataItem.ToString() %></td> 
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                    <tr>
                        <td>Defensive chart</td>
                    </tr>
                    <asp:Repeater ID="defenseChartRepeater" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# (10 - Container.ItemIndex).ToString() %></td> 
                                <td><%# Container.DataItem.ToString() %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr>
                        <td>Mobility</td>
                         <td><asp:Label ID="mobilityLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Willpower</td>
                         <td><asp:Label ID="willpowerLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Resiliance</td>
                         <td><asp:Label ID="resilianceLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Wounds</td>
                         <td><asp:Label ID="woundsLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Actions</td>
                        <asp:Repeater ID="actionsRepeater" runat="server" >
                            <ItemTemplate>
                                <tr>
                                    <td>Name: </td>
                                    <td><%# Eval("name") %></td>
                                </tr>
                                <tr>
                                    <td>Type: </td>
                                    <td><%# Eval("type") %></td>
                                </tr>
                                <tr>
                                    <td>Rating: </td>
                                    <td><%# Eval("rating") %></td>
                                </tr>
                                <tr>
                                    <td>Range: </td>
                                    <td><%# Eval("range") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                    <tr>
                        <td>Special Abilities</td>
                        <asp:Repeater ID="specialAbilitiesRepeater" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>Name: </td>
                                    <td><%# Eval("name") %></td>
                                </tr>
                                <tr>
                                    <td>Description: </td>
                                    <td><%# Eval("description") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </table>
    </div>
</asp:Content>
