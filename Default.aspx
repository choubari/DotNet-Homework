<%@ Page Title="ActivityClubFormRegistration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>Activity Club Form Registration</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Name*</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Name" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Adresse</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Adresse" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="City" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Sexe</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="Sexe" runat="server" >  
                    <asp:ListItem>Male</asp:ListItem>  
                    <asp:ListItem>Female</asp:ListItem>  
                </asp:DropDownList>  
            </div>
        </div>
	    <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Age</asp:Label>
            <div class="col-md-10">    
                <asp:TextBox runat="server" ID="Age" CssClass="form-control" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="Age" Operator="DataTypeCheck" Type="Integer" ErrorMessage="Age must be numeric" style="color: #FF0000"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Zip</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Zip" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Non Valid Email Adress" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-
.]\w+)*" style="color: #FF0000"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Comment</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Comment" CssClass="form-control" TextMode="MultiLine" Rows="10"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Provide Personal Information</asp:Label>
            <div class="col-md-10">
                <asp:RadioButton ID="PersonalInfoYes" runat="server" Text="Yes" GroupName="PersonalInfo" AutoPostBack="true"/>  
                <asp:RadioButton ID="PersonalInfoNo" runat="server" Text="No" GroupName="PersonalInfo" AutoPostBack="true" />  
            </div>
        </div>
        <div class="form-group">
            <asp:Panel ID="PersonalDetails" CssClass="container alert alert-primary" runat="server">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Areas of Interest</asp:Label>
                <div class="col-md-2">
                    <asp:CheckBoxList id="InterestsList" runat="server">
                  </asp:CheckBoxList>
                </div>
                <asp:Label runat="server" CssClass="col-md-2 control-label">Age Category</asp:Label>
                <div class="col-md-2">
                    <asp:RadioButtonList id="AgeList" runat="server">
                    </asp:RadioButtonList>
                </div>
            </asp:Panel>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Product Category</asp:Label>
            <div class="col-md-2">
                  <asp:DropDownList ID="ProductCategoryList" OnTextChanged="loadElement" AutoPostBack="true" runat="server" >
                      
                    <asp:ListItem>Bikes</asp:ListItem>  
                    <asp:ListItem>Skateboards</asp:ListItem>  
                    <asp:ListItem>Scooters</asp:ListItem>  
                    <asp:ListItem>Hoverboards</asp:ListItem>  
                  </asp:DropDownList>  
            </div>
            <asp:Label runat="server" CssClass="col-md-2 control-label">SubCategory</asp:Label>
            <div class="col-md-">
                <asp:ListBox id="SubCategoryList" 
                   Rows="4"
                   Width="100px"
                   SelectionMode="Single" 
                   runat="server"></asp:ListBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                 <asp:Button runat="server" Text="Submit" CssClass="btn btn-default" />
            </div>
        </div>
        <asp:Panel ID="Summary" runat="server" >
            <asp:Label runat="server"  >Summary:</asp:Label><br />
            <asp:Label runat="server"  >Name: </asp:Label>
            <asp:Label ID="NameSummary" runat="server"  ></asp:Label><br />
            <asp:Label runat="server"  >Addresse: </asp:Label>
            <asp:Label ID="AdresseSummary" runat="server"  ></asp:Label><br />
            <asp:Label runat="server"  >Email: </asp:Label>
            <asp:Label ID="EmailSummary" runat="server"  ></asp:Label><br />
            <asp:Label runat="server"  >Category: </asp:Label>
            <asp:Label ID="ProductCategorySummary" runat="server"  ></asp:Label><br />
            <asp:Label runat="server"  >SubCategory: </asp:Label>
            <asp:Label ID="SubcategorySummary" runat="server"  ></asp:Label><br />
        </asp:Panel>
    </div>
</asp:Content>
