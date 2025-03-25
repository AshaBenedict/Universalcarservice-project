<%@ Page Title="" Language="C#" MasterPageFile="~/carservice.Master" AutoEventWireup="true" CodeBehind="CarDetails.aspx.cs" Inherits="Universalcarservice.CarDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              <center>
  <div class="container">
    <div class="row">
       <div class="col-md-8 mx-auto">
          <div class="card">
             <div class="card-body">
                <div class="row">
                   <div class="col">
                      <center>
                         <img width="100px" src="imgs/car.jpeg" />
                      </center>
                   </div>
                </div>
                <div class="row">
                   <div class="col">
                      <center>
                         <h4>Car Details</h4>
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
                      <label>Car Number</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Car no" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid Car No" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      </div>
                   </div>
              <div class="col-md-6">
                 <label>Car Model</label>
                 <div class="form-group">
                     <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Car model"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Valid Car Model" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
              </div>
                   
                </div>
                <div class="row">
                   <div class="col-md-6">
                      <label>Car Year</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Car Year" TextMode="Number"></asp:TextBox>
                      </div>
                   </div>
                   <div class="col-md-6">
                      <label>Car color</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="car color" ></asp:TextBox>
                      </div>
                   </div>
                </div>
                </div>
                <div class="row">
                   <div class="col-md-6">
                      <label>License Plate Number</label>
                      <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="licence"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter valid Details" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      </div>
                   </div>
                </div>
                
                <div class="row">
                   <div class="col-8 mx-auto">
                      <center>
                         <div class="form-group">
                            <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
                         </div>
                          <div class="form-group">
                            <a href="Booking.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Book" /></a>
                          </div>
                      </center>
                   </div>
                </div>
             </div>
          </div>
      </div>
          <a href="HomePage.aspx"><< Back to Home</a><br><br>
</center>
</asp:Content>
