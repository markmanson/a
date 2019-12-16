<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmdemo.aspx.cs" Inherits="DemoJQuery.frmdemo" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">
        body {
            color: #404E67;
            background: #F5F7FA;
            font-family: 'Open Sans', sans-serif;
            padding: 10pt !important;
            /*background-color:cadetblue !important;*/
            /*background-image: url(images/backimg5.jpg) !important;*/
        }
        .table-wrapper {
            width: 700px;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 1px 1px rgba(0,0,0,.05);
        }
        .table-title {
            padding-bottom: 10px;
            margin: 0 0 10px;
        }

            .table-title h2 {
                margin: 6px 0 0;
                font-size: 22px;
            }

            .table-title .add-new {
                float: right;
                height: 30px;
                font-weight: bold;
                font-size: 12px;
                text-shadow: none;
                min-width: 100px;
                border-radius: 50px;
                line-height: 13px;
            }

                .table-title .add-new i {
                    margin-right: 4px;
                }

        table.table {
            table-layout: fixed;
        }

            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
            }

            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }

            table.table th:last-child {
                width: 100px;
            }

            table.table td a {
                cursor: pointer;
                display: inline-block;
                margin: 0 5px;
                min-width: 24px;
            }

                table.table td a.add {
                    color: #27C46B;
                }

                table.table td a.edit {
                    color: #FFC107;
                }

                table.table td a.delete {
                    color: #E34724;
                }

            table.table td i {
                font-size: 19px;
            }

            table.table td a.add i {
                font-size: 24px;
                margin-right: -1px;
                position: relative;
                top: 3px;
            }

            table.table .form-control {
                height: 32px;
                line-height: 32px;
                box-shadow: none;
                border-radius: 2px;
            }

                table.table .form-control.error {
                    border-color: #f50000;
                }

            table.table td .add {
                display: none;
            }
        body
        {
            padding: 10pt !important;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" class="form-inline justify-content-center">
        <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>


        <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css" rel="Stylesheet" type="text/css" />
        <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
        <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css' media="screen" />
        <div style="width: 60%; border:groove; margin:0 20%">
            <center><h1>Demo Application</h1></center>
            <br />
            <br />
            <div class="row">
                <div class="col-lg-6" >
                    <asp:Label ID="lblOrderID" runat="server" Text="OrderID"></asp:Label>
                </div>
                <div class="col-lg-6" >
                    <asp:TextBox ID="txtOrderID" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12" >
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6" >
                    <asp:Label ID="lblDate" runat="server" Text="OrderDate"></asp:Label>
                </div>
                <div class="col-lg-6" >
                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
                    <%--<div class="input-group date" data-provide="datepicker">
                        <input type="date" class="form-control" id="txtDate" />
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-th"></span>
                        </div>
                    </div>--%>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12" >
                    <br />
                </div>
            </div>            
            <div class="row">
                <div class="col-lg-6" >
                    <asp:Label ID="lblExporter" runat="server" Text="Exporter"></asp:Label>
                </div>
                <div class="col-lg-6" >
                    <asp:Label ID="lblConsignee" runat="server" Text="Consignee"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12" >
                    <br />
                </div>
            </div>            
            <div class="row">
                <div class="col-lg-6" >
                    <asp:TextBox ID="txtExporter" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:HiddenField ID="hfExporterId" runat="server" />
                    <asp:Button ID="btnShowExporter" runat="server" Text="Search" class="btn btn-primary"></asp:Button>
                </div>
                <div class="col-lg-6" >
                    <asp:TextBox ID="txtConsignee" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:HiddenField ID="hfConsigneeId" runat="server" />
                    <asp:Button ID="btnShowConsignee" runat="server" Text="Search" class="btn btn-primary"  data-toggle="modal" data-target="#myModal"></asp:Button>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12" >
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6" >
                    <asp:Label ID="lblExporterAddress" runat="server" Text="Address"></asp:Label>
                </div>
                <div class="col-lg-6" >
                    <asp:Label ID="lblConsigneeAddress" runat="server" Text="Address"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12" >
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6" >
                    <asp:TextBox TextMode="MultiLine" ID="txtExporterAddress" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-lg-6" >
                    <asp:TextBox TextMode="MultiLine" ID="txtConsigneeAddress" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12" >
                    <br />
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" role="form">
            <div class="modal-dialog" style="width: 1200px;">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                    </div>
                    <div class="modal-body">
                        <table>
                            <tr style="margin-top: 0">
                                <td rowspan="6" style="margin-top: 0">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:ListView runat="server" ID="lSuppliers" DataSourceID="SqlDataSource1" DataKeyNames="ShipperID" EditIndex="1" SelectedIndex="1" OnItemCommand="Unnamed_ItemCommand">
                                                    <LayoutTemplate>
                                                        <table runat="server">
                                                            <tr runat="server">
                                                                <td runat="server">
                                                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                                        <tr runat="server" style="background-color: #FFFBD6; color: #333333;">
                                                                            <th runat="server">ShipperID</th>
                                                                            <th runat="server">CompanyName</th>
                                                                            <th runat="server">City</th>
                                                                            <th runat="server">Select</th>
                                                                        </tr>
                                                                        <tr id="itemPlaceholder" runat="server">
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr runat="server">
                                                                <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;"></td>
                                                            </tr>
                                                        </table>
                                                    </LayoutTemplate>
                                                    <ItemTemplate>
                                                        <tr style="background-color: #FFFBD6; color: #333333;">
                                                            <td>
                                                                <asp:Label ID="ShipperIDLabel" runat="server" Text='<%# Eval("ShipperID") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="CityNameLabel" runat="server" Text='<%# Eval("City") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" CommandArgument='<%# Eval("ShipperID") %>'>
                                                                    Select
                                                                </asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <SelectedItemTemplate>
                                                        <tr style="background-color: #27C46B; font-weight: bold; color: #000080;">
                                                            <td>
                                                                <asp:Label ID="ShipperIDLabel" runat="server" Text='<%# Eval("ShipperID") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="CityNameLabel" runat="server" Text='<%# Eval("City") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" CommandArgument='<%# Eval("ShipperID") %>'>
                                                                    Select
                                                                </asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </SelectedItemTemplate>
                                                </asp:ListView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PathDb %>" SelectCommand="SELECT ShipperID, CompanyName, City FROM ShipperMaster" FilterExpression="CompanyName like '{0}%'">
                                                    <FilterParameters>
                                                        <asp:ControlParameter ControlID="txtExporter" Name="CompanyName" PropertyName="Text" />
                                                    </FilterParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button7" Text="Submit" runat="server"></asp:Button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <th>
                                    address
                                </th>
                                <th>
                                    City
                                </th>
                                <th>
                                    Pincode
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox TextMode="MultiLine" ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Country 
                                </th>
                                <th>
                                    State 
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    contact Person
                                </th>
                                <th>
                                    Mobile No
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="Button6" runat="server" Text="Search" class="btn btn-primary"></asp:Button>
                                    <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary"></asp:Button>
                                    <asp:Button ID="Button4" runat="server" Text="Search" class="btn btn-primary"></asp:Button>
                                    <asp:Button ID="Button5" runat="server" Text="Search" class="btn btn-primary"></asp:Button>
                                    <asp:Button ID="Button2" runat="server" Text="Search" class="btn btn-primary"></asp:Button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <cc1:ToolkitScriptManager runat="server">
        </cc1:ToolkitScriptManager>
        <!-- ModalPopupExtender -->
        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShowExporter"
            CancelControlID="btnClose" BackgroundCssClass="modalBackground">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" border="true" class="panel panel-primary" BorderStyle="Groove" BackColor="White" BorderColor="WhiteSmoke" Width="500px">
            <div style="height: 100px">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblCompany" runat="server" Text="Select Company"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" CssClass="btn btn-default btn-sm"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblBranch" runat="server" Text="Select Branch"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="100%" CssClass="btn btn-default btn-md"></asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </div>
            <asp:Button ID="btnClose" runat="server" Text="Close" class="btn btn-info" BorderStyle="Outset" />
        </asp:Panel>

        <!-- ModalPopupExtender -->



    </form>
    <script>
        $(document).ready(function () {
            //$('.datepicker').datepicker();

           $(function () {
               $('#txtExporter').autocomplete({
                   
                   source: function (request, response) {
                       $.ajax({
                           url: '<%=ResolveUrl("~/frmdemo.aspx/GetCustomers") %>',
                           data: "{ 'prefix': '" + request.term + "'}",
                           dataType: "json",
                           type: "POST",
                           contentType: "application/json; charset=utf-8",
                           success: function (data) {
                               response($.map(data.d, function (item) {
                                   return {
                                       label: item.split('-')[0],
                                       val: item.split('-')[1]
                                   }
                               }))
                           },
                           error: function (response) {
                               //alert(response.responseText);
                           },
                           failure: function (response) {
                               //alert(response.responseText);
                           }
                       });
                   },
                   select: function (e, i) {
                       $('#hfExporterId').val(i.item.val);
                   },
                   minLength: 1
               });
           });

           $(function () {
               $('#txtConsignee').autocomplete({
                   source: function (request, response) {
                       $.ajax({
                           url: '<%=ResolveUrl("~/frmdemo.aspx/GetCustomers") %>',
                           data: "{ 'prefix': '" + request.term + "'}",
                           dataType: "json",
                           type: "POST",
                           contentType: "application/json; charset=utf-8",
                           success: function (data) {
                               response($.map(data.d, function (item) {
                                   return {
                                       label: item.split('-')[0],
                                       val: item.split('-')[1]
                                   }
                               }))
                           },
                           error: function (response) {
                               //alert(response.responseText);
                           },
                           failure: function (response) {
                               //alert(response.responseText);
                           }
                       });
                   },
                   select: function (e, i) {
                       $('#hfConsigneeId').val(i.item.val);
                   },
                   minLength: 1
               });
            });


           $('#DropDownList2').hide();
           $('#lblBranch').hide();
        $('#DropDownList1').change(function () {
            var parkValue = $('#DropDownList1').val();
            $('#DropDownList2').show();
            $('#lblBranch').show();
            $.ajax({
                type: "POST",
                url: "frmdemo.aspx/ShowBuildingSelect",
                data: JSON.stringify({ parkValue: parkValue }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
                success: function (result) {
                    $('#DropDownList2').html(result.d);
                    //alert(result.d);
                }
            }
               )
           });
           $('#DropDownList2').change(function () {
               var finalValue = $('#DropDownList2').val();
               var finaltext = $('#DropDownList2').find("option:selected").text();
               //alert(finaltext.split('(')[1].split(')')[0]);
               $('#TextBox2').val(finalValue);
               $('#txtExporter').val(finaltext.split('(')[1].split(')')[0]);
               });
        });

        
        </script>
    <%--<script type="text/javascript">
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	var actions = $("table td:last-child").html();
	// Append table with add row form on add new button click
    $(".add-new").click(function(){
		$(this).attr("disabled", "disabled");
		var index = $("table tbody tr:last-child").index();
        var row = '<tr>' +
            '<td><input type="text" class="form-control" name="name" id="name"></td>' +
            '<td><input type="text" class="form-control" name="department" id="department"></td>' +
            '<td><input type="text" class="form-control" name="phone" id="phone"></td>' +
			'<td>' + actions + '</td>' +
        '</tr>';
    	$("table").append(row);		
		$("table tbody tr").eq(index + 1).find(".add, .edit").toggle();
        $('[data-toggle="tooltip"]').tooltip();
    });
	// Add row on add button click
	$(document).on("click", ".add", function(){
		var empty = false;
		var input = $(this).parents("tr").find('input[type="text"]');
        input.each(function(){
			if(!$(this).val()){
				$(this).addClass("error");
				empty = true;
			} else{
                $(this).removeClass("error");
            }
		});
		$(this).parents("tr").find(".error").first().focus();
		if(!empty){
			input.each(function(){
				$(this).parent("td").html($(this).val());
			});			
			$(this).parents("tr").find(".add, .edit").toggle();
			$(".add-new").removeAttr("disabled");
		}		
    });
	// Edit row on edit button click
	$(document).on("click", ".edit", function(){		
        $(this).parents("tr").find("td:not(:last-child)").each(function(){
			$(this).html('<input type="text" class="form-control" value="' + $(this).text() + '">');
		});		
		$(this).parents("tr").find(".add, .edit").toggle();
		$(".add-new").attr("disabled", "disabled");
    });
	// Delete row on delete button click
	$(document).on("click", ".delete", function(){
        $(this).parents("tr").remove();
		$(".add-new").removeAttr("disabled");
    });
});
</script>--%>
</body>
</html>
