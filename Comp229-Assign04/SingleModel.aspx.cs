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
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            var faction = Request.QueryString["faction"];

            _Model = Global.Models.FirstOrDefault(tModel => tModel.name == name && tModel.faction == faction);

            SetBindings();
        }

        private void SetBindings()
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

            typesRepeate.DataSource = _Model.types;
            typesRepeate.DataBind();

            defenseChartRepeater.DataSource = _Model.defenseChart;
            defenseChartRepeater.DataBind();

            actionsRepeater.DataSource = _Model.actions;
            actionsRepeater.DataBind();

            specialAbilitiesRepeater.DataSource = _Model.specialAbilities;
            specialAbilitiesRepeater.DataBind();

            // aet image url
            modelImage.ImageUrl = _Model.imageUrl;


        }
    }
}