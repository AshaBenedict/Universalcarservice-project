<%@ Page Title="" Language="C#" MasterPageFile="~/carservice.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Universalcarservice.Booking" %>
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
                         <h4>Booking Details</h4>
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
                      <label>User ID</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Userid"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid ID" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      </div>
                   </div>
                   <div class="col-md-6">
                      <label>User Name</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Name Correctly" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      </div>
                   </div>
                </div>
                </div>
                <div class="row">
                   <div class="col-md-6">
                      <label>Car No</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Car No" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter valid Car No" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      </div>
                   </div>
               
                  <div class="col-md-6">
                     <label>Service Type</label>
                    <div class="form-group">
                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                            <asp:ListItem Text="Select" Value="select" />
                            <asp:ListItem Text="Oil Filter" Value="Oil Filter" />
                            <asp:ListItem Text="Brakes" Value="Brakes" />
                            <asp:ListItem Text="Transmission Fluid" Value="Transmission Fluid" />
                            <asp:ListItem Text=" Air Conditioning Coolant" Value=" Air Conditioning Coolant" />
                            <asp:ListItem Text="Changing spark plugs" Value="Changing spark plugs" />
                            <asp:ListItem Text="Cleaning" Value="Cleaning" />
                            <asp:ListItem Text="Tyre Replacement" Value="Tyre Replacement" />
                            <asp:ListItem Text="Battery testing" Value="Battery testing" />
                            <asp:ListItem Text="serpentine belt inspection" Value="serpentine belt inspection" />
                            <asp:ListItem Text="Full Service" Value="Full Service" />                      
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Service Type" ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                 </div>
                <div class="col-md-6">
                    <label>Prefrence</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="prefrence" ></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                   <div class="col">
                      <label>Description</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2" Columns="40"></asp:TextBox>
                      </div>
                   </div>
                </div>
                </div>
              <div class="col-md-6">
                <label>Service Date</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  placeholder="Date" ></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" OnDayRender="RenderDay" OnSelectionChanged="Calendar1_SelectionChanged1"></asp:Calendar>                                  
                 </div>
               </div>             
                <div class="row">
                   <div class="col-8 mx-auto">
                      <center>
                         <div class="form-group">                          
                            <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Book" OnClick="Button1_Click" />
                         </div>
                      </center>
                   </div>
                </div>
             
          </div>
      </div>
    </div>
   </div>
          <a href="HomePage.aspx"><< Back to Home</a><br><br>
</center>
</asp:Content>
