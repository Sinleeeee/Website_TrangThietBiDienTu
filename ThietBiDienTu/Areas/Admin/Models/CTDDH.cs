//------------------------------------------------------------------------------
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
    
    public partial class CTDDH
    {
        public int MaCTDDH { get; set; }
        public Nullable<int> MaDDH { get; set; }
        public Nullable<int> MaSP { get; set; }
        public Nullable<int> SoLuong { get; set; }
        public Nullable<decimal> DonGia { get; set; }
        public Nullable<decimal> ThanhTien { get; set; }
    
        public virtual DDH DDH { get; set; }
        public virtual SanPham SanPham { get; set; }
    }
}
