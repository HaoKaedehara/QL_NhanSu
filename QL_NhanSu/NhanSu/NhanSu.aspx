<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NhanSu.aspx.cs" Inherits="QL_NhanSu.NhanSu.NhanSu" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link href="../Public/css/nhansu.css" rel="stylesheet" />
    <div class="home-page">
        <div class="home-header">
            <h3>Tổng quan</h3>
        </div>
        <div class="gridview_db">
            <div class="header row">
                <div class="col-6 col-left">
                    <div class="search-container">
                        <input type="text" id="searchInput" placeholder="Search...">
                        <button type="submit" id="searchButton">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                            </svg>
                        </button>
                    </div>
                </div>

                <div class="col-6 col-right">
                    <!--Export-->
                    <div class="export_container" onclick="exportClick()">

                        <button class="btn-export">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z" />
                                <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z" />
                            </svg>
                        </button>
                    </div>

                    <!--Add new-->
                    <div class="addnew_container">
                        <button class="btn-addnew" onclick="addnewClick(event)">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2" />
                            </svg>
                            Thêm mới
                        </button>
                    </div>
                    <script>
                        function addnewClick(event) {
                            // Ngăn chặn hành động mặc định của sự kiện
                            event.preventDefault();
                            // Chuyển hướng đến trang AddNew.aspx
                            window.location.href = "AddNew.aspx";
                        }

                    </script>
                </div>
            </div>

            <div class="gridview-container" style="border: 1px solid #808080">
                <div class="gridview-body" style="border: none">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" KeyFieldName="MaNV" Width="100%">
                        <Columns>
                            <dx:GridViewCommandColumn VisibleIndex="0" Width="50" FixedStyle="Left"></dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="MaNV" ReadOnly="True" VisibleIndex="1" Width="150" Caption="Mã nhân viên" FixedStyle="Left"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="HoTen" VisibleIndex="2" Width="200" Caption="Họ và tên" FixedStyle="Left"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="MST" VisibleIndex="3" Width="150" Caption="Mã số thuế"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataCheckColumn FieldName="GioiTinh" VisibleIndex="4" Width="100" Caption="Giới tính">
                                <DataItemTemplate>
                                    <%#Eval("GioiTinh") == DBNull.Value ? "" : (bool)Eval("GioiTinh") ? "Nam" : "Nữ" %>
                                </DataItemTemplate>

                            </dx:GridViewDataCheckColumn>
                            <dx:GridViewDataDateColumn FieldName="NgSinh" VisibleIndex="5" Width="100px" Caption="Ngày sinh"></dx:GridViewDataDateColumn>
                            <dx:GridViewDataTextColumn FieldName="NoiSinh" VisibleIndex="6" Width="200px" Caption="Nơi sinh"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="QueQuan" VisibleIndex="7" Width="200px" Caption="Quê quán"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="HoKhauTT" VisibleIndex="8" Width="250px" Caption="Hộ khẩu thường trú"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ChoOHienTai" VisibleIndex="9" Width="250px" Caption="Chỗ ở hiện tại"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="DanToc" VisibleIndex="10" Width="100px" Caption="Dân tộc"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TonGiao" VisibleIndex="11" Width="100px" Caption="Tôn giáo"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="QuocTich" VisibleIndex="12" Width="200px" Caption="Quốc tịch"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="SDT" VisibleIndex="13" Width="150px" Caption="Số điện thoại"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="14" Width="150px" Caption="Email"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataCheckColumn FieldName="TrangThai" VisibleIndex="15" Width="150px" Caption="Trạng thái"></dx:GridViewDataCheckColumn>
                            <dx:GridViewDataBinaryImageColumn FieldName="HinhAnh" VisibleIndex="16" Width="200">
                                <PropertiesBinaryImage ImageHeight="170px" ImageWidth="160px">
                                    <EditingSettings Enabled="true" />
                                </PropertiesBinaryImage>
                            </dx:GridViewDataBinaryImageColumn>
                        </Columns>

                        <Settings HorizontalScrollBarMode="Visible" />
                        <SettingsBehavior AutoExpandAllGroups="true" />
                        <%--<EditFormLayoutProperties ColCount="3">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="HinhAnh" RowSpan="4" ShowCaption="False" HelpText="You can upload JPG, GIF or PNG file. Maximum fils size is 4MB." Width="180px" />
                            </Items>
                        </EditFormLayoutProperties>--%>
                    </dx:ASPxGridView>
                    <asp:LinqDataSource runat="server" EntityTypeName="" ID="LinqDataSource1" ContextTypeName="QL_NhanSu.NhanSuDataContext" TableName="NHANVIENs"></asp:LinqDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
