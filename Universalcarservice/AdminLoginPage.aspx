﻿<%@ Page Title="" Language="C#" MasterPageFile="~/carservice.Master" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="Universalcarservice.AdminLoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button2_onclick() {

        }

        function Button2_onclick() {

        }

// ]]>
            </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
   <div class="row">
      <div class="col-md-6 mx-auto">
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
                     <center>
                        <img width="150px" src="imgs/up(1).jpeg" />
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <center>
                        <h3>Admin Login</h3>
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
                     <label>Admin ID</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                     </div>
                     <label>Password</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <a href="HomePage.aspx"><< Back to Home</a><br><br>
      </div>
   </div>
</div>
</asp:Content>
