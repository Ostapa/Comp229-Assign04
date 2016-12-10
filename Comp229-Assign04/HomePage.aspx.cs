using Comp229_Assign04.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*******************\
    Ostap Hamarnyk
    Assign 04
    Comp229-007
\*******************/

namespace Comp229_Assign04
{
    public partial class HomePage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SetBindings();
        }

        private void SetBindings()
        {
            var models = Global.Models.Select(tModel => new { tModel.name, tModel.faction });
            modelsRepeater.DataSource = models;
            modelsRepeater.DataBind();
        }

        protected void newModel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateModel.aspx");
        }

        protected void sendMail_Click(object sender, EventArgs e)
        {
            Global.EmailJsonFile(email.Text, name.Text, "NewAssign04.json");
            email.Text = "";
            name.Text = "";
            statusLabel.Text = "Your email was sucessfully sent.";
        }
    }
}