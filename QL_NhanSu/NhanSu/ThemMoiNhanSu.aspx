<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThemMoiNhanSu.aspx.cs" Inherits="QL_NhanSu.NhanSu.ThemMoiNhanSu" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color: azure">
        <dx:ASPxFormLayout ID="ContentFormLayout" runat="server" UseDefaultPaddings="false" Width="100%" ColumnCount="3" Theme="Office365">
            <SettingsAdaptivity>
                <GridSettings>
                    <Breakpoints>
                        <dx:LayoutBreakpoint ColumnCount="1" MaxWidth="700" Name="S" />
                        <dx:LayoutBreakpoint ColumnCount="2" MaxWidth="1050" Name="M" />
                    </Breakpoints>
                </GridSettings>
            </SettingsAdaptivity>
            <SettingsItemCaptions Location="Left" />
            <Styles>
                <LayoutGroup>
                    <Cell>
                        <Paddings PaddingTop="10" />
                        <Paddings PaddingRight="50" />
                    </Cell>
                </LayoutGroup>
            </Styles>
            <Items>
                <dx:LayoutItem Caption="Mã Nhân viên">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_MaNV" runat="server" NullText="Nhập Mã NV"
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Họ tên Nhân viên">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_HoTenNV" runat="server" NullText="Nhập Tên NV"
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Hình ảnh" ColumnSpan="1" RowSpan="2" CaptionSettings-VerticalAlign="Middle">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxBinaryImage ID="BinaryImage" EditingSettings-EmptyValueText="Tải ảnh lên" ClientInstanceName="ClientBinaryImage" Width="100" Height="100" ShowLoadingImage="true" LoadingImageUrl="~/Content/Loading.gif" runat="server">
                                <EditingSettings Enabled="true">
                                    <UploadSettings>
                                        <UploadValidationSettings MaxFileSize="10000000" MaxFileSizeErrorText="File tải lên: <8Mb"></UploadValidationSettings>
                                    </UploadSettings>
                                </EditingSettings>
                            </dx:ASPxBinaryImage>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Mã số thuế">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_MaSoThue" runat="server" NullText="Nhập MST" 
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Giới tính" CaptionSettings-VerticalAlign="Middle">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxRadioButtonList ID="ASPxRadioButtonList_Gender" runat="server" Width="50%" BackColor="Transparent" Border-BorderStyle="None"
                                RepeatDirection="Horizontal" Theme="Office365">
                                <Items>
                                    <dx:ListEditItem Value="1" Text="Nam" Selected="true" />
                                    <dx:ListEditItem Value="0" Text="Nữ" />
                                </Items>
                            </dx:ASPxRadioButtonList>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>

                <dx:LayoutItem Caption="Ngày sinh">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxDateEdit ID="ASPxDateEdit_NgaySinh" runat="server" EditFormat="Custom" Width="100%" Theme="Office365">
                                <TimeSectionProperties>
                                    <TimeEditProperties EditFormatString="hh:mm tt" />
                                </TimeSectionProperties>
                                <CalendarProperties>
                                    <FastNavProperties DisplayMode="Inline" />
                                </CalendarProperties>
                            </dx:ASPxDateEdit>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Ngày vào làm">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxDateEdit ID="ASPxDateEdit_NgayLamCT" runat="server" EditFormat="Custom" Width="100%" Theme="Office365">
                                <TimeSectionProperties>
                                    <TimeEditProperties EditFormatString="hh:mm tt" />
                                </TimeSectionProperties>
                                <CalendarProperties>
                                    <FastNavProperties DisplayMode="Inline" />
                                </CalendarProperties>
                            </dx:ASPxDateEdit>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Nơi sinh">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxComboBox ID="ASPxComboBox_NoiSinh" runat="server" Width="100%" Theme="Office365">
                                <Items>
                                    <dx:ListEditItem Value='An Giang' />
                                    <dx:ListEditItem Value='Bà Rịa Vũng Tàu' />
                                    <dx:ListEditItem Value='Bạc Liêu' />
                                    <dx:ListEditItem Value='Bắc Giang' />
                                    <dx:ListEditItem Value='Bắc Kạn' />
                                    <dx:ListEditItem Value='Bắc Ninh' />
                                    <dx:ListEditItem Value='Bến Tre' />
                                    <dx:ListEditItem Value='Bình Dương' />
                                    <dx:ListEditItem Value='Bình Định' />
                                    <dx:ListEditItem Value='Bình Phước' />
                                    <dx:ListEditItem Value='Bình Thuận' />
                                    <dx:ListEditItem Value='Cà Mau' />
                                    <dx:ListEditItem Value='Cao Bằng' />
                                    <dx:ListEditItem Value='Cần Thơ' />
                                    <dx:ListEditItem Value='Đà Nẵng' />
                                    <dx:ListEditItem Value='Đắk Lắk' />
                                    <dx:ListEditItem Value='Đắk Nông' />
                                    <dx:ListEditItem Value='Điện Biên' />
                                    <dx:ListEditItem Value='Đồng Nai' />
                                    <dx:ListEditItem Value='Đồng Tháp' />
                                    <dx:ListEditItem Value='Gia Lai' />
                                    <dx:ListEditItem Value='Hà Giang' />
                                    <dx:ListEditItem Value='Hà Nam' />
                                    <dx:ListEditItem Value='Hà Nội' />
                                    <dx:ListEditItem Value='Hà Tĩnh' />
                                    <dx:ListEditItem Value='Hải Dương' />
                                    <dx:ListEditItem Value='Hải Phòng' />
                                    <dx:ListEditItem Value='Hậu Giang' />
                                    <dx:ListEditItem Value='Hòa Bình' />
                                    <dx:ListEditItem Value='Hưng Yên' />
                                    <dx:ListEditItem Value='Khánh Hòa' />
                                    <dx:ListEditItem Value='Kiên Giang' />
                                    <dx:ListEditItem Value='Kon Tum' />
                                    <dx:ListEditItem Value='Lai Châu' />
                                    <dx:ListEditItem Value='Lạng Sơn' />
                                    <dx:ListEditItem Value='Lào Cai' />
                                    <dx:ListEditItem Value='Lâm Đồng' />
                                    <dx:ListEditItem Value='Long An' />
                                    <dx:ListEditItem Value='Nam Định' />
                                    <dx:ListEditItem Value='Nghệ An' />
                                    <dx:ListEditItem Value='Ninh Bình' />
                                    <dx:ListEditItem Value='Ninh Thuận' />
                                    <dx:ListEditItem Value='Phú Thọ' />
                                    <dx:ListEditItem Value='Phú Yên' />
                                    <dx:ListEditItem Value='Quảng Bình' />
                                    <dx:ListEditItem Value='Quảng Nam' />
                                    <dx:ListEditItem Value='Quảng Ngãi' />
                                    <dx:ListEditItem Value='Quảng Ninh' />
                                    <dx:ListEditItem Value='Quảng Trị' />
                                    <dx:ListEditItem Value='Sóc Trăng' />
                                    <dx:ListEditItem Value='Sơn La' />
                                    <dx:ListEditItem Value='Tây Ninh' />
                                    <dx:ListEditItem Value='Thái Bình' />
                                    <dx:ListEditItem Value='Thái Nguyên' />
                                    <dx:ListEditItem Value='Thanh Hóa' />
                                    <dx:ListEditItem Value='Thừa Thiên Huế' />
                                    <dx:ListEditItem Value='Tiền Giang' />
                                    <dx:ListEditItem Value='TP Hồ Chí Minh' />
                                    <dx:ListEditItem Value='Trà Vinh' />
                                    <dx:ListEditItem Value='Tuyên Quang' />
                                    <dx:ListEditItem Value='Vĩnh Long' />
                                    <dx:ListEditItem Value='Vĩnh Phúc' />
                                    <dx:ListEditItem Value='Yên Bái' />
                                    <dx:ListEditItem Value="Chọn một thành phố" Selected="true" />
                                </Items>
                            </dx:ASPxComboBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>

                <dx:LayoutItem Caption="Quê quán" ColumnSpan="3">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_QueQuan" runat="server" NullText="số nhà, đường, xã, phường, thị trấn, tỉnh, TP"
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Hộ khẩu thường trú" ColumnSpan="3">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_HKTT" runat="server" NullText="số nhà, đường, xã, phường, thị trấn, tỉnh, TP"
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Chổ ở hiện tại" ColumnSpan="3">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_ChoOHienTai" runat="server" NullText="số nhà, đường, xã, phường, thị trấn, tỉnh, TP"
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Dân tộc">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxComboBox ID="ASPxComboBox_DanToc" runat="server" Width="100%" Theme="Office365">
                                <Items>
                                    <dx:ListEditItem Value='Kinh' />
                                    <dx:ListEditItem Value='Tày' />
                                    <dx:ListEditItem Value='Thái' />
                                    <dx:ListEditItem Value='Hoa' />
                                    <dx:ListEditItem Value='Khơ-me' />
                                    <dx:ListEditItem Value='Mường' />
                                    <dx:ListEditItem Value='Nùng' />
                                    <dx:ListEditItem Value='HMông' />
                                    <dx:ListEditItem Value='Dao' />
                                    <dx:ListEditItem Value='Gia-rai' />
                                    <dx:ListEditItem Value='Ngái' />
                                    <dx:ListEditItem Value='Ê-đê' />
                                    <dx:ListEditItem Value='Ba na' />
                                    <dx:ListEditItem Value='Xơ-Đăng' />
                                    <dx:ListEditItem Value='Sán Chay' />
                                    <dx:ListEditItem Value='Cơ-ho' />
                                    <dx:ListEditItem Value='Chăm' />
                                    <dx:ListEditItem Value='Sán Dìu' />
                                    <dx:ListEditItem Value='Hrê' />
                                    <dx:ListEditItem Value='Mnông' />
                                    <dx:ListEditItem Value='Ra-glai' />
                                    <dx:ListEditItem Value='Xtiêng' />
                                    <dx:ListEditItem Value='Bru-Vân Kiều' />
                                    <dx:ListEditItem Value='Thổ' />
                                    <dx:ListEditItem Value='Giáy' />
                                    <dx:ListEditItem Value='Cơ-tu' />
                                    <dx:ListEditItem Value='Gié Triêng' />
                                    <dx:ListEditItem Value='Mạ' />
                                    <dx:ListEditItem Value='Khơ-mú' />
                                    <dx:ListEditItem Value='Co' />
                                    <dx:ListEditItem Value='Tà-ôi' />
                                    <dx:ListEditItem Value='Chơ-ro' />
                                    <dx:ListEditItem Value='Kháng' />
                                    <dx:ListEditItem Value='Xinh-mun' />
                                    <dx:ListEditItem Value='Hà Nhì' />
                                    <dx:ListEditItem Value='Chu ru' />
                                    <dx:ListEditItem Value='Lào' />
                                    <dx:ListEditItem Value='La Chí' />
                                    <dx:ListEditItem Value='La Ha' />
                                    <dx:ListEditItem Value='Phù Lá' />
                                    <dx:ListEditItem Value='La Hủ' />
                                    <dx:ListEditItem Value='Lự' />
                                    <dx:ListEditItem Value='Lô Lô' />
                                    <dx:ListEditItem Value='Chứt' />
                                    <dx:ListEditItem Value='Mảng' />
                                    <dx:ListEditItem Value='Pà Thẻn' />
                                    <dx:ListEditItem Value='Co Lao' />
                                    <dx:ListEditItem Value='Cống' />
                                    <dx:ListEditItem Value='Bố Y' />
                                    <dx:ListEditItem Value='Si La' />
                                    <dx:ListEditItem Value='Pu Péo' />
                                    <dx:ListEditItem Value='Brâu' />
                                    <dx:ListEditItem Value='Ơ Đu' />

                                    <dx:ListEditItem Value="Chọn một dân tộc" Selected="true" />
                                </Items>
                            </dx:ASPxComboBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Tôn giáo">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxComboBox ID="ASPxComboBox_TonGiao" runat="server" Width="100%" Theme="Office365">
                                <Items>
                                    <dx:ListEditItem Value='Phật giáo' />
                                    <dx:ListEditItem Value='Kitô giáo' />
                                    <dx:ListEditItem Value='Công giáo' />
                                    <dx:ListEditItem Value='Tin Lành' />
                                    <dx:ListEditItem Value='Hòa Hảo' />
                                    <dx:ListEditItem Value='Cao Đài' />
                                    <dx:ListEditItem Value='Không' />

                                    <dx:ListEditItem Value="Chọn một tôn giáo" Selected="true" />
                                </Items>
                            </dx:ASPxComboBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Quốc tịch">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <%--<dx:ASPxComboBox ID="ASPxComboBox_QuocTich" runat="server" Width="100%" Theme="Office365">
                                <Items>
                                    <dx:ListEditItem Value='Kinh' />
                                    <dx:ListEditItem Value="Chọn một quốc tịch" Selected="true" />
                                </Items>
                            </dx:ASPxComboBox>--%>
                            <dx:ASPxTextBox ID="ASPxTextBox_QuocTich" runat="server" NullText="Nhập quốc tịch"
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Số điện thoại">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_SDT" runat="server" NullText="Nhập số điện thoại" DisplayFormatString=" 0000  000  000 "
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Email">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_Email" runat="server" NullText="Nhập email"
                                Width="100%" Theme="Office365">
                                <ValidationSettings SetFocusOnError="True" Display="Dynamic" ErrorTextPosition="Bottom">
                                    <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                    <RequiredField IsRequired="True" ErrorText="E-mail is required" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Trạng thái">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="ASPxTextBox_TrangThai" runat="server" NullText="?"
                                Width="100%" Theme="Office365">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <%--<dx:LayoutItem Caption="ComboBox">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxComboBox ID="ASPxComboBox1" Theme="Office365" runat="server" Width="100%">
                            <Items>
                                <dx:ListEditItem Value="Ana Trujillo" />
                                <dx:ListEditItem Value="Giovanni Rovelli" />
                                <dx:ListEditItem Value="Jaime Yorres" />
                                <dx:ListEditItem Value="John Steel" Selected="true" />
                            </Items>
                        </dx:ASPxComboBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="SpinEdit">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxSpinEdit ID="ASPxSpinEdit1" Theme="Office365" runat="server" Width="100%" Increment="100" Number="100" NumberType="Integer"
                            MinValue="0" MaxValue="10000">
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="DateEdit">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxDateEdit ID="ASPxDateEdit1" Theme="Office365" runat="server" EditFormat="Custom" Date="2009-11-02 09:23" Width="100%">
                            <CalendarProperties>
                                <FastNavProperties DisplayMode="Inline" />
                            </CalendarProperties>
                            <TimeSectionProperties>
                                <TimeEditProperties EditFormatString="hh:mm tt" />
                            </TimeSectionProperties>
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="TimeEdit">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTimeEdit ID="ASPxTimeEdit1" Theme="Office365" Border-BorderStyle="NotSet" runat="server" Width="100%" NullText="12:00 AM">
                        </dx:ASPxTimeEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="DropDownEdit">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxDropDownEdit ID="ASPxDropDownEdit1" Theme="Office365" runat="server" NullText="Text area" Width="100%">
                            <DropDownWindowTemplate>
                                <div style="padding: 10px 0 10px 3px">Dropdown content</div>
                            </DropDownWindowTemplate>
                        </dx:ASPxDropDownEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="ButtonEdit">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxButtonEdit ID="ASPxButtonEdit1" Text="Andy McKee - Rylynn" Width="100%" Theme="Office365" runat="server">
                            <Buttons>
                                <dx:EditButton>
                                </dx:EditButton>
                            </Buttons>
                        </dx:ASPxButtonEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="ColorEdit">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxColorEdit ID="ASPxColorEdit1" Theme="Office365" runat="server" Width="100%" Color="#FF9900">
                        </dx:ASPxColorEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="ProgressBar">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxProgressBar ID="ASPxProgressBar1" ShowPosition="true" Theme="Office365" runat="server" Position="42" Width="100%">
                        </dx:ASPxProgressBar>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="TokenBox">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTokenBox ID="ASPxTokenBox1" Theme="Office365" runat="server" IncrementalFilteringMode="Contains"
                            Width="100%" NullText="Type Jaime">
                            <Items>
                                <dx:ListEditItem Value="Ana Trujillo" />
                                <dx:ListEditItem Value="Giovanni Rovelli" />
                                <dx:ListEditItem Value="Jaime Yorres" />
                                <dx:ListEditItem Value="John Steel" />
                            </Items>
                        </dx:ASPxTokenBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="RadioButtonList">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" Theme="Office365" runat="server" Width="100%" BackColor="Transparent"
                            RepeatDirection="Horizontal">
                            <Items>
                                <dx:ListEditItem Value="ASP" Selected="true" />
                                <dx:ListEditItem Value="WPF" />
                            </Items>
                        </dx:ASPxRadioButtonList>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="CheckBoxList">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxCheckBoxList ID="ASPxCheckBoxList1" Theme="Office365" runat="server" Width="100%" RepeatDirection="Horizontal">
                            <Items>
                                <dx:ListEditItem Value="Wi-Fi" Selected="true" />
                                <dx:ListEditItem Value="3G" />
                            </Items>
                        </dx:ASPxCheckBoxList>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="TrackBar" CssClass="mobileAlign">
                <ParentContainerStyle CssClass="mobileAlign"></ParentContainerStyle>
                <NestedControlCellStyle>
                    <Paddings PaddingTop="36" PaddingBottom="36" />
                </NestedControlCellStyle>
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTrackBar ID="ASPxTrackBar1" Theme="Office365" runat="server" Width="285px" MinValue="0" MaxValue="50" Step="1" LargeTickInterval="10"
                            PositionStart="10" ScalePosition="LeftOrTop">
                        </dx:ASPxTrackBar>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Memo">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxMemo ID="ASPxMemo1" Theme="Office365" runat="server" Text="Confections - Desserts, candies, and sweet breads." Height="120px"
                            Width="100%">
                        </dx:ASPxMemo>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutGroup ShowCaption="False" GroupBoxDecoration="None" UseDefaultPaddings="false">
                <Items>
                    <dx:LayoutItem Caption="RadioButton">
                        <CaptionCellStyle>
                            <Paddings PaddingTop="6px" />
                        </CaptionCellStyle>
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxRadioButton ID="ASPxRadioButton1" Theme="Office365" runat="server" Text="Click to change state" />
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Checkbox">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxCheckBox ID="ASPxCheckBox1" Theme="Office365" runat="server" Text="Click to change state">
                                </dx:ASPxCheckBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
            <dx:LayoutItem Caption="ListBox">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxListBox ID="ASPxListBox1" Theme="Office365" runat="server" Width="100%" Height="260px">
                            <Items>
                                <dx:ListEditItem Value="Ana Trujillo" />
                                <dx:ListEditItem Value="Giovanni Rovelli" Selected="true" />
                                <dx:ListEditItem Value="Jaime Yorres" />
                                <dx:ListEditItem Value="John Steel" />
                            </Items>
                        </dx:ASPxListBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Calendar">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxCalendar ID="ASPxCalendar1" Theme="Office365" runat="server" ShowWeekNumbers="false" EnableYearNavigation="false" EnableMonthNavigation="false">
                            <FastNavProperties DisplayMode="Inline" />
                        </dx:ASPxCalendar>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>--%>
                <dx:LayoutGroup ShowCaption="False" ColumnSpan="3" GroupBoxDecoration="None" UseDefaultPaddings="false" CssClass="mobileAlign">
                    <ParentContainerStyle CssClass="mobileAlign"></ParentContainerStyle>
                    <Items>
                        <%--  <dx:LayoutItem Caption="Captcha">
                        <CaptionCellStyle>
                            <Paddings PaddingTop="6px" />
                        </CaptionCellStyle>
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxCaptcha ID="Captcha" Theme="Office365" runat="server" CodeLength="7">
                                    <TextBox Position="Bottom" />
                                    <ChallengeImage Width="285"></ChallengeImage>
                                    <TextBoxStyle Width="100%" />
                                    <RefreshButton Position="Bottom" Text=""></RefreshButton>
                                    <ValidationSettings ErrorText="The code is incorrect"></ValidationSettings>
                                </dx:ASPxCaptcha>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>--%>
                        <dx:LayoutItem Caption="" VerticalAlign="Middle" HorizontalAlign="Center">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxButton ID="ASPxButton1" Width="285px" OnClick="ASPxButton1_Click" Theme="Office365" runat="server" Text="Thêm hồ sơ" AutoPostBack="true">
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
            </Items>
        </dx:ASPxFormLayout>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
</asp:Content>
