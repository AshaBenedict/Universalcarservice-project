<%@ Page Title="" Language="C#" MasterPageFile="~/carservice.Master" AutoEventWireup="true" CodeBehind="BookingAdmin.aspx.cs" Inherits="Universalcarservice.BookingAdmin" %>
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
                        <h4>Car Service Booking Details</h4>
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <center>
                        <img width="100px" src="imgs/car.jpeg" />
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <hr>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-3">
                     <label>User ID</label>
                     <div class="form-group">
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User ID"></asp:TextBox>
                           <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" Height="44px" Width="35px" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <label>User Name</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="User Name" ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-5">
                     <label>Booking Status</label>
                     <div class="form-group">
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="Booking Status" ReadOnly="True"></asp:TextBox>
                           <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" Height="44px" Width="35px" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" Height="44px" Width="35px" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                           <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" Height="44px" Width="35px" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                           <asp:LinkButton class="btn btn-primary mr-1" ID="LinkButton5" runat="server" Height="44px" Width="35px" OnClick="LinkButton5_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-3">
                     <label>Car Number</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Car num" ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <label>Service Type</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Service " ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-5">
                     <label>Preference</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Preference " ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-4">
                     <label>Description</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Description" ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <label>Service Date</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Service Date" ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
            </div>
         </div>
         </div>
         <a href="HomePage.aspx"><< Back to Home</a><br>
         <br>
      </div>
      <div class="col-md-7">
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
                     <center>
                        <h4>Member List</h4>
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
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=DESKTOP-TV6PLIN\SQLEXPRESS;Initial Catalog=carservice;Integrated Security=True;" OnSelecting="SqlDataSource3_Selecting" ProviderName="<%$ ConnectionStrings:carserviceConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [booking_tbl]"></asp:SqlDataSource>
                     <asp:GridView class="table table-striped table-bordered" ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                         <Columns>
                             <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
                             <asp:BoundField DataField="carnum" HeaderText="carnum" SortExpression="carnum" />
                             <asp:BoundField DataField="service_type" HeaderText="service_type" SortExpression="service_type" />
                             <asp:BoundField DataField="preference" HeaderText="preference" SortExpression="preference" />
                             <asp:BoundField DataField="discription" HeaderText="discription" SortExpression="discription" />
                             <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                             <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                         </Columns>
                      </asp:GridView>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</asp:Content>
