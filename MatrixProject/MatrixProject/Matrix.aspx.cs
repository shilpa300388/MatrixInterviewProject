using System;

namespace MatrixProject
{
    public partial class Matrix : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
                
        protected void btncreateOutput_Click(object sender, EventArgs e)
        {
            switch (ddlOutputFormat.SelectedItem.ToString().Trim())
            {
                case "Top to Bottom":
                    PrintTopToBottom();
                    break;

                default:
                    break;
            }
                  
        }

        public void PrintTopToBottom()
        {
            int height = Convert.ToInt32(txtHeight.Text);
            int width = Convert.ToInt32(txtWidth.Text);
            string output = ""; int offset = 0;
            for (int i = 1; i <= width; i++)
            {
                offset = i;
                for (int j = 1; j <= height; j++)
                {
                    output += offset + " ";
                    offset = width + offset;
                }
            }
            lblOutput.Text = output.Trim().Replace(" ",",");
        }
    }

}