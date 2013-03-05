using System;
using System.Collections.Generic;

namespace WebFormsBank.Models
{
    using System.ComponentModel.DataAnnotations;

    public partial class Customer
    {
        public Customer()
        {
            this.Accounts = new List<Account>();
        }

        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string HomeAddress_AddressLine1 { get; set; }
        [Required]
        public string HomeAddress_AddressLine2 { get; set; }
        [Required]
        public string HomeAddress_City { get; set; }
        [Required]
        public string HomeAddress_State { get; set; }
        [Required]
        public string HomeAddress_Zip { get; set; }
        [Required]
        public string PhoneNumber { get; set; }
        public Nullable<int> HomeBranch_Id { get; set; }
        public virtual ICollection<Account> Accounts { get; set; }
        public virtual Branch Branch { get; set; }
    }
}
