using Comp229_Assign04.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    // you were right, a lot of typing
    public partial class UpdatePage : System.Web.UI.Page
    {
        Model _Model;
        string name;
        string faction;
        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["name"];
            faction = Request.QueryString["faction"];
            _Model = Global.Models.FirstOrDefault(tModel => tModel.name == name && tModel.faction == faction);

            if (!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            nameTxt.Text = _Model.name;
            factionTxt.Text = _Model.faction;
            rankTxt.Text = _Model.rank.ToString();
            baseTxt.Text = _Model._base.ToString();
            sizeTxt.Text = _Model.size.ToString() + "mm";
            deploymentZoneTxt.Text = _Model.deploymentZone;
            mobilityTxt.Text = _Model.mobility.ToString();
            willpowerTxt.Text = _Model.willpower.ToString();
            resilianceTxt.Text = _Model.resiliance.ToString();
            woundsTxt.Text = _Model.wounds.ToString();



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

            // aet image url
            modelImage.ImageUrl = _Model.imageUrl;
        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            _Model.name = nameTxt.Text;
            _Model.faction = factionTxt.Text;
            _Model.rank = Convert.ToInt32(rankTxt.Text);
            _Model._base = Convert.ToInt32(baseTxt.Text);
            _Model.size = Convert.ToInt32(sizeTxt.Text.Remove(sizeTxt.Text.Length - 2, 2)); // remove "mm" from textbox to avoid exception
            _Model.deploymentZone = deploymentZoneTxt.Text;
            _Model.mobility = Convert.ToInt32(mobilityTxt.Text);
            _Model.willpower = Convert.ToInt32(willpowerTxt.Text);
            _Model.resiliance = Convert.ToInt32(resilianceTxt.Text);
            _Model.wounds = Convert.ToInt32(woundsTxt.Text);

            // declare a TextBox since texboxes from repeater are not accessible
            TextBox specialName = new TextBox(); // maybe assigning to null would be better, not sure
            TextBox specialDesc = new TextBox();
            TextBox actionName = new TextBox();
            TextBox actionType = new TextBox();
            TextBox actionRating = new TextBox();
            TextBox actionRange = new TextBox();
            TextBox actionDescription = new TextBox();
            TextBox[] traits = new TextBox[traitsRepeater.Items.Count];
            TextBox[] types = new TextBox[typesRepeater.Items.Count];
            TextBox[] defenseChartItems = new TextBox[defenseChartRepeater.Items.Count];
            Models.Action[] actions = null;
            Specialability[] specialAbilities = null;
            
            if(_Model.specialAbilities == null)
            {
                specialAbilitiesRepeater.Visible = false;
            }
            else
            {
                specialAbilities = new Specialability[_Model.specialAbilities.Length];
            }
            if(_Model.actions == null)
            {
                actionsRepeater.Visible = false;
            }
            else
            {
                actions = new Models.Action[_Model.actions.Length];
            }


            // loop trough each item of the special abilities repeater
            foreach (RepeaterItem item in specialAbilitiesRepeater.Items)
            {
                specialName = (TextBox)item.FindControl("specialAbName");
                specialDesc = (TextBox)item.FindControl("specialAbDesc");
                specialAbilities[item.ItemIndex] = new Specialability { name = specialName.Text, description = specialDesc.Text };
            }

            _Model.specialAbilities = specialAbilities;

            // loop trough each item of the actions repeater
            foreach (RepeaterItem item in actionsRepeater.Items)
            {
                actionName = (TextBox)item.FindControl("actionName");
                actionType = (TextBox)item.FindControl("actionType");
                actionRating = (TextBox)item.FindControl("actionRating");
                actionRange = (TextBox)item.FindControl("actionRange");
                actionDescription = (TextBox)item.FindControl("actionDescription");
                actions[item.ItemIndex] = new Models.Action
                {
                    name = actionName.Text,
                    type = actionType.Text,
                    rating = Convert.ToInt32(actionRating.Text),
                    range = actionRange.Text,
                    description = actionDescription.Text
                };
            }

            _Model.actions = actions;

            // assign values of textBoxes
            foreach (RepeaterItem item in traitsRepeater.Items)
            {
                traits[item.ItemIndex] = (TextBox)item.FindControl("trait");
            }

            // add traits to the traits array
            for (int i = 0; i < traitsRepeater.Items.Count; i++)
            {
                _Model.traits[i] = traits[i].Text;
            }


            // assign values of textBoxes
            foreach (RepeaterItem item in typesRepeater.Items)
            {
                types[item.ItemIndex] = (TextBox)item.FindControl("type");
            }

            // add traits to the traits array
            for (int i = 0; i < typesRepeater.Items.Count; i++)
            {
                _Model.types[i] = types[i].Text;
            }
            
            // add textboxes of the repeater to the textbox array
            foreach (RepeaterItem item in defenseChartRepeater.Items)
            {
                defenseChartItems[item.ItemIndex] = (TextBox)item.FindControl("defenseChartItem");
            }

            // add defense item to the appropriate index in the defenseChartArray array
            for (int i = 0; i < defenseChartRepeater.Items.Count; i++)
            {
                _Model.defenseChart[i] = defenseChartItems[i].Text;
            }

            // update the new JSON file and redirect back to model page
            Global.UpdateModelCollection();
            Response.Redirect(string.Format("SingleModel.aspx?name={0}&faction={1}", name, faction));
        }

        // if pressed redirect user to Model page
        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("SingleModel.aspx?name={0}&faction={1}", name, faction));
        }
    }
}