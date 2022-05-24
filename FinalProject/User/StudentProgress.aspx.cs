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
            /* DataSets and ints for total questions and total correct answers */
            DataSet correctAnswers = DAL.GetDataSet("SELECT exId FROM dbo.Progress WHERE email = '" + Session["email"].ToString() + "' AND isCorrect = '" + true + "'");
            int numberOfCorrectAnswers = correctAnswers.Tables[0].Rows.Count;
            DataSet totalQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises");
            int numberOfTotalQuestions = totalQuestions.Tables[0].Rows.Count;
            Label7.Text = numberOfTotalQuestions + " / " + numberOfCorrectAnswers;

            /* DataSets for question from every class */
            DataSet aQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'A'");
            DataSet bQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'B'");
            DataSet cQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'C'");
            DataSet dQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'D'");
            DataSet eQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'E'");
            DataSet fQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'F'");

            /* ints indicates for number of questions in specific class */
            int numberOfQuestionInClassA = aQuestions.Tables[0].Rows.Count;
            int numberOfQuestionInClassB = bQuestions.Tables[0].Rows.Count;
            int numberOfQuestionInClassC = cQuestions.Tables[0].Rows.Count;
            int numberOfQuestionInClassD = dQuestions.Tables[0].Rows.Count;
            int numberOfQuestionInClassE = eQuestions.Tables[0].Rows.Count;
            int numberOfQuestionInClassF = fQuestions.Tables[0].Rows.Count;

            /* DataSets for questions per subject */
            DataSet aGeometricShapesQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'A' AND subject = 'GeometricShapes'");
            DataSet aMeasurementsQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'A' AND subject = 'Measurements'");
            DataSet aMirroringAndSimetricQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'A' AND subject = 'MirroringAndSimetric'");
            DataSet bPolygonsAndStructuresQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'B' AND subject = 'PolygonsAndStructures'");
            DataSet bTimeMeasurementsQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'B' AND subject = 'TimeMeasurements'");
            DataSet cAnglesQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'C' AND subject = 'Angles'");
            DataSet cLinesQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'C' AND subject = 'Lines'");
            DataSet cSquaresQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'C' AND subject = 'Squares'");
            DataSet cTrianglesQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'C' AND subject = 'Triangles'");
            DataSet dAreaQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'D' AND subject = 'Area'");
            DataSet dBoxAndCubeQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'D' AND subject = 'BoxAndCube'");
            DataSet dShapesQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'D' AND subject = 'Shapes'");
            DataSet eAreaAndPerimeterQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'E' AND subject = 'AreaAndPerimeter'");
            DataSet eHeightsQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'E' AND subject = 'Heights'");
            DataSet eShapesQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'E' AND subject = 'Shapes'");
            DataSet fCirclesQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'F' AND subject = 'Circles'");
            DataSet fDecimalMeasurementsQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'F' AND subject = 'DecimalMeasurements'");
            DataSet fVolumeOfASphereQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'F' AND subject = 'VolumeOfASphere'");
            DataSet fVolumesQuestions = DAL.GetDataSet("SELECT Id FROM dbo.Exercises WHERE class = 'F' AND subject = 'Volumes'");

            /* ints for each subject */
            int aNumberOfGeometricShapesQuestions = aGeometricShapesQuestions.Tables[0].Rows.Count;
            int aNumberMeasurementsQuestions = aMeasurementsQuestions.Tables[0].Rows.Count;
            int aNumberMirroringAndSimetricQuestions = aMirroringAndSimetricQuestions.Tables[0].Rows.Count;
            int bNumberPolygonsAndStructuresQuestions = bPolygonsAndStructuresQuestions.Tables[0].Rows.Count;
            int bNumberTimeMeasurementsQuestions = bTimeMeasurementsQuestions.Tables[0].Rows.Count;
            int cNumberAnglesQuestions = cAnglesQuestions.Tables[0].Rows.Count;
            int cNumberLinesQuestions = cLinesQuestions.Tables[0].Rows.Count;
            int cNumberSquaresQuestions = cSquaresQuestions.Tables[0].Rows.Count;
            int cNumberTrianglesQuestions = cTrianglesQuestions.Tables[0].Rows.Count;
            int dNumberAreaQuestions = dAreaQuestions.Tables[0].Rows.Count;
            int dNumberBoxAndCubeQuestions = dBoxAndCubeQuestions.Tables[0].Rows.Count;
            int dNumberShapesQuestions = dShapesQuestions.Tables[0].Rows.Count;
            int eNumberAreaAndPerimeterQuestions = eAreaAndPerimeterQuestions.Tables[0].Rows.Count;
            int eNumberHeightsQuestions = eHeightsQuestions.Tables[0].Rows.Count;
            int eNumberShapesQuestions = eShapesQuestions.Tables[0].Rows.Count;
            int fNumberCirclesQuestions = fCirclesQuestions.Tables[0].Rows.Count;
            int fNumberDecimalMeasurementsQuestions = fDecimalMeasurementsQuestions.Tables[0].Rows.Count;
            int fNumberVolumeOfASphereQuestions = fVolumeOfASphereQuestions.Tables[0].Rows.Count;
            int fNumberVolumesQuestions = fVolumesQuestions.Tables[0].Rows.Count;
        }
    }
}