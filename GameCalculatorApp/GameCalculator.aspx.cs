using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameCalculatorApp
{
    public partial class GameCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            //CALCULATIONS:
            //Calculate the number of games won
            Decimal gamesWon = 
                Convert.ToDecimal(ResultRadioButtonList1.SelectedValue.Equals("1"))
                + Convert.ToDecimal(ResultRadioButtonList2.SelectedValue.Equals("1"))
                + Convert.ToDecimal(ResultRadioButtonList3.SelectedValue.Equals("1"))
                + Convert.ToDecimal(ResultRadioButtonList4.SelectedValue.Equals("1"));

            //Calculate the number of games lost
            Decimal gamesLost =
                Convert.ToDecimal(ResultRadioButtonList1.SelectedValue.Equals("0"))
                + Convert.ToDecimal(ResultRadioButtonList2.SelectedValue.Equals("0"))
                + Convert.ToDecimal(ResultRadioButtonList3.SelectedValue.Equals("0"))
                + Convert.ToDecimal(ResultRadioButtonList4.SelectedValue.Equals("0"));

            //Calculate the percentage of games won
            Decimal winPercent = gamesWon / 4;

            //Calculate the total of points scored
            Decimal scorePoint = Convert.ToDecimal(ScoreTextBox1.Text
                + ScoreTextBox2.Text + ScoreTextBox3.Text + ScoreTextBox4.Text);

            //Calculate the total of points allowed
            Decimal allowPoint = Convert.ToDecimal(AllowedTextBox1.Text
                + AllowedTextBox2.Text + AllowedTextBox3.Text + AllowedTextBox4.Text);

            //Calculate the point differential (Scored - Allowed)
            Decimal pointDifferential = allowPoint - scorePoint;

            //Calculate the total of Spectators
            Decimal specTotal = Convert.ToDecimal(SpectatorTextBox1.Text
                + SpectatorTextBox2.Text + SpectatorTextBox3.Text + SpectatorTextBox4.Text);

            //Calculate the Spectator average (Spectator total / 4 games)
            Decimal specAvg = specTotal / 4;

            //Display all calculations to Summary Panel  
            //Games Won:
            GWTextBox.Text = gamesWon.ToString("d");
            //Games Lost:
            GLTextBox.Text = gamesLost.ToString("d");
            //Win Percentage:
            PercentTextBox.Text = winPercent.ToString("d");
            //Scored Point-Total:
            ScoreTotalTextBox.Text = scorePoint.ToString("d");
            //Allowed Point-Total:
            AllowTotalTextBox.Text = allowPoint.ToString("d");
            //Point Differential:
            DifferTextBox.Text = pointDifferential.ToString("d");
            //Spectator Total:
            SpecTotalTextBox.Text = specTotal.ToString("d");
            //Spectator Average:
            SpecAVGTextBox.Text = specAvg.ToString("d");
        }
    }
}