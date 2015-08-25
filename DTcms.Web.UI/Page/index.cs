using System;
using System.Collections.Generic;
using System.Text;

namespace DTcms.Web.UI.Page
{
    public partial class index : Web.UI.BasePage
    {
        protected string channel="index";         //频道
        protected void Page_Load(object sender, EventArgs e)
        {
            channel = "index";
        }
    }

}
