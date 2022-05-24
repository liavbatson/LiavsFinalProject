using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class User_StudentProgress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString().Equals(""))
            Response.Redirect("~/NotAllowed.aspx");
        else
        {
            DataSet ds1 = DAL.GetDataSet("SELECT exId FROM dbo.Progress WHERE email = '" + Session["email"].ToString() + "' AND isCorrect = '" + true + "'");
            int numberOfCorrectAnswers = ds1.Tables[0].Rows.Count;
            DataSet ds2 = DAL.GetDataSet("SELECT Id FROM dbo.Exercises");
            int numberOfTotalQuestions = ds2.Tables[0].Rows.Count;
            Label7.Text = numberOfCorrectAnswers + " / " + numberOfTotalQuestions;
        }
    }
}