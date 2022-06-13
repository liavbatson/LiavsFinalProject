﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ClassA_LearningSlidingAndMirroring : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString().Equals(""))
            Response.Redirect("~/NotAllowed.aspx");
    }
    protected void CloseFirstP(object sender, EventArgs e)
    {
        firstP.Style.Add("display", "none");
    }
    protected void OpenFirstP(object sender, EventArgs e)
    {
        firstP.Style.Add("display", "block");
    }
    protected void CloseSecondP(object sender, EventArgs e)
    {
        secondP.Style.Add("display", "none");
    }
    protected void OpenSecondP(object sender, EventArgs e)
    {
        secondP.Style.Add("display", "block");
    }
    protected void CloseThirdP(object sender, EventArgs e)
    {
        thirdP.Style.Add("display", "none");
    }
    protected void OpenThirdP(object sender, EventArgs e)
    {
        thirdP.Style.Add("display", "block");
    }
    protected void CloseFourthP(object sender, EventArgs e)
    {
        fourthP.Style.Add("display", "none");
    }
    protected void OpenFourthP(object sender, EventArgs e)
    {
        fourthP.Style.Add("display", "block");
    }
    protected void CloseFifthP(object sender, EventArgs e)
    {
        fifthP.Style.Add("display", "none");
    }
    protected void OpenFifthP(object sender, EventArgs e)
    {
        fifthP.Style.Add("display", "block");
    }
    protected void CloseSixthP(object sender, EventArgs e)
    {
        sixthP.Style.Add("display", "none");
    }
    protected void OpenSixthP(object sender, EventArgs e)
    {
        sixthP.Style.Add("display", "block");
    }
}