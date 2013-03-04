using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Web.ModelBinding;

namespace WebFormsBank
{
    using WebFormsBank.Models;

    public partial class Customers : System.Web.UI.Page
    {
        private BankContext _context = new BankContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public IQueryable<Customer> GetCustomers([Control]bool preferredOnly, [Control("gvBranches")]int? branchID)
        {
            return _context.Customers
                .Where(c => (!preferredOnly || c.Accounts.Count() > 1)
                    && (branchID == null || c.HomeBranch_Id == branchID))
                .Include(c => c.Branch);
        }

        public IQueryable<Branch> GetBranches()
        {
            return _context.Branches;
        }
    }
}