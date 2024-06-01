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

    public partial class KhachHang
    {
        public KhachHang()
        {
            this.BaoHanhs = new HashSet<BaoHanh>();
            this.DanhGiaSanPhams = new HashSet<DanhGiaSanPham>();
            this.DDHs = new HashSet<DDH>();
            this.DiaChis = new HashSet<DiaChi>();
            this.GioHangs = new HashSet<GioHang>();
            this.HoanHangs = new HashSet<HoanHang>();
            this.HuyHangs = new HashSet<HuyHang>();
            this.MaGiamGia_KhachHang = new HashSet<MaGiamGia_KhachHang>();
            this.YeuCauBHs = new HashSet<YeuCauBH>();
        }
    
        public int MaKH { get; set; }
        public string TenKH { get; set; }
        public string TenTKKH { get; set; }
        public string MKTKKH { get; set; }
        public string AnhKH { get; set; }
        public string SoDienThoaiKH { get; set; }
        public Nullable<int> MaQuyen { get; set; }
       
        public string Email { get; set; }
    
        public virtual ICollection<BaoHanh> BaoHanhs { get; set; }
        public virtual ICollection<DanhGiaSanPham> DanhGiaSanPhams { get; set; }
        public virtual ICollection<DDH> DDHs { get; set; }
        public virtual ICollection<DiaChi> DiaChis { get; set; }
        public virtual ICollection<GioHang> GioHangs { get; set; }
        public virtual ICollection<HoanHang> HoanHangs { get; set; }
        public virtual ICollection<HuyHang> HuyHangs { get; set; }
        public virtual ICollection<MaGiamGia_KhachHang> MaGiamGia_KhachHang { get; set; }
        public virtual Quyen Quyen { get; set; }
        public virtual ICollection<YeuCauBH> YeuCauBHs { get; set; }
    }
}
