﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ThietBiDienTu.Areas.Admin.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class NhaVanChuyen
    {
        public NhaVanChuyen()
        {
            this.DDHs = new HashSet<DDH>();
        }
    
        public int MaNVC { get; set; }
        [Required(ErrorMessage = "Không được để trống !")]
        public string TenNVC { get; set; }
        [Required(ErrorMessage = "Không được để trống !")]
        public Nullable<decimal> ChiPhi { get; set; }
        public string DiaChiNVC { get; set; }
        public string SDTNVC { get; set; }
    
        public virtual ICollection<DDH> DDHs { get; set; }
    }
}
