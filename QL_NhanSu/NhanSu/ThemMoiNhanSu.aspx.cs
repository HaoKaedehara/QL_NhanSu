using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_NhanSu.NhanSu
{
    public partial class ThemMoiNhanSu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection("Data Source=192.162.16.247;Initial Catalog=HRM;User ID=HRM;Password=12345;"))
                {
                    connection.Open();
                    string query = "INSERT INTO NHANVIEN (MaNV, HoTen, MST, GioiTinh," +
                        " NgSinh, NoiSinh, QueQuan, HoKhauTT, ChoOHienTai, DanToc, TonGiao, " +
                        "QuocTich, SDT, Email, HinhAnh, TrangThai) " +
                        "VALUES (@MaNV, @HoTen, @MST, @GioiTinh," +
                        " @NgSinh, @NoiSinh, @QueQuan, @HoKhauTT, @ChoOHienTai, @DanToc, @TonGiao, " +
                        "@QuocTich, @SDT, @Email, @HinhAnh, @TrangThai)";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@MaNV", ASPxTextBox_MaNV.Text);          // 1
                        cmd.Parameters.AddWithValue("@HoTen", ASPxTextBox_HoTenNV.Text);        // 2
                        cmd.Parameters.AddWithValue("@MST", ASPxTextBox_MaSoThue.Value);            // 3
                        cmd.Parameters.AddWithValue("@GioiTinh", ASPxRadioButtonList_Gender.Value);  // 4
                        cmd.Parameters.AddWithValue("@NgSinh", ASPxDateEdit_NgaySinh.Value);      // 5
                        cmd.Parameters.AddWithValue("@NoiSinh", ASPxComboBox_NoiSinh.Value);    // 6
                        cmd.Parameters.AddWithValue("@QueQuan", ASPxTextBox_QueQuan.Value);    // 7
                        cmd.Parameters.AddWithValue("@HoKhauTT", ASPxTextBox_HKTT.Value);  // 8
                        cmd.Parameters.AddWithValue("@ChoOHienTai", ASPxTextBox_ChoOHienTai.Value); // 9
                        cmd.Parameters.AddWithValue("@DanToc", ASPxComboBox_DanToc.Value);      // 10
                        cmd.Parameters.AddWithValue("@TonGiao", ASPxComboBox_TonGiao.Value);    // 11
                        cmd.Parameters.AddWithValue("@QuocTich", ASPxTextBox_QuocTich.Value);  // 12
                        cmd.Parameters.AddWithValue("@SDT", ASPxTextBox_SDT.Value);            // 13
                        cmd.Parameters.AddWithValue("@Email", ASPxTextBox_Email.Text);        // 14
                        cmd.Parameters.AddWithValue("@HinhAnh", BinaryImage.Value);    // 15 - Dựa vào kiểu dữ liệu của HinhAnh (byte[]), thực hiện chuyển đổi phù hợp
                        cmd.Parameters.AddWithValue("@TrangThai", ASPxTextBox_TrangThai.Text);// 16

                        //cmd.Parameters.AddWithValue("@CoverIMG", FileUpload1.FileBytes);
                        //cmd.Parameters.AddWithValue("@CoverIMG", MainContent_ASPxGridView1_DXPEForm_DXEFL_DXEditor1_State.FileBytes).SqlDbType = SqlDbType.VarBinary; // Set SqlDbType
                        //cmd.Parameters.AddWithValue("@IsPublic", publicNews_chk.Checked);//4
                        //cmd.Parameters.AddWithValue("@NewsContain", txtDetail.InnerText);//5
                        //cmd.Parameters.AddWithValue("@CreDate", DateTime.Now);//6
                        //cmd.Parameters.AddWithValue("@Author", "Admin viết nhen");//7
                        //cmd.Parameters.AddWithValue("@Link", GetSlug(newsTitle_txt.Text));//8
                        cmd.ExecuteNonQuery();


                        // In ra các tham số và giá trị của chúng
                        //string sqlCommandText = cmd.CommandText;
                        //foreach (SqlParameter parameter in cmd.Parameters)
                        //{
                        //    sqlCommandText = sqlCommandText.Replace(parameter.ParameterName, parameter.Value.ToString());
                        //}
                        //Response.Write("Câu lệnh SQL: " + sqlCommandText);
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Lỗi: " + ex);
            }
        }
    }
}