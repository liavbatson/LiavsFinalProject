﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;
public partial class User_ClassC_LearningTriangles : System.Web.UI.Page
{
    SoundPlayer paraA;
    SoundPlayer paraB;
    SoundPlayer paraC;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString().Equals(""))
            Response.Redirect("~/NotAllowed.aspx");
        paraA = new SoundPlayer(Server.MapPath("~/Audio/C/TrianglesParaA.wav"));
        paraB = new SoundPlayer(Server.MapPath("~/Audio/C/TrianglesParaB.wav"));
        paraC = new SoundPlayer(Server.MapPath("~/Audio/C/TrianglesParaC.wav"));
    }
    /* Play And Pause Para */
    protected void PlayParaA(object sender, EventArgs e)
    {
        paraA.Play();
    }
    protected void StopParaA(object sender, EventArgs e)
    {
        paraA.Stop();
    }
    protected void PlayParaB(object sender, EventArgs e)
    {
        paraB.Play();
    }
    protected void StopParaB(object sender, EventArgs e)
    {
        paraB.Stop();
    }
    protected void PlayParaC(object sender, EventArgs e)
    {
        paraC.Play();
    }
    protected void StopParaC(object sender, EventArgs e)
    {
        paraC.Stop();
    }
    /* Open And Close Para */
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
}