using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ClassE_TopicsE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString().Equals(""))
            Response.Redirect("~/NotAllowed.aspx");
    }
    protected void RedirectToPracticeShapesClassE(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Practice.aspx?class=E&subject=Shapes");
    }
    protected void RedirectToLearningShapesClassE(object sender, EventArgs e)
    {
        Response.Redirect("~/User/ClassC/LearningShapesClassE.aspx");
    }
    protected void RedirectToPracticeHeights(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Practice.aspx?class=E&subject=Heights");
    }
    protected void RedirectToLearningHeights(object sender, EventArgs e)
    {
        Response.Redirect("~/User/ClassC/LearningHeights.aspx");
    }
    protected void RedirectToPracticeAreaAndPerimeter(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Practice.aspx?class=E&subject=AreaAndPerimeter");
    }
    protected void RedirectToLearningAreaAndPerimeter(object sender, EventArgs e)
    {
        Response.Redirect("~/User/ClassC/LearningAreaAndPerimeter.aspx");
    }
}