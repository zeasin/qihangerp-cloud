using QLP.Common;
using QLP.Common.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLP.SoRank.Forms
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            HomeForm form = new HomeForm();
            form.FormBorderStyle = FormBorderStyle.None; //隐藏子窗体边框（去除最小花，最大化，关闭等按钮）
            form.TopLevel =
            false; //指示子窗体非顶级窗体
            this.panel1.Controls.Add(form);//将子窗体载入panel
            form.Show();
        }

    
        private void menuAbout_Click(object sender, EventArgs e)
        {
            MessageBox.Show("搜索排名查询工具（支持baidu.com、so.com）-Power By 360caigou.cn");
        }

        private void menuExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void menuSingleSo_Click(object sender, EventArgs e)
        {
            this.panel1.Controls.Clear();
            SingleSoForm form = new SingleSoForm();
            form.FormBorderStyle = FormBorderStyle.None; //隐藏子窗体边框（去除最小花，最大化，关闭等按钮）
            form.TopLevel =
            false; //指示子窗体非顶级窗体
            this.panel1.Controls.Add(form);//将子窗体载入panel
            form.Show();
        }

        private void menuBatchSo_Click(object sender, EventArgs e)
        {
            this.panel1.Controls.Clear();
            BatchSoForm form = new BatchSoForm();
            form.FormBorderStyle = FormBorderStyle.None; //隐藏子窗体边框（去除最小花，最大化，关闭等按钮）
            form.TopLevel =
            false; //指示子窗体非顶级窗体
            this.panel1.Controls.Add(form);//将子窗体载入panel
            form.Show();
        }

        private void menuHelpBacthSo_Click(object sender, EventArgs e)
        {
            this.panel1.Controls.Clear();
            HelpBatchSoForm form = new HelpBatchSoForm();
            form.FormBorderStyle = FormBorderStyle.None; //隐藏子窗体边框（去除最小花，最大化，关闭等按钮）
            form.TopLevel =
            false; //指示子窗体非顶级窗体
            this.panel1.Controls.Add(form);//将子窗体载入panel
            form.Show();
            
        }
    }
}
