<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="booking_confirmation.aspx.cs" Inherits="Ttourism.booking_confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                           <h4>USER BOOKING </h4>
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
                               
                              
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>TRIP DETAILS</label>
                        <div class="form-group">
                           
                            <textarea id="TextArea1" cols="20" rows="2"></textarea>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label> TRIP COST</label>

                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control"  ID="TextBox2" runat="server" placeholder="TRIP-COST"  ></asp:TextBox>
                        </div>



                        <label>TRIP-CATEGORY</label>
                        <div class="form-group">
                            <asp:TextBox    CssClass="form-control" ID="TextBox4" runat="server"  placeholder="TRIP-CATEGORY"     ></asp:TextBox>

                        </div>
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
                           <h4>BOOKING LIST</h4>
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
