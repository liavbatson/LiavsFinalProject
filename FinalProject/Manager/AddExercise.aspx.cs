using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Manager_AddExercise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Send_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile != null)
        {
            if (!Exercises.IsExist(Convert.ToInt32(exId.Text)))
            {
                string imageFile = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Images/Exercises" + grade.SelectedItem.Value + "/" + subject.SelectedItem.Text + "/") + imageFile);
                Exercises.Insert(Convert.ToInt32(exId.Text), subject.SelectedItem.Text, grade.SelectedItem.Value, "~/Images/ExercisesA/GeometricShapes/" + imageFile, firstAnswer.Text, secondAnswer.Text, thirdAnswer.Text, fourthAnswer.Text,Convert.ToInt32(answer.SelectedItem.Value));
                Label5.Text = "התרגיל נוסף.";
                Label5.Visible = true;
            }
            else
            {
                Label5.Text = "במסד נתונים יש מספר תרגיל זהה, שנה את מספר התרגיל.";
                Label5.Visible = true;
            }
        }
        else
        {
            Label5.Text = "לא הועלתה תמונה.";
            Label5.Visible = true;
        }
    }
        protected void changeItems(object sender, EventArgs e)
    {
        String selectedValue = grade.SelectedItem.Value;
        switch (selectedValue)
        {
            case "A":
                subject.Items.Clear();
                subject.Items.Insert(0, new ListItem("Measurements", ""));
                subject.Items.Insert(1, new ListItem("GeometricShapes", ""));
                subject.Items.Insert(2, new ListItem("MirroringAndSimetric", ""));
                break;
            case "B":
                subject.Items.Clear();
                subject.Items.Add("מדידת זמן");
                subject.Items.Add("מצולעים וגופים");
                break;
            case "C":
                subject.Items.Clear();
                subject.Items.Add("קווים");
                subject.Items.Add("זוויות");
                subject.Items.Add("משולשים");
                subject.Items.Add("מרובעים");
                break;
            case "D":
                subject.Items.Clear();
                subject.Items.Add("צורות");
                subject.Items.Add("מדידות שטח");
                subject.Items.Add("תיבה וקוביה");
                break;
            case "E":
                subject.Items.Clear();
                subject.Items.Add("מצולעים");
                subject.Items.Add("גבהים במשולש ומקבילית");
                subject.Items.Add("חישוב שטח והיקף של מצולעים");
                break;
            case "F":
                subject.Items.Clear();
                subject.Items.Add("מדידות - מידות עשרוניות");
                subject.Items.Add("גופים הנדסיים");
                subject.Items.Add("מעגל ועיגול");
                subject.Items.Add("נפחים");
                break;
            default:
                break;
        }
    }
}