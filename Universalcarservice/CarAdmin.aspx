<%@ Page Title="" Language="C#" MasterPageFile="~/carservice.Master" AutoEventWireup="true" CodeBehind="CarAdmin.aspx.cs" Inherits="Universalcarservice.CarAdmin" %>
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
                        <h4>Car Details</h4>
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
                     <label>Car Number</label>
                     <div class="form-group">
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Car NO"></asp:TextBox>
                           <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"  Height="44px" Width="35px" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <label>Car Model</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Car Model" ReadOnly="True"></asp:TextBox>
                     </div>
                  </div> 
                  <div class="col-md-3">
                     <label>Car year</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Car Year" ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
                </div>
                  <div class="row">
                  <div class="col-md-4">
                     <label>Car color</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Car Color " ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-5">
                     <label>License Plate Number</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="License Num " ReadOnly="True"></asp:TextBox>
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
                        <h4>Car Details list</h4>
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
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-TV6PLIN\SQLEXPRESS;Initial Catalog=carservice;Integrated Security=True;" ProviderName="<%$ ConnectionStrings:carserviceConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [car_tbl]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                     <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="carnum" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                         <Columns>
                             <asp:BoundField DataField="carnum" HeaderText="carnum" ReadOnly="True" SortExpression="carnum" />
                             <asp:BoundField DataField="carmodel" HeaderText="carmodel" SortExpression="carmodel" />
                             <asp:BoundField DataField="caryear" HeaderText="caryear" SortExpression="caryear" />
                             <asp:BoundField DataField="carcolour" HeaderText="carcolour" SortExpression="carcolour" />
                             <asp:BoundField DataField="license" HeaderText="license" SortExpression="license" />
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
