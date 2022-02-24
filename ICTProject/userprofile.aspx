<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ICTProject.userprofile" %>
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
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                            <span>Account Status -</span>
                            <asp:Label class="badge alert-success" ID="Label1" runat="server" Text="Active"></asp:Label>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>

                  </div>

                   <div class="row">
                     <div class="col">
                        <hr>
                     </div>

                  </div>


                   <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                            
                        </div>
                     </div>

                     <div class="col-md-6">
                         <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col-md-6">
                        <label>Contact Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                            
                        </div>
                     </div>

                     <div class="col-md-6">
                         <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                            <asp:DropDownList class ="form-control" ID="DropDownList1" runat="server">

                                <asp:ListItem Text ="Select" Value ="Select" />
                                <asp:ListItem Text ="Gauteng" Value ="Gauteng" />
                                <asp:ListItem Text ="North West" Value ="North West" />
                                <asp:ListItem Text ="Limpopo" Value ="Limpopo" />
                                <asp:ListItem Text ="KZN" Value ="KZN" />

                            </asp:DropDownList>
                            
                        </div>
                     </div>

                     <div class="col-md-4">
                         <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-4">
                         <label>Zip Code</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Zip Code" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="3"></asp:TextBox>
                            
                        </div>
                     </div>               
                  </div>

                   <div class="row">
                       <centre>
                            <div class="col">                                           
                                <span class="badge alert-success">Login Credentials</span>   
                            </div>
                       </centre>
                  </div>

                   <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                            
                        </div>
                     </div>

                     <div class="col-md-4">
                         <label>Old Password</label>
                        <div class="form-group"><p>
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                        </p></div>
                     </div>

                       <div class="col-md-4">
                         <label>New Password</label>
                        <div class="form-group"><p>
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Password" TextMode="Password" ReadOnly="False"></asp:TextBox>
                        </p></div>
                     </div>

                  </div>

                  <div class="row">
                     <div class="col">  
                         <centre>
                        <div class="form-group"><p>
                           <asp:Button class="btn btn-primary btn-success w-100 btn-lg" ID="Button1" runat="server" Text="Update" /> 
                            
                        </p></div>  
                             </centre>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>

         <div class="col-md-7">

               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100px" src="imgs/ticket.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your issued Tickets</h4>
                            
                            <asp:Label class="badge alert-success" ID="Label2" runat="server" Text="Your Ticket info"></asp:Label>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>

                  </div>

                  <div class="row">
                     <div class="col">
                         <asp:GridView class ="table table-striped table-bordered"
                          ID="GridView1" runat="server"></asp:GridView>
                     </div>

                  </div>


               </div>


         </div>
      </div>
   </div>


</asp:Content>
