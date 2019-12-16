<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>
    <style type="text/css">
        body
        {
            padding: 10pt !important;
        }
    </style>
    <script>
        $(function () {
            alert("inside js");
            $("#txtT1").autocomplete({
                source: function (request, response)
                {
                    alert("inside js innerFun");
                    var param = { Suppdetails: $('#txtT1').val() };
                    $.ajax({
                        url: "CS.aspx/GetSupp",
                        data: JSON.stringify(param),
                        type: "post",
                        contentType: "application/json:charset-utf-8",
                        datafilter: function (data) { return data },
                        success: function (data) {
                            response($.map(data.d, function (item) { return {value : item}}))
                        },
                    });
                },
                minlength : 1
            });
        });
    </script>
</head>
<body>
     <div class="container Center">
    <form id="form1" runat="server">
         <div class="row">
                <div class="col-lg-3"><asp:Label ID="lblL1" runat="server" Text="OrderID"></asp:Label></div>
                <div class="col-lg-9"><asp:TextBox ID="txtT1" CssClass="form-control" runat="server"></asp:TextBox></div>            </div>
            <div class="row">
                <div class="col-lg-3"><asp:Label ID="lblL2" runat="server" Text="Order Date"></asp:Label></div>
                <div class="col-lg-9"><asp:TextBox ID="txtL3" CssClass="form-control" runat="server"></asp:TextBox></div>
            </div>
            <div class="row">
                <div class="col-lg-12"><asp:Label ID="lblL3" runat="server" Text="<h2>Shipping Address Details</h2>"></asp:Label></div>
            </div>
            <div class="row">
                <div class="col-lg-3"><asp:Label ID="lblL4" runat="server" Text="Shipper ID"></asp:Label></div>
                <div class="col-lg-6"><asp:TextBox ID="txtT2" CssClass="form-control" runat="server"></asp:TextBox></div>
                <div class="col-lg-3"><asp:Button ID="btnB1" class="btn btn-primary" runat="server" Text="B" OnClick="ShowPopup"></asp:Button></div>
            </div>
            <div class="row">
                <div class="col-lg-3"><asp:Label ID="lblL5" runat="server" Text="Address"></asp:Label></div>
                <div class="col-lg-9"><asp:TextBox ID="txtT3" CssClass="form-control" runat="server"></asp:TextBox></div>
            </div>
            <div class="row">
                <div class="col-lg-3"><asp:Label ID="lblL6" runat="server" Text="Consignee ID"></asp:Label></div>
                <div class="col-lg-6"><asp:TextBox ID="txtT4" CssClass="form-control" runat="server"></asp:TextBox></div>
                <div class="col-lg-3"><asp:Button ID="btnB2" class="btn btn-primary" runat="server" Text="B"></asp:Button></div>
            </div>
            <div class="row">
                <div class="col-lg-3"><asp:Label ID="Label1" runat="server" Text="Address"></asp:Label></div>
                <div class="col-lg-9"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox></div>
            </div>
    <center>
    </center>
    <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
        media="screen" />
    <!-- Bootstrap -->
    <!-- Modal Popup -->
    <div id="MyPopup" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                    <h4 class="modal-title">
                    </h4>
                </div>
                <div class="modal-body">
                    <%--<select name="cars">
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="fiat">Fiat</option>
                <option value="audi">Audi</option>
              </select>--%>
                    <asp:TextBox ID="txtAutoComplete" runat="server"></asp:TextBox>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">
                        Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Popup -->
    <script type="text/javascript">
        function ShowPopup(title, body) {
            $("#MyPopup .modal-title").html(title);
            $("#MyPopup .modal-body").html(body);
            $("#MyPopup").modal("show");
        }
    </script>
    </form>
         </div>
</body>
</html>
