using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            if (PersonalInfoYes.Checked)
            {
                PersonalDetails.Visible = true;
            }
            else
            {
                PersonalDetails.Visible = false;
            }
            Summary.Visible = false;
        }
        else
        {
            Summary.Visible = false;

            InterestsList.Items.Add(new ListItem("Biking"));
            InterestsList.Items.Add(new ListItem("Scuba Diving"));
            InterestsList.Items.Add(new ListItem("Gamming"));
            InterestsList.Items.Add(new ListItem("Mountain Climbing"));
            InterestsList.Items.Add(new ListItem("Web Surfing"));
            InterestsList.Items.Add(new ListItem("Real Surfing"));
            
            AgeList.Items.Add(new ListItem("Under 21"));
            AgeList.Items.Add(new ListItem("21 To 30"));
            AgeList.Items.Add(new ListItem("31 to 50"));
            AgeList.Items.Add(new ListItem("Over 50"));
            PersonalInfoNo.Checked = true;
            PersonalDetails.Visible = false;
            loadElement(sender, e);
        }
    }
    public void loadElement(object sender, EventArgs e)
    {
        if (ProductCategoryList.SelectedValue.Equals("Bikes"))
        {
            SubCategoryList.Items.Clear();
            SubCategoryList.Items.Add(new ListItem("Brakes"));
            SubCategoryList.Items.Add(new ListItem("Handlebars"));
            SubCategoryList.Items.Add(new ListItem("Chains"));
            SubCategoryList.Items.Add(new ListItem("Cranks"));
            SubCategoryList.SelectedIndex = 0;
        }

        if (ProductCategoryList.SelectedValue.Equals("Skateboards"))
        {
            SubCategoryList.Items.Clear();
            SubCategoryList.Items.Add(new ListItem("Wheel", "Wheel"));
            SubCategoryList.Items.Add(new ListItem("Deck", "Deck"));
            SubCategoryList.Items.Add(new ListItem("Griptape", "Griptape"));
            SubCategoryList.Items.Add(new ListItem("Truck", "Truck"));
            SubCategoryList.SelectedIndex = 0;
        }

        if (ProductCategoryList.SelectedValue.Equals("Scooters"))
        {
            SubCategoryList.Items.Clear();
            SubCategoryList.Items.Add(new ListItem("Wheel"));
            SubCategoryList.Items.Add(new ListItem("Footboard"));
            SubCategoryList.Items.Add(new ListItem("Seat"));
            SubCategoryList.Items.Add(new ListItem("Grip"));
            SubCategoryList.SelectedIndex = 0;
        }

        if (ProductCategoryList.SelectedValue.Equals("Hoverboards"))
        {
            SubCategoryList.Items.Clear();
            SubCategoryList.Items.Add(new ListItem("Battery"));
            SubCategoryList.Items.Add(new ListItem("Foot Pedal"));
            SubCategoryList.Items.Add(new ListItem("Wheel"));
            SubCategoryList.SelectedIndex = 0;
        }

    }

    protected void showResult(object sender, EventArgs e)
    {
        Response.Write(SubCategoryList.SelectedIndex);
        Summary.Visible = true;
        NameSummary.Text = Name.Text;
        AdresseSummary.Text = Adresse.Text;
        EmailSummary.Text = Email.Text;
        ProductCategorySummary.Text = ProductCategoryList.SelectedValue;
        SubcategorySummary.Text = SubCategoryList.SelectedValue.ToString();
    }


}