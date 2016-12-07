using Comp229_Assign04.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}