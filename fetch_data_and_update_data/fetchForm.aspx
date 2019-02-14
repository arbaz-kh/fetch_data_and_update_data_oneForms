<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fetchForm.aspx.cs" Inherits="fetch_data_and_update_data.fetchForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--BOOTSTRAP--%>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <%--BOOTSTRAP--%>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-5">
        <div class="col-lg-12 d-flex justify-content-center">
            <div class="col-lg-6">
                <div class="form-group col-lg-12">
                    <nav>
		              <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active" id="nav-insert-tab" data-toggle="tab" href="#nav-insert" role="tab" aria-controls="nav-insert" aria-selected="true">Home</a>
                        <a class="nav-item nav-link" id="nav-update-tab" data-toggle="tab" href="#nav-update" role="tab" aria-controls="nav-update" aria-selected="false">Profile</a>
		              </div>
		            </nav>
                </div>
                <div class="tab-content" id="nav-tabContent">
                    <%--INSERT FORM--%>
                    <div class="tab-pane fade show active" id="nav-insert" role="tabpanel" aria-labelledby="nav-insert-tab">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h1 class="h5">Insert Data</h1>
                                </div>
                                <div class="card-body">
                                    <div class="col-lg-12">
                                        <div class="form-row">
                                            <div class="form-group col-lg-6">
                                                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                                                <asp:TextBox ID="tb_insertFname" runat="server" CssClass="form-control border-top-0 border-left-0 border-right-0 shadow-none rounded-0" AutoCompleteType="Disabled"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-lg-6">
                                                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                                                <asp:TextBox ID="tb_insertLname" runat="server" CssClass="form-control border-top-0 border-left-0 border-right-0 shadow-none rounded-0" AutoCompleteType="Disabled"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                                        <asp:TextBox ID="tb_insertEmail" runat="server" CssClass="form-control border-top-0 border-left-0 border-right-0 shadow-none rounded-0" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
                                        <asp:TextBox ID="tb_insertNum" runat="server" CssClass="form-control border-top-0 border-left-0 border-right-0 shadow-none rounded-0" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <asp:Button ID="insert_btn" runat="server" Text="Insert" CssClass="btn btn-success w-25" OnClick="insert_btn_Click" />
                                        <asp:Label ID="insert_msg" runat="server" CssClass="ml-3"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <asp:Label ID="insertException_msg" runat="server"></asp:Label>
                        </div>
                    </div>
                    <%--END INSERT FORM--%>
                    <%--UPDATE FORM--%>
                    <div class="tab-pane fade" id="nav-update" role="tabpanel" aria-labelledby="nav-update-tab">
                        <div class="col-lg-12 mb-3">
                            <div class="card">
                                <div class="card-header">
                                    <h1 class="h4">Fetch Your Data</h1>
                                </div>
                                <div class="card-body">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control mb-3" DataSourceID="fetchDS" DataTextField="db_email" DataValueField="Id"></asp:DropDownList>
                                    <asp:SqlDataSource ID="fetchDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [fetchTB]"></asp:SqlDataSource>
                                    <asp:Button ID="fetch_btn" runat="server" Text="Fetch" CssClass="btn btn-dark w-25" OnClick="fetch_btn_Click" />
                                    <asp:Label ID="fetch_msg" runat="server" CssClass="ml-3"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 mb-4">
                            <div class="card">
                                <div class="card-header">
                                    <h1 class="h5">Update Your Data</h1>
                                </div>
                                <div class="card-body">
                                    <div class="col-lg-12">
                                        <div class="form-row">
                                            <div class="form-group col-lg-6">
                                                <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
                                                <asp:TextBox ID="tb_updateFname" runat="server" CssClass="form-control border-top-0 border-left-0 border-right-0 shadow-none rounded-0" AutoCompleteType="Disabled"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-lg-6">
                                                <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label>
                                                <asp:TextBox ID="tb_updateLname" runat="server" CssClass="form-control border-top-0 border-left-0 border-right-0 shadow-none rounded-0" AutoCompleteType="Disabled"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                                        <asp:TextBox ID="tb_updateEmail" runat="server" CssClass="form-control border-top-0 border-left-0 border-right-0 shadow-none rounded-0" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <asp:Label ID="Label8" runat="server" Text="Phone Number"></asp:Label>
                                        <asp:TextBox ID="tb_updateNum" runat="server" CssClass="form-control border-top-0 border-left-0 border-right-0 shadow-none rounded-0" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <asp:Button ID="update_btn" runat="server" Text="Update" CssClass="btn btn-success w-25" OnClick="update_btn_Click" />
                                        <asp:Label ID="update_msg" runat="server" CssClass="ml-3"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <asp:Label ID="updateException_msg" runat="server"></asp:Label>
                        </div>
                    </div>
                    <%--END UPDATE FORM--%>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
