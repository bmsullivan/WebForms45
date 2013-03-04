using System;
using System.Collections.Generic;

namespace WebFormsBank.Models
{
    public partial class Transaction
    {
        public int Id { get; set; }
        public double Amount { get; set; }
        public System.DateTime CreatedAt { get; set; }
        public Nullable<int> Account_Id { get; set; }
        public virtual Account Account { get; set; }
    }
}
