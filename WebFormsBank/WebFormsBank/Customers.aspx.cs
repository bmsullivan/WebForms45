using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace WebFormsBank
{
    using WebFormsBank.Models;

    public partial class Customers : System.Web.UI.Page
    {
        private BankContext _context = new BankContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public IQueryable<Customer> GetCustomers()
        {
            return _context.Customers.Include(c => c.Branch);
        }
    }
}