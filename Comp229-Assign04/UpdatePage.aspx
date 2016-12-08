<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="UpdatePage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Comp229_Assign04.UpdatePage" %>

<asp:Content ContentPlaceHolderID="MainContent" ID="Content" EnableViewState="true" runat="server">
    <div class="container well">
        <h1 class="display-2"><asp:TextBox ID="nameTxt" runat="server" /></h1>
        <asp:Image CssClass="col-md-4 col-sx-12" Width="200px" ID="modelImage" runat="server" />
                <table class="table table-stripped col-md-8 col-xs-12">
                    <tr>
                        <td>Faction: </td>
                        <td><asp:TextBox ID="factionTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Rank: </td>
                         <td><asp:TextBox ID="rankTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Base: </td>
                        <td><asp:TextBox ID="baseTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Size</td>
                       <td><asp:TextBox ID="sizeTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Deployment Zone</td>
                         <td><asp:TextBox ID="deploymentZoneTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Traits: </td>
                        <asp:Repeater ID="traitsRepeater" runat="server">
                            <ItemTemplate>
                                <td><asp:TextBox ID="trait" Text='<%# Container.DataItem.ToString() %>' runat="server" /></td>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                    <tr>
                        <td>Types: </td>
                        <asp:Repeater ID="typesRepeater" runat="server">
                            <ItemTemplate>
                                <td><asp:TextBox ID="type" Text='<%# Container.DataItem.ToString() %>' runat="server" /></td> 
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
                                <td><asp:TextBox ID="defenseChartItem" Text='<%# Container.DataItem.ToString() %>' runat="server" /></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr>
                        <td>Mobility</td>
                         <td><asp:TextBox ID="mobilityTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Willpower</td>
                         <td><asp:TextBox ID="willpowerTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Resiliance</td>
                         <td><asp:TextBox ID="resilianceTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Wounds</td>
                         <td><asp:TextBox ID="woundsTxt" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Actions</td>
                        <asp:Repeater ID="actionsRepeater" runat="server" >
                            <ItemTemplate>
                                <tr>
                                    <td>Name: </td>
                                    <td><asp:TextBox ID="actionName" Text='<%# Eval("name") %>' runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>Type: </td>
                                    <td><asp:TextBox ID="actionType"  Text='<%# Eval("type") %>' runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>Rating: </td>
                                    <td><asp:TextBox ID="actionRating" Text='<%# Eval("rating") %>' runat="server" /></td>
                                </tr
                                <tr>
                                    <td>Range: </td>
                                    <td><asp:TextBox ID="actionRange" Text='<%# Eval("range") %>' runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>Description: </td>
                                    <td><asp:TextBox ID="actionDescription" Text='<%# (Eval("description") == null) ? "None" : Eval("description") %>' runat="server" /></td>
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
                                    <td><asp:TextBox ID="specialAbName" Text='<%# Eval("name") %>' runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>Description: </td>
                                    <td><asp:TextBox TextMode="MultiLine" Rows="5" ID="specialAbDesc" Text='<%# Eval("description") %>' runat="server" /></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </table>
        <asp:Button ID="saveBtn" CssClass="btn btn-warning" runat="server" Text="Save" OnClick="saveBtn_Click" />
        <asp:Button ID="cancelBtn" CssClass="btn btn-danger" runat="server" Text="Cancel" OnClick="cancelBtn_Click" />
    </div>
</asp:Content>

