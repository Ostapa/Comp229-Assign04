<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Comp229_Assign04.HomePage" %>
<%--1) copy the whole json file, create a model.cs in the model folder 
    2) in the class Edit--> Paste Special--> Paste JSON as classes
    3) delete the Rootobject class
    4) rename the classes
    5) build a repeater in the page, use Eval("object_name")
    6) <#String.format("~/SingleModel.aspx?name={0}&fraction={1}", Eval("name"), Eval(
    7) modelsRepeater.DataSource() = Global.Models;
       modelsRepeater.DataBind();
    8) in Global IEnumerable of models public static IEnumerable<Model> Models;
    9) Apllication start PreparemodelCollection() custom method
    private const string modelsJsonFilePath = "~/Data/Assign04.json"; --> create a folder Data and paste json file there
    10) PrepareModelCollection()
    { using (streamredea = new strmereader(system.web.hosting.hostingenvironment.mapPath(modelsjsonFilePath)))
    
    var jsonString = streamReader.ReadToEnd();
    Models = JsonConvert.DeserializeObject<List<Model>>(jsonString);
    }
    11) use for defenseChartRepeater
            <td><%# (10 - Container.ItemIndex).ToString() %></td> 
            <td><%# Container.DataItem.ToString() %></td>
    12) repeater for actions and special abilities
    13) page_load {
            var name = request.querystring["name"];
            var factoion = Request.Quet["fraction"];

    if(string.isnullorempty(name) {
    redirect to default

    _Model = global.models.firstordefault(tModel => tModel.name == name && 

    private void SetBindings() {
    set label.text to models values
    traitsrepeater.DAtaSource = _Model.traits;
    traitsrepeater.databind();
    14) Replace defense chart actions with images
    15) change the model 
        model.name = textfield.name;
    16) don't update the existing json file
        public static void jsonfile
    using(streamwriter writer = new streamwriter(jsonConvert.serializeobject(Models)))
    {
        File.CreateText(-- decalre a variable for new json path --)
    }
    }
    17) check if directory exists
    18) for email
    public static void Emailjson(){
        go to slides
    }
    19) google "stmpclient attach file" for uploading files 
--%>

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
        </table>
    </div>
</asp:Content>
