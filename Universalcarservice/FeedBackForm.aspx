<%@ Page Title="" Language="C#" MasterPageFile="~/carservice.Master" AutoEventWireup="true" CodeBehind="FeedBackForm.aspx.cs" Inherits="Universalcarservice.FeedBackForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                         <h4>FeedBack</h4>
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
                          <label>Member Id</label>
                       <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID" ></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter valid Id" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                  </div>
                   <div class="col-md-6">
                      <label>Email Id</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Valid E-mail" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      </div>
                   </div>
                 </div>
                </div>
                <div class="row">
                   <div class="col-md-4">
                      <label>FeedBack Type</label>
                      <div class="form-group">
                         <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                            <asp:ListItem Text="Select" Value="select" />
                            <asp:ListItem Text="Complaint" Value="Complaint" />
                            <asp:ListItem Text="Suggestion" Value="Suggestion" />
                            <asp:ListItem Text="Query" Value="Query" />
                            <asp:ListItem Text="Compliment" Value="Compliment" />
                         </asp:DropDownList>
                      </div>
                   </div>
                </div>
                <div class="row">
                   <div class="col">
                      <label>Comments</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Comments" TextMode="MultiLine" Rows="2"></asp:TextBox>
                      </div>
                   </div>
                </div>
                
                <div class="row">
                   <div class="col-8 mx-auto">
                      <center>
                         <div class="form-group">
                            <asp:Button class="btn btn-success btn-block btn-lg" ID="btn_submit" runat="server" Text="Sumbit" OnClick="btn_submit_Click1" />
                         </div>
                      </center>
                   </div>
                </div>
             </div>
           </div>
          </div>
          </div>
        <div>
          <a href="HomePage.aspx"><< Back to Home</a><br><br>
       </div>
</asp:Content>
