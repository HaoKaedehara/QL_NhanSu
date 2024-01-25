<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="QL_NhanSu.NhanSu.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Public/css/edit.css" rel="stylesheet" />
    <script src="../Public/js/nhansu.js"></script>

    <div class="personal-info-page">
        <div class="personal-info-header">
            <div class="col-2">
                <h3>Cập nhật hồ sơ</h3>
            </div>
            <div class="col-10 button-container">
                <!--Edit-->
                <div class="edit_container">
                    <button class="btn-edit" onclick="editClick">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z" />
                        </svg>
                        Sửa   
                    </button>
                </div>

                <!--Save--->
                <div class="save_container">
                    <button class="btn-save" onclick="saveClick">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-floppy" viewBox="0 0 16 16">
                            <path d="M11 2H9v3h2z" />
                            <path d="M1.5 0h11.586a1.5 1.5 0 0 1 1.06.44l1.415 1.414A1.5 1.5 0 0 1 16 2.914V14.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 14.5v-13A1.5 1.5 0 0 1 1.5 0M1 1.5v13a.5.5 0 0 0 .5.5H2v-4.5A1.5 1.5 0 0 1 3.5 9h9a1.5 1.5 0 0 1 1.5 1.5V15h.5a.5.5 0 0 0 .5-.5V2.914a.5.5 0 0 0-.146-.353l-1.415-1.415A.5.5 0 0 0 13.086 1H13v4.5A1.5 1.5 0 0 1 11.5 7h-7A1.5 1.5 0 0 1 3 5.5V1H1.5a.5.5 0 0 0-.5.5m3 4a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 .5-.5V1H4zM3 15h10v-4.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5z" />
                        </svg>
                        Lưu   
                    </button>
                </div>

                <!--Delete-->
                <div class="delete_container">
                    <button class="btn-delete" onclick="deletClick">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                            <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5M11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47M8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5" />
                        </svg>
                        Xóa   
                    </button>
                </div>

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
                <!--Hình ảnh nhân sự-->
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


                <div class="personal-info row">
                    <h4>Thông tin chung</h4>
                    <div class="col-6" style="width: 45%;">
                        <div class="row">
                            <div class="employee-code" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="maNhanVien">Mã nhân viên:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="maNhanVien" name="maNhanVien" class="form-control" placeholder="Nhập mã nhân viên">
                                </div>
                            </div>

                            <div class="full-name" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="hoTen">Họ và tên:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="hoTen" name="hoTen" class="form-control" placeholder="Nhập họ tên của bạn">
                                </div>
                            </div>

                            <div class="full-name" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="soThue">Mã số thuế:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="soThue" name="soThue" class="form-control" placeholder="Nhập mã số thuế của bạn">
                                </div>
                            </div>

                            <div class="full-name" style="display: flex; margin: 10px 0;">
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

                            <div class="full-name" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="ngaySinh">Ngày sinh:</label>
                                </div>
                                <div class="col-6">
                                    <input type="date" id="ngaySinh" name="ngaySinh" class="form-control" placeholder="Nhập ngày sinh của bạn">
                                </div>
                            </div>

                            <div class="full-name" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="noiSinh">Nơi sinh:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="noiSinh" name="noiSinh" class="form-control" placeholder="Nhập nơi sinh của bạn">
                                </div>
                            </div>

                            <div class="full-name" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="noiSinh">Quê quán:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="queQuan" name="queQuan" class="form-control" placeholder="Nhập quê quán của bạn">
                                </div>
                            </div>

                            <div class="full-name" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="hoKhau">Hộ khẩu thường trú:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="hoKhau" name="hoKhau" class="form-control" placeholder="Nhập hộ khẩu thường trú của bạn">
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
                                    <input type="text" id="choHienTai" name="choHienTai" class="form-control" placeholder="Nhập chỗ ở hiện tại của bạn">
                                </div>
                            </div>

                            <div class="ethnicity" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="danToc" style="margin: 0 50px">Dân tộc:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="danToc" name="danToc" class="form-control" placeholder="Nhập dân tộc của bạn">
                                </div>
                            </div>

                            <div class="religion" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="tonGiao" style="margin: 0 50px">Tôn giáo:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="tonGiao" name="tonGiao" class="form-control" placeholder="Nhập tông giáo của bạn">
                                </div>
                            </div>

                            <div class="nationality" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="quocTich" style="margin: 0 50px">Quốc tịch:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="quocTich" name="quocTich" class="form-control" placeholder="Nhập quốc tịch của bạn">
                                </div>
                            </div>

                            <div class="phone-number" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="SDT" style="margin: 0 50px">Số điện thoại:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="SDT" name="SDT" class="form-control" placeholder="Nhập số điện thoại của bạn">
                                </div>
                            </div>

                            <div class="email" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="email" style="margin: 0 50px">Email:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="email" name="email" class="form-control" placeholder="Nhập Email của bạn">
                                </div>
                            </div>

                            <div class="status" style="display: flex; margin: 10px 0;">
                                <div class="col-6">
                                    <label for="trangThai" style="margin: 0 50px">Trạng thái:</label>
                                </div>
                                <div class="col-6">
                                    <input type="text" id="trangThai" name="trangThai" class="form-control" placeholder="Nhập trạng thái của bạn">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
