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
    public partial class SingleSoForm : Form
    {
        public SingleSoForm()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //string html = WebPage.GetUrlContent(url);

            //label1.Text = "";
            //string countResultRegex= @"(?<=<div class=""nums"">)(.*?)(?=</div>)";
            //string countResultStr = WebPage.RegexFilter(html, countResultRegex, RegexOptions.IgnoreCase);
            //label1.Text = countResultStr;


            //过滤出搜索结果列表
            //string contentRegex =@"(?<=<div id=""content_left"">)(.*?)(?=<div class=""tt"">相关搜索</div>)";
            //string contentHtml = WebPage.RegexFilter(html, contentRegex, RegexOptions.Singleline);

            //string regstr = "<div class=\"nums\">(.*?)</div>";
            ////Regex reg = new Regex(@"(?<=<body>)(.*?)(?=</body>)", RegexOptions.IgnoreCase);//[^(<td>))] 
            //Regex reg = new Regex(@"(?<=<div class=""nums"">)(.*?)(?=</div>)", RegexOptions.IgnoreCase);//[^(<td>))] 

            //MatchCollection mc = reg.Matches(content);

            //foreach (Match m in mc)
            //{
            //    label1.Text += m.Value + "\r\n";
            //}

            //Regex creg1 = new Regex(@"(?<=<div id=""content_left"">)(.*?)(?=<div class=""tt"">相关搜索</div>)", RegexOptions.Singleline);//[^(<td>))]

            

            //MatchCollection matches = creg1.Matches(content);
            //creg.GroupNumberFromName
            //foreach (Match m in cmc)
            //{
            //    richTextBox1.Text += m.Value + "\r\n";
            //}
            //string contentHtml = "";
            //提取匹配项
            //foreach (Match match in matches)
            //{
                //GroupCollection groups = match.Groups;
                //Response.Write(string.Format("<br/>{0} 共有 {1} 个分组：{2}<br/>", match.Value, groups.Count, strPatten));
                //contentHtml += match.Value + "\r\n"; ;
                //提取匹配项内的分组信息
                //for (int i = 0; i < groups.Count; i++)
                //{
                //        ss = 
                //        string.Format("分组 {0} 为 {1}，位置为 {2}，长度为 {3}<br/>"
                //                    , i
                //                    , groups[i].Value
                //                    , groups[i].Index
                //                    , groups[i].Length);
                //}
            //}
            //List<string> list = new List<string>();
            //Regex creg = new Regex(@"(?<=<div class=""result c-container "")(.*?)(?=</div><span class=""c-icons-outer"">)", RegexOptions.Singleline);
            //MatchCollection matches1 = creg.Matches(contentHtml);
            //foreach (Match m in matches1)
            //{
            //    if (m.Value.IndexOf(website) > -1)
            //    {
            //        Regex crega = new Regex(@"(?<=id="")(.*?)(?="" srcid)", RegexOptions.IgnoreCase);
            //        MatchCollection matchesa = crega.Matches(m.Value);
            //        if (matchesa.Count > 0) rankResult = matchesa[0].Value;
                    
            //        //richTextBox1.Text += m.Value + "[-----------------------------------------------------------------------------------------------------]\r\n";
            //        break;
            //    }
            //    //richTextBox1.Text += m.Value + "[-----------------------------------------------------------------------------------------------------]\r\n";
            //}

            //if (string.IsNullOrEmpty(rankResult))
            //    richTextBox1.Text = "无排名";
            //else
            //    richTextBox1.Text = "排名为：" + rankResult;
            //WebPage webInfo = new WebPage("www.baidu.com");

            //richTextBox1.Text =webInfo.Context;//不包含html标签的所有内容  

            //webInfo.M_html;//包含html标签的内容  
        }

        private void button1_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "";

            if (string.IsNullOrEmpty(txtWebDomain.Text) || string.IsNullOrEmpty(txtSEOKey.Text))
            {
                MessageBox.Show("请输入内容");
                return;
            }
            BackgroundWorker work = new BackgroundWorker();
            work.DoWork += work_DoWork;
            work.RunWorkerCompleted += work_RunWorkerCompleted;
            work.RunWorkerAsync();
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
                        sb.AppendLine("----------------" + result[i].Search + "----------------");
                        sb.AppendLine("结果：" + result[i].TotalRecord.Trim());
                        sb.AppendLine("网站域名：" + result[i].WebDomain);
                        sb.AppendLine("关键词：" + result[i].SEOKey);
                        sb.AppendLine("关键词排名：" + result[i].Ranking);
                        //if (result[i].Search == "Baidu.com")
                        //{
                        //    sb.AppendLine("----------------Baidu.com----------------");
                        //    sb.AppendLine(result[i].TotalRecord);
                        //    //sb.AppendLine("INDEX：" + result[i].ResultIndex);
                        //    sb.AppendLine("关键词排名：" + result[i].Ranking);
                        //}
                        //else if (result[i].Search == "so.com") {
                        //    sb.AppendLine("----------------so.com----------------");
                        //    sb.AppendLine(result[i].TotalRecord);
                        //    //sb.AppendLine("INDEX：" + result[i].ResultIndex);
                        //    sb.AppendLine("关键词排名：" + result[i].Ranking);
                        //}
                    }
                    richTextBox1.Text = sb.ToString();
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

            RankEntity baiduRank = BaiduPage.GetRank(txtWebDomain.Text, txtSEOKey.Text);
            result.Add(baiduRank);

            RankEntity soRank = SoPage.GetRank(txtWebDomain.Text, txtSEOKey.Text);
            result.Add(soRank);

            e.Result = result;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "";
        }

        private void menuAbout_Click(object sender, EventArgs e)
        {
            MessageBox.Show("搜索排名查询工具（支持baidu.com、so.com）-Power By 360caigou.cn");
        }

        private void menuExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
