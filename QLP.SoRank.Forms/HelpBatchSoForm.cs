using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLP.SoRank.Forms
{
    public partial class HelpBatchSoForm : Form
    {
        public HelpBatchSoForm()
        {
            InitializeComponent();
        }

        private void HelpBatchSoForm_Load(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("香港志远会,360caigou.cn");
            sb.AppendLine("百度SB,baidu.com");
            richTextBox1.Text = sb.ToString(); ;
        }
    }
}
