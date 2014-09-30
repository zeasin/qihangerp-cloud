using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;

namespace QLP.Common.Http
{
    public static class BaiduPage
    {
        /// <summary>
        /// 总记录数Regex
        /// </summary>
        public static string TotalRecordRegex = @"(?<=<div class=""nums"">)(.*?)(?=</div>)";
        /// <summary>
        /// 搜索结果Regex
        /// </summary>
        public static string SearchResultRegex = @"(?<=<div id=""content_left"">)(.*?)(?=<div class=""tt"">相关搜索</div>)";

        public static string SearchResultListRegex = @"(?<=<div class=""result c-container "")(.*?)(?=</div><span class=""c-icons-outer"">)";

        /// <summary>
        /// 查询百度排名
        /// </summary>
        /// <param name="webDomain">域名</param>
        /// <param name="key">关键词</param>
        /// <returns></returns>
        public static RankEntity GetRank(string webDomain, string key)
        {
            RankEntity entity = new RankEntity();
            entity.WebDomain = webDomain;
            entity.SEOKey = key;
            entity.Search = "Baidu.com";

            //string url = "http://www.baidu.com/s?ie=utf-8&f=8&tn=baidu&wd=" + HttpUtility.UrlEncode(key) + "";
            //entity.SearchURL = url;
            string url = "";
            int pageIndex = 0;
            bool isExistWeb = false;//是否查找到结果
            string rankResult = "";

            string html = GetPageHtml(key, out url);//完整HTML
            if (string.IsNullOrEmpty(html))
            {
                entity.StatusMessage = "网络错误";
            }
            else
            {
                //总记录数
                string countResultStr = WebPage.RegexFilter(html, TotalRecordRegex, RegexOptions.IgnoreCase);
                entity.TotalRecord = countResultStr;

                do
                {


                    if (html.IndexOf(webDomain) > -1)
                    {
                        isExistWeb = true;
                        GetRank(html, webDomain, ref pageIndex, out rankResult);
                    }
                    else
                    {
                        pageIndex += 10;
                        html = GetPageHtml(key, out url,pageIndex);//完整HTML
                    }

                } while (isExistWeb == false && pageIndex < 100);
            }
            
            

            entity.ResultIndex = pageIndex;
            entity.Ranking = rankResult;
            entity.StatusMessage = "成功";
            entity.Status = isExistWeb;

            return entity;
        }

        /// <summary>
        /// 获取整个页面HTML
        /// </summary>
        /// <param name="key"></param>
        /// <param name="pageIndex"></param>
        /// <returns></returns>
        private static string GetPageHtml(string key,out string url, int pageIndex = 0) 
        {
            RankEntity entity = new RankEntity();
            //entity.WebDomain = webDomain;
            entity.SEOKey = key;
            entity.Search = "Baidu.com";

            url = "http://www.baidu.com/s?ie=utf-8&f=8&tn=baidu&wd=" + HttpUtility.UrlEncode(key) + "";
            if (pageIndex > 0)
            {
                url = "http://www.baidu.com/s?ie=utf-8&f=8&tn=baidu&wd=" + HttpUtility.UrlEncode(key) + "&pn="+pageIndex;
            }

            entity.SearchURL = url;

            string html = WebPage.GetUrlContent(url);//完整HTML
            
            //string countResultStr = WebPage.RegexFilter(html, TotalRecordRegex, RegexOptions.IgnoreCase);
            //entity.TotalRecord = countResultStr;

            ////string contentRegex =@"(?<=<div id=""content_left"">)(.*?)(?=<div class=""tt"">相关搜索</div>)";
            //string contentHtml = WebPage.RegexFilter(html, SearchResultRegex, RegexOptions.Singleline);
            return html;
        }

        /// <summary>
        /// 查询排名
        /// </summary>
        /// <param name="html"></param>
        /// <param name="webDomain"></param>
        /// <param name="ResultIndex"></param>
        /// <param name="rankResult"></param>
        /// <returns></returns>
        private static bool GetRank(string html, string webDomain, ref int ResultIndex, out string rankResult)
        {
            RankEntity entity = new RankEntity();
            bool resultStatus = false;
            rankResult = "";

            

            //string contentRegex =@"(?<=<div id=""content_left"">)(.*?)(?=<div class=""tt"">相关搜索</div>)";
            string contentHtml = WebPage.RegexFilter(html, SearchResultRegex, RegexOptions.Singleline);


            Regex creg = new Regex(@"(?<=<div class=""result c-container "")(.*?)(?=</div><span class=""c-icons-outer"">)", RegexOptions.Singleline);
            MatchCollection matches1 = creg.Matches(contentHtml);
            foreach (Match m in matches1)
            {
                ResultIndex++;
                if (m.Value.IndexOf(webDomain) > -1)
                {
                    Regex crega = new Regex(@"(?<=id="")(.*?)(?="" srcid)", RegexOptions.IgnoreCase);
                    MatchCollection matchesa = crega.Matches(m.Value);
                    if (matchesa.Count > 0) rankResult = matchesa[0].Value;
                    resultStatus = true;
                    //richTextBox1.Text += m.Value + "[-----------------------------------------------------------------------------------------------------]\r\n";
                    break;
                }
                //richTextBox1.Text += m.Value + "[-----------------------------------------------------------------------------------------------------]\r\n";
            }
            return resultStatus;
        }
    }
}
