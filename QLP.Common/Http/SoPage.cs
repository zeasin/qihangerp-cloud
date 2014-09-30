using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;

namespace QLP.Common.Http
{
    public static class SoPage
    {
        /// <summary>
        /// 总记录数Regex
        /// </summary>
        public static string TotalRecordRegex = @"(?<=<span class=""nums"" style=""margin-left:20px"">)(.*?)(?=</span>)";//<span class="nums" style="margin-left:20px">找到相关结果约1,492个</span>
        /// <summary>
        /// 搜索结果Regex
        /// </summary>
        public static string SearchResultRegex = @"(?<=<ul id=""m-result"" class=""result"">)(.*?)(?=</ul>)";//<ul id="m-result" class="result"></ul>

        public static string SearchResultListRegex = @"(?<=<li )(.*?)(?=</li>)";

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
            entity.Search = "so.com";
            /*
            string url = "http://www.so.com/s?ie=utf-8&shb=1&src=360sou_newhome&q=" + HttpUtility.UrlEncode(key) + "";
            entity.SearchURL = url;

            string html = WebPage.GetUrlContent(url);//完整HTML
            if (string.IsNullOrEmpty(html))
            {
                entity.StatusMessage = "网络错误";
            }
            else
            {
                //string countResultRegex = @"(?<=<div class=""nums"">)(.*?)(?=</div>)";
                string countResultStr = WebPage.RegexFilter(html, TotalRecordRegex, RegexOptions.IgnoreCase);
                entity.TotalRecord = "360搜索为您"+countResultStr;

                //string contentRegex =@"(?<=<div id=""content_left"">)(.*?)(?=<div class=""tt"">相关搜索</div>)";
                //string contentHtml = WebPage.RegexFilter(html, SearchResultRegex, RegexOptions.Singleline);

                string rankResult = "";

                #region 排名查询
                Regex creg = new Regex(SearchResultListRegex, RegexOptions.Singleline);
                MatchCollection matches1 = creg.Matches(contentHtml);

                for (int i = 0; i < matches1.Count; i++)
                {
                    entity.ResultIndex++;
                    Match mc = matches1[i];
                    if (mc.Value.IndexOf(webDomain) > -1)
                    {
                        rankResult = (i+1).ToString();
                        entity.Status = true;
                        break;
                    }
                }

                #endregion

                entity.Ranking = rankResult;
                entity.StatusMessage = "成功";
            }*/

            string url = "";
            int pageIndex = 1;
            int rankIndex = 0;
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
                        GetRank(html, webDomain, ref rankIndex, out rankResult);
                    }
                    else
                    {
                        pageIndex++;
                        html = GetPageHtml(key, out url, pageIndex);//完整HTML
                    }

                } while (isExistWeb == false && pageIndex < 10);
            }


            

            entity.ResultIndex = pageIndex;
            int rank = (pageIndex-1) * 10 + rankIndex;
            entity.Ranking = rank.ToString();
            entity.StatusMessage = "成功";
            entity.Status = isExistWeb;

            return entity;
            //return entity;
        }

        /// <summary>
        /// 获取整个页面HTML
        /// </summary>
        /// <param name="key"></param>
        /// <param name="pageIndex"></param>
        /// <returns></returns>
        private static string GetPageHtml(string key, out string url, int pageIndex = 0)
        {
            RankEntity entity = new RankEntity();
            //entity.WebDomain = webDomain;
            entity.SEOKey = key;
            entity.Search = "so.com";

            url = "http://www.so.com/s?ie=utf-8&shb=1&src=360sou_newhome&q=" + HttpUtility.UrlEncode(key) + "";
            if (pageIndex > 1)
            {
                url = "http://www.so.com/s?ie=utf-8&shb=1&src=360sou_newhome&q=" + HttpUtility.UrlEncode(key) + "&pn=" + pageIndex;
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
            //RankEntity entity = new RankEntity();
            bool resultStatus = false;
            rankResult = "";



            //string contentRegex =@"(?<=<div id=""content_left"">)(.*?)(?=<div class=""tt"">相关搜索</div>)";
            string contentHtml = WebPage.RegexFilter(html, SearchResultRegex, RegexOptions.Singleline);


            Regex creg = new Regex(SearchResultListRegex, RegexOptions.Singleline);
            MatchCollection matches1 = creg.Matches(contentHtml);

            for (int i = 0; i < matches1.Count; i++)
            {
                ResultIndex++;
                Match mc = matches1[i];
                if (mc.Value.IndexOf(webDomain) > -1)
                {
                    rankResult = (i + 1).ToString();
                    //entity.Status = true;
                    resultStatus = true;
                    break;
                }
            }
            return resultStatus;
        }
    }
}
