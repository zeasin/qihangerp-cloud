using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLP.Common
{
    public class RankEntity
    {
        /// <summary>
        /// 搜索引擎
        /// </summary>
        public string Search { get; set; }

        /// <summary>
        /// 搜索完整URL
        /// </summary>
        public string SearchURL { get; set; }

        /// <summary>
        /// 关键词
        /// </summary>
        public string SEOKey { get; set; }

        /// <summary>
        /// 网站域名
        /// </summary>
        public string WebDomain { get; set; }

        /// <summary>
        /// 排名
        /// </summary>
        public string Ranking { get; set; }

        /// <summary>
        /// 总收录
        /// </summary>
        public string TotalRecord { get; set; }

        /// <summary>
        /// 状态（未收录,成功,网络错误，未知错误）
        /// </summary>
        public string StatusMessage { get; set; }

        /// <summary>
        /// 页大小
        /// </summary>
        public int PageSize { get; set; }

        /// <summary>
        /// 页码
        /// </summary>
        public int PageIndex { get; set; }

        /// <summary>
        /// 结果Index
        /// </summary>
        public int ResultIndex { get; set; }

        /// <summary>
        /// 状态
        /// </summary>
        public bool Status { get; set; }

        /// <summary>
        /// 搜索结果完整HTML
        /// </summary>
        public string PageHtml { get; set; }
    }
}
