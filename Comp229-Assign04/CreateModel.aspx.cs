using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comp229_Assign04.Models;

/*******************\
    Ostap Hamarnyk
    Assign 04
    Comp229-007
\*******************/
namespace Comp229_Assign04
{
    public partial class CreateModel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createModel_Click(object sender, EventArgs e)
        {
            Model _Model = new Model();
            _Model.name = nameTxt.Text;
            _Model.faction = factionTxt.Text;
            _Model.rank = Convert.ToInt32(rankTxt.Text);
            _Model._base = Convert.ToInt32(baseTxt.Text);
            _Model.size = Convert.ToInt32(sizeTxt.Text);
            _Model.deploymentZone = deploymentZoneTxt.Text;
            _Model.mobility = Convert.ToInt32(mobilityTxt.Text);
            _Model.willpower = Convert.ToInt32(willpowerTxt.Text);
            _Model.resiliance = Convert.ToInt32(resilianceTxt.Text);
            _Model.wounds = Convert.ToInt32(woundsTxt.Text);

            // add strings separated by ',' to the array
            _Model.traits = traitsTxt.Text.Split(',');
            _Model.types = typesTxt.Text.Split(',');
            _Model.defenseChart = defenseChart.Text.Split(',');

            // add new action
            Models.Action action = new Models.Action();
            action.name = actionName.Text;
            action.type = actionType.Text;
            action.range = actionRange.Text;
            action.rating = Convert.ToInt32(actionRating.Text);
            action.description = actionDescription.Text;
            _Model.actions[0] = action;

            //===== It throws me a NullReferenceException and no time to fix it ======
            // add new special ability
            // _Model.specialAbilities[0] = new Models.Specialability { name = specialAbName.Text, description = specialAbDesc.Text };
            /*
            //
            List<Model> updatedModel = new List<Model>();
            updatedModel = Global.Models.ToList();
            updatedModel.Add(_Model);
            Global.Models = updatedModel;
            Global.UpdateModelCollection();
            */
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}