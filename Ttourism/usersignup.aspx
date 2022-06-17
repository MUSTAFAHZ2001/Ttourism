<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Ttourism.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            left: -1px;
            top: -2px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                    
                   <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img  width="100px"  src="img/signup.jpg" />

                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h>USER SIGN-UP</h>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                     <div class="row">
                          <div class="col-md-6">
                          <label>FULL NAME</label>
                          <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="FULL NAME"></asp:TextBox>
                          </div>
                          </div>
                          <div class="col-md-6">
                          <label>DATE of BIRTH</label>
                          <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                          </div>
                          </div>
                  </div>

                    <div class="row">
                          <div class="col-md-6">
                          <label>CONTACT NUMBER</label>
                          <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="CONTACT NUMBER" TextMode="Number"></asp:TextBox>
                          </div>
                          </div>
                          <div class="col-md-6">
                          <label>E-MAIL ID </label>
                          <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="E-MAIL ID" TextMode="Email"></asp:TextBox>
                          </div>
                          </div>
                  </div>

                   
                    <div class="row">
                        <div class="col-md-4">
                          <label>STATE</label>
                          <div class="form-group">
                              <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                   <asp:ListItem Text="Select" Value ="Select" />
                                   <asp:ListItem Text="SINDH" Value ="SINDH" />
                                   <asp:ListItem Text="PUNJAB" Value ="PUNJAB" />
                                   <asp:ListItem Text="BALOCHISTAN" Value ="BALOCHISTAN" />
                                   <asp:ListItem Text="KPK" Value ="KPK" />
                                   <asp:ListItem Text="KASHMIR" Value ="KASHMIR" />
                                   <asp:ListItem Text="GILGIT-BALTISTAN" Value ="GILGIT-BALTISTAN" />
                              </asp:DropDownList>
                          </div></div>
                          <div class="col-md-4">
                          <label>CITY</label>
                          <div class="form-group">
                          <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="CITY" ></asp:TextBox>
                          </div>
                          </div>
                          <div class="col-md-4">
                          <label>PIN-CODE </label>
                          <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="PIN-CODE" TextMode="Number"></asp:TextBox>
                          </div>
                          </div>
                  </div>

                    <div class="row">
                          <div class="col">
                          <label>FULL ADDRESS</label>
                          <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="FULL ADDRESS" TextMode="MultiLine" Rows="2"></asp:TextBox>
                          </div>
                          </div>
                          </div>

                          <div class="row">
                           
                                  <div class="col">
                                       <center>
                                      <span class="badge badge-pill badge-info">LOGIN CREDENTIALS</span>
                                 </center> </div>
                              
                          </div>


                          <div class="row">
                          <div class="col-md-6">
                          <label>USER ID</label>
                          <div class="form-group">
                          <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="USER-ID" ></asp:TextBox>
                          </div>
                          </div>
                          <div class="col-md-6" style="height: 49px">
                          <label>PASSWORD </label>
                          <div class="form-group">
                          <asp:TextBox Class="form-control" ID="TextBox9" runat="server" placeholder="PASSWORD" TextMode="Password"></asp:TextBox>
                          </div>
                          </div>
                          </div>
                  <div class="row">
                     <div class="auto-style1">
                        <div class="form-group">
                           
                            <asp:Button input class="btn btn-info btn-block btn-lg"   ID="Button1" runat="server" Text="SIGN-UP" OnClick="Button1_Click"  />

                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
    
                    <a href="adminlogin.aspx"></a>
      
                             
                           
                    
                 
</asp:Content>