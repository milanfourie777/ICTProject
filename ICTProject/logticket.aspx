<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="logticket.aspx.cs" Inherits="ICTProject.logticket" %>
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
                           <h4>Log a Support Ticket</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/ticket.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                     <div class="col-md-4">
                        <label>member ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Member ID"></asp:TextBox>
                        </div>
                       
                     </div>
                  <div class="row">
                     <div class="col-md-9">
                        <label>Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Subject" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>   
                  
                  <div class="row">
                     <div class="col-md-9">
                        <label>Subject</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Subject"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Problem</label>
                        <div class="form-group">
                           <asp:DropDownList class ="form-control" ID="DropDownList1" runat="server">

                                <asp:ListItem Text ="Select" Value ="Select" />
                                <asp:ListItem Text ="Hardware" Value ="Gauteng" />
                                <asp:ListItem Text ="Software" Value ="North West" />
                                <asp:ListItem Text ="Connection" Value ="Limpopo" />
                                <asp:ListItem Text ="Security" Value ="KZN" />
                                <asp:ListItem Text ="Other" Value ="KZN" />

                            </asp:DropDownList>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col">
                        <label>Details</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="3"></asp:TextBox>
                            
                        </div>
                     </div>     
                  
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                     
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         
      </div>
   </div>
</asp:Content>
