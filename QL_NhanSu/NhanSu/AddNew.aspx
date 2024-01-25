<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNew.aspx.cs" Inherits="QL_NhanSu.NhanSu.AddNew" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Public/css/addnew.css" rel="stylesheet" />
    <script src="../Public/js/NhanSu.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="../Public/js/nhansu.js"></script>

    <div class="personal-info-page">
        <div class="personal-info-header">
            <div class="col-2">
                <h3>Thêm hồ sơ</h3>
            </div>
            <div class="col-10 button-container">
                <!--Cancel-->
                <div class="cancel_container">
                    <button class="btn-cancel" onclick="cancelClick">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                            <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                        </svg>
                        Hủy   
                    </button>
                </div>

                <!--Save--->
                <div class="save_container">
                    <button class="btn-save" onclick="saveClick()">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-floppy" viewBox="0 0 16 16">
                            <path d="M11 2H9v3h2z" />
                            <path d="M1.5 0h11.586a1.5 1.5 0 0 1 1.06.44l1.415 1.414A1.5 1.5 0 0 1 16 2.914V14.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 14.5v-13A1.5 1.5 0 0 1 1.5 0M1 1.5v13a.5.5 0 0 0 .5.5H2v-4.5A1.5 1.5 0 0 1 3.5 9h9a1.5 1.5 0 0 1 1.5 1.5V15h.5a.5.5 0 0 0 .5-.5V2.914a.5.5 0 0 0-.146-.353l-1.415-1.415A.5.5 0 0 0 13.086 1H13v4.5A1.5 1.5 0 0 1 11.5 7h-7A1.5 1.5 0 0 1 3 5.5V1H1.5a.5.5 0 0 0-.5.5m3 4a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 .5-.5V1H4zM3 15h10v-4.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5z" />
                        </svg>
                        Lưu   
                    </button>
                </div>
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ADD NEW STAFF" OnClick="ASPxButton1_Click1"></dx:ASPxButton>
            </div>
        </div>

        <div class="row">
            <div class="col-2 col-left-personal-info">
                <div id="vertical-menu">
                    <a href="#section1">Thông tin chung</a>
                    <a href="#section2">Thông tin liên hệ</a>
                </div>
            </div>
            <div class="col-10 col-right-personal-info">
                <div class="img">
                    <div class="upload">
                        <img id="preview" src="noprofil.jpg" width="100" height="100" alt="">
                        <div class="round">
                            <input type="file" onchange="previewImage()">
                            <i class="fa fa-camera">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera" viewBox="0 0 16 16">
                                    <path d="M15 12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h1.172a3 3 0 0 0 2.12-.879l.83-.828A1 1 0 0 1 6.827 3h2.344a1 1 0 0 1 .707.293l.828.828A3 3 0 0 0 12.828 5H14a1 1 0 0 1 1 1zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4z" />
                                    <path d="M8 11a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5m0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0" />
                                </svg>
                            </i>
                        </div>
                    </div>
                </div>
                <dx:ASPxBinaryImage ID="BinaryImage" EditingSettings-EmptyValueText="Chờ ảnh" ClientInstanceName="ClientBinaryImage" Width="200" Height="200" ShowLoadingImage="true" LoadingImageUrl="~/Content/Loading.gif" runat="server">
                    <EditingSettings Enabled="true">
                        <UploadSettings>
                            <UploadValidationSettings MaxFileSize="10000000"></UploadValidationSettings>
                        </UploadSettings>
                    </EditingSettings>
                </dx:ASPxBinaryImage>
                <div class="personal-info row">
                    <h4>Thông tin chung</h4>

                    <div class="col-6" style="width: 45%;">
                        <div class="row">
                            <div class="employee-code" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="maNhanVien">Mã nhân viên:</label>
                                </div>
                                <div class="col-6">
                                    <%--<input type="text" id="maNhanVien" name="maNhanVien" class="form-control" placeholder="Nhập mã nhân viên" />--%>
                                    <dx:ASPxTextBox ID="maNhanVien" runat="server" Width="170px"></dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="full-name" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="hoTen">Họ và tên:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="hoTen" name="hoTen" class="form-control" placeholder="Nhập họ tên của bạn" />
                                </div>
                            </div>

                            <div class="tax-code" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="soThue">Mã số thuế:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="soThue" name="soThue" class="form-control" placeholder="Nhập mã số thuế của bạn" />
                                </div>
                            </div>

                            <div class="gender" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="gioiTinh">Giới tính:</label>
                                </div>
                                <div class="col-6">
                                    <select id="gender" name="gender">
                                        <option value="male">Nam</option>
                                        <option value="female">Nữ</option>
                                    </select>
                                </div>
                            </div>

                            <div class="date-of-birth" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="ngaySinh">Ngày sinh:</label>
                                </div>
                                <div class="col-6">
                                    <%--<input type="date" id="ngaySinh" name="noiSinh" class="form-control" placeholder="Nhập nơi sinh của bạn" />--%>
                                    <dx:ASPxDateEdit ID="ASPxDateEdit1" NullText="dd/MM/yyyy" runat="server"></dx:ASPxDateEdit>
                                </div>
                            </div>

                            <div class="place-of-birth" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="noiSinh">Nơi sinh:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="noiSinh" name="noiSinh" class="form-control" placeholder="Nhập nơi sinh của bạn" />
                                </div>
                            </div>

                            <div class="home-town" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="noiSinh">Quê quán:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="queQuan" name="queQuan" class="form-control" placeholder="Nhập quê quán của bạn" />
                                </div>
                            </div>

                            <div class="permanent-residence " style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="hoKhau">Hộ khẩu thường trú:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="hoKhau" name="hoKhau" class="form-control" placeholder="Nhập hộ khẩu thường trú của bạn" />
                                </div>
                            </div>
                        </div>
                    </div>



                    <!------>
                    <div class="col-6" style="width: 45%; margin: 0px 0px 0px 100px">
                        <div class="row">
                            <div class="current-address" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="choHienTai" style="margin: 0 50px">Chỗ ở hiện tại:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="choHienTai" name="choHienTai" class="form-control" placeholder="Nhập chỗ ở hiện tại của bạn" />
                                </div>
                            </div>

                            <div class="ethnicity" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="danToc" style="margin: 0 50px">Dân tộc:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="danToc" name="danToc" class="form-control" placeholder="Nhập dân tộc của bạn" />
                                </div>
                            </div>

                            <div class="religion" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="tonGiao" style="margin: 0 50px">Tôn giáo:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="tonGiao" name="tonGiao" class="form-control" placeholder="Nhập tông giáo của bạn" />
                                </div>
                            </div>

                            <div class="nationality" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="quocTich" style="margin: 0 50px">Quốc tịch:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="quocTich" name="quocTich" class="form-control" placeholder="Nhập quốc tịch của bạn" />
                                </div>
                            </div>

                            <div class="phone-number" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="SDT" style="margin: 0 50px">Số điện thoại:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="SDT" name="SDT" class="form-control" placeholder="Nhập số điện thoại của bạn" />
                                </div>
                            </div>

                            <div class="email" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="email" style="margin: 0 50px">Email:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="email" name="email" class="form-control" placeholder="Nhập Email của bạn" />
                                </div>
                            </div>

                            <div class="status" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="trangThai" style="margin: 0 50px">Trạng thái:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="trangThai" name="trangThai" class="form-control" placeholder="Nhập trạng thái của bạn" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ClientIDMode="Inherit" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
    <script>
        function saveClick() {
            alert("123");
        }
    </script>
</asp:Content>
