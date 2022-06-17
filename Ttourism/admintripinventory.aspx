<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admintripinventory.aspx.cs" Inherits="Ttourism.admintripinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>TRIP DETAILS</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           
                           
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                
                  <div class="row">
                     <div class="col-md-4">
                        <label>TRIP ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="TRIP ID"></asp:TextBox>
                               <asp:Button class="form-control  btn   btn-primary" ID="Button4"   runat="server" Text="GO" OnClick="Button4_Click" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>TRIP NAME</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="TRIP NAME"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label> GUIDE LANGUAGE</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="ENGLISH" Value="ENGLISH" />
                              <asp:ListItem Text="HINDI/URDU" Value="HINDI/URDU" />
                              <asp:ListItem Text="SINDHI" Value="SINDHI" />
                              <asp:ListItem Text="PASHTO" Value="PASHTO" />
                              <asp:ListItem Text="PUNJABI" Value="PUNJABI" />
                              <asp:ListItem Text="BALOCHI" Value="BALOCHI" />
                           </asp:DropDownList>
                        </div>
                        <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                              <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                           </asp:DropDownList>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>TRIP COST</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="TRIP COST" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>ORGANISER NAME</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                              <asp:ListItem Text="Mustafa" Value="Mustafa">Mustafa</asp:ListItem>
                              <asp:ListItem Text="Hassam" Value="Hassam">Hassam</asp:ListItem>
                               <asp:ListItem Text="Usman" Value="Usman">Usman</asp:ListItem>
                           </asp:DropDownList>
                        </div>
                        <label>Publish Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     
                  
                  <div class="row">
                     <div class="auto-style1">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>

             
      </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>TRIP INVENTORY LIST</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:humtourConnectionString %>" SelectCommand="SELECT * FROM [tripinventory]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trip_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="trip_id" HeaderText="ID" ReadOnly="True" SortExpression="trip_id" />
                                <asp:BoundField DataField="trip_name" HeaderText="NAME" SortExpression="trip_name" />
                                <asp:BoundField DataField="guide_lan" HeaderText="LAN" SortExpression="guide_lan" />
                                <asp:BoundField DataField="trip_cost" HeaderText="COST" SortExpression="trip_cost" />
                                <asp:BoundField DataField="organiser_name" HeaderText="ORG NAME" SortExpression="organiser_name" />
                                <asp:BoundField DataField="publisher_name" HeaderText="PUB NAME" SortExpression="publisher_name" />
                                <asp:BoundField DataField="publisher_date" HeaderText="PUB DATE" SortExpression="publisher_date" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </div>
        
</asp:Content>
