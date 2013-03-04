using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsBank
{
    using WebFormsBank.Models;

    public partial class Customers : System.Web.UI.Page
    {
        private BankContext _context = new BankContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            rptCustomers.DataSource = _context.Customers.Take(10).ToList();
            rptCustomers.DataBind();
        }
    }
}