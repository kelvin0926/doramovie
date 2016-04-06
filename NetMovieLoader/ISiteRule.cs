using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NetMovieLoader
{
    /// <summary>
    /// 抓取网页时发生
    /// </summary>
    /// <param name="status">状态文字</param>
    /// <param name="step">步长</param>
    /// <param name="maxProgress">最大长度</param>
    delegate void CatchProgressChanged(string status, double step, double maxProgress);
    class ISiteRule
    {

    }
}
