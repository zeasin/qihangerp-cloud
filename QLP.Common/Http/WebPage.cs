using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace QLP.Common.Http
{
    public class WebPage
    {
        /// <summary>
        /// 获取网页内容
        /// </summary>
        /// <param name="url"></param>
        /// <param name="encodingStr"></param>
        /// <returns></returns>
        public static string GetUrlContent(string url, string encodingStr = "UTF-8")
        {
            if (string.IsNullOrEmpty(url)) throw new ArgumentNullException("url");
            if (string.IsNullOrEmpty(encodingStr)) throw new ArgumentNullException("encodingStr");

            string content = "";
            Stream stream =null;
            StreamReader sr = null;
            try
            {
                WebRequest request = HttpWebRequest.Create(url);
                WebResponse response = request.GetResponse();

                stream = response.GetResponseStream(); //WebResponse.GetResponseStream 方法，从 Internet 资源返回数据流。 
                Encoding enc = Encoding.GetEncoding(encodingStr); // 如果是乱码就改成 utf-8 / GB2312
                sr = new StreamReader(stream, enc); 
                content = sr.ReadToEnd(); //输出(HTML代码)，ContentHtml为Multiline模式的TextBox控件
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (stream != null) stream.Close();
                if (sr != null) sr.Close();
            }
            return content;
        }


        /// <summary>
        /// 取出需要的html
        /// </summary>
        /// <param name="html"></param>
        /// <param name="regex"></param>
        /// <param name="option"></param>
        /// <returns></returns>
        public static string RegexFilter(string html,string regex,RegexOptions option)
        {
            StringBuilder result = new StringBuilder();
            Regex reg = new Regex(regex, option);

            MatchCollection mc = reg.Matches(html);

            foreach (Match m in mc)
            {
                result.Append(m.Value + "\r\n");
            }
            return result.ToString();
        }

        public static string RegexFilter(string html, string regex,string website, RegexOptions option)
        {
            StringBuilder result = new StringBuilder();
            Regex reg = new Regex(regex, option);

            MatchCollection mc = reg.Matches(html);

            foreach (Match m in mc)
            {
                result.Append(m.Value + "\r\n");
            }
            return result.ToString();
        }
    }
}
