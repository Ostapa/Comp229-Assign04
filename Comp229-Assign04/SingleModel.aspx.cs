using Comp229_Assign04.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class SingleModel : System.Web.UI.Page
    {
        Model _Model;
        string name;
        string faction;

        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["name"];
            faction = Request.QueryString["faction"];

            _Model = Global.Models.FirstOrDefault(tModel => tModel.name == name && tModel.faction == faction);

            SetBindings();
        }

        public void SetBindings()
        {
            // assign values to a proper label
            nameLbl.Text = _Model.name;
            factionLbl.Text = _Model.faction;
            rankLbl.Text = _Model.rank.ToString();
            baseLbl.Text = _Model._base.ToString();
            sizeLbl.Text = _Model.size.ToString() + "mm";
            deploymentZonelbl.Text = _Model.deploymentZone;
            mobilityLbl.Text = _Model.mobility.ToString();
            willpowerLbl.Text = _Model.willpower.ToString();
            resilianceLbl.Text = _Model.resiliance.ToString();
            woundsLbl.Text = _Model.wounds.ToString();


            // add repeaters
            traitsRepeater.DataSource = _Model.traits;
            traitsRepeater.DataBind();

            typesRepeater.DataSource = _Model.types;
            typesRepeater.DataBind();

            defenseChartRepeater.DataSource = _Model.defenseChart;
            defenseChartRepeater.DataBind();

            actionsRepeater.DataSource = _Model.actions;
            actionsRepeater.DataBind();

            specialAbilitiesRepeater.DataSource = _Model.specialAbilities;
            specialAbilitiesRepeater.DataBind();

            // set image url
            modelImage.ImageUrl = _Model.imageUrl;
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("UpdatePage.aspx?name={0}&faction={1}", name, faction));
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            var newList = Global.Models.Where(tModel => tModel.name != name && tModel.faction != faction);
            Global.Models = newList;
            Global.UpdateModelCollection();
            Response.Redirect("HomePage.aspx");
        }
    }
}


 