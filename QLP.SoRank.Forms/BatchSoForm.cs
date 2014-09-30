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
    public partial class BatchSoForm : Form
    {
        public BatchSoForm()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            button3.Enabled = false;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "";
            string file = txtFile.Text;
            if (string.IsNullOrEmpty(file))
            {
                MessageBox.Show("请选择文件");
                return;
            }
            if (File.Exists(file) == false)
            {
                MessageBox.Show("文件路径不正确");
                return;
            }
            string text = System.IO.File.ReadAllText(txtFile.Text,Encoding.Default);
            string[] list = text.Split(new string[]{"\r\n"},StringSplitOptions.RemoveEmptyEntries);
            //foreach (var item in list)
            //{
            //    MessageBox.Show(item);
            //}
            
            //if (string.IsNullOrEmpty(txtFile.Text) || string.IsNullOrEmpty(txtSEOKey.Text))
            //{
            //    MessageBox.Show("请输入内容");
            //    return;
            //}

            BackgroundWorker work = new BackgroundWorker();
            work.DoWork += work_DoWork;
            work.RunWorkerCompleted += work_RunWorkerCompleted;
            work.RunWorkerAsync(list);
            //StringBuilder result = new StringBuilder();
            //RankEntity baiduRank = BaiduPage.GetRank(txtWebDomain.Text, txtSEOKey.Text);
            //result.AppendLine("----------------Baidu.com----------------");
            //result.AppendLine(baiduRank.TotalRecord);
            //result.AppendLine("INDEX：" + baiduRank.ResultIndex);
            //result.AppendLine("关键词排名：" + baiduRank.Ranking);

            //RankEntity soRank = SoPage.GetRank(txtWebDomain.Text, txtSEOKey.Text);
            //result.AppendLine("----------------so.com----------------");
            //result.AppendLine(soRank.TotalRecord);
            //result.AppendLine("INDEX：" + soRank.ResultIndex);
            //result.AppendLine("关键词排名：" + soRank.Ranking);

            //richTextBox1.Text = result.ToString();
        }

        void work_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Result is Exception) MessageBox.Show(((Exception)e.Result).Message);
            else
            {
                StringBuilder sb = new StringBuilder();
                List<RankEntity> result = e.Result as List<RankEntity>;
                if (result != null)
                {
                    for (int i = 0; i < result.Count; i++)
                    {
                        //if (result[i].Search == "Baidu.com")
                        //{
                            sb.AppendLine("----------------"+result[i].Search+"----------------");
                            sb.AppendLine("结果："+result[i].TotalRecord.Trim());
                            sb.AppendLine("网站域名：" + result[i].WebDomain);
                            sb.AppendLine("关键词：" + result[i].SEOKey);
                            sb.AppendLine("关键词排名：" + result[i].Ranking);
                        //}
                        //else if (result[i].Search == "so.com") {
                        //    sb.AppendLine("----------------so.com----------------");
                        //    sb.AppendLine(result[i].TotalRecord);
                        //    sb.AppendLine("INDEX：" + result[i].ResultIndex);
                        //    sb.AppendLine("关键词排名：" + result[i].Ranking);
                        //}
                    }
                    richTextBox1.Text = sb.ToString();
                    button3.Enabled = true;
                }
                else
                {
                    MessageBox.Show("查询失败！");
                }
            }
        }

        void work_DoWork(object sender, DoWorkEventArgs e)
        {
            List<RankEntity> result = new List<RankEntity>();

            string[] list = e.Argument as string[];
            for (int i = 0; i < list.Length; i++)
            {
                string item = list[i];
                string[] itemArray = item.Split(',');
                string key="";
                string website ="";
                if (itemArray.Length > 0) key = itemArray[0];
                if (itemArray.Length > 1) website = itemArray[1];
                if (string.IsNullOrEmpty(key) == false && string.IsNullOrEmpty(website) == false)
                {
                    RankEntity baiduRank = BaiduPage.GetRank(website, key);
                    result.Add(baiduRank);

                    RankEntity soRank = SoPage.GetRank(website, key);
                    result.Add(soRank);
                }
            }

            e.Result = result;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            OpenFileDialog fileDialog1 = new OpenFileDialog();
            //fileDialog1.InitialDirectory = "d://";
            fileDialog1.Filter = "TXT文件 (*.txt)|*.txt|All files (*.*)|*.*";
            fileDialog1.FilterIndex = 1;
            fileDialog1.RestoreDirectory = true;
            if (fileDialog1.ShowDialog() == DialogResult.OK)
            {
                txtFile.Text = fileDialog1.FileName;
            }
            else
            {
                txtFile.Text = "";
            } 
        }

        private void menuAbout_Click(object sender, EventArgs e)
        {
            MessageBox.Show("搜索排名查询工具（支持baidu.com、so.com）-Power By 360caigou.cn");
        }

        private void menuExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (richTextBox1.Text != "")
            {
                SaveFileDialog sf = new SaveFileDialog();
                //设置文件保存类型
                sf.Filter = "txt文件|*.txt|所有文件|*.*";
                //如果用户没有输入扩展名，自动追加后缀
                sf.AddExtension = true;
                //设置标题
                sf.Title = "写文件";
                //如果用户点击了保存按钮
                if (sf.ShowDialog() == DialogResult.OK)
                {
                    //实例化一个文件流--->与写入文件相关联
                    FileStream fs = new FileStream(sf.FileName, FileMode.Create);
                    //获得字节数组
                    byte[] data = new UTF8Encoding().GetBytes(this.richTextBox1.Text.Replace("\n","\r\n"));
                    //开始写入
                    fs.Write(data, 0, data.Length);
                    //清空缓冲区、关闭流
                    fs.Flush();
                    fs.Close();
                    MessageBox.Show("保存成功");
                }
            }
        }
    }
}
