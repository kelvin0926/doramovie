using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;

namespace NetMovieLoader
{
    class MovieModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public Image Img { get; set; }
        public string ImgRelativePath { get; set; }
        public string Url { get; set; }
        public string Intro { get; set; }
    }
}
