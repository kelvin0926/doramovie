using DataBase;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace NetMovieLoader
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUrl.Text.Trim()))
            {
                MessageBox.Show("Url为空！");
                return;
            }
            try
            {
                ConfigHelper.SaveConfig("url", txtUrl.Text.Trim());
                ConfigHelper.SaveConfig("class", txtType.Text.Trim());
                btnOk.Enabled = false;
                btnImport.Enabled = false;
                txtUrl.ReadOnly = true;
                txtType.ReadOnly = true;
                Cursor = Cursors.WaitCursor;


                ParameterizedThreadStart paramStart = new ParameterizedThreadStart(CatchMovie);
                Thread thCatchMovie = new Thread(paramStart);
                thCatchMovie.IsBackground = true;
                thCatchMovie.Start(txtUrl.Text.Trim());
                //CatchMovie(txtUrl.Text.Trim());
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        public void CatchMovie(object url)
        {
            _178aMovie movie178 = new _178aMovie();
            movie178.CatchProgressChanged += Movie178_CatchProgressChanged;
            var list = movie178.GetModel(url + "");
            this.Invoke(new Action(() =>
            {
                dgvMain.DataSource = list;
                btnOk.Enabled = true;
                btnImport.Enabled = true;
                txtUrl.ReadOnly = false;
                txtType.ReadOnly = false;
                Cursor = Cursors.Default;
            }));
        }

        private void Movie178_CatchProgressChanged(string status, double step, double maxProgress)
        {
            this.Invoke(new Action(() =>
            {
                lblStatus.Text = status;
                pbMain.Maximum = (int)maxProgress;
                if (step >= maxProgress) pbMain.Value = pbMain.Maximum;
                else
                    pbMain.Value += (int)step;
            }));
        }

        private void dgvMain_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvMain.Rows[e.RowIndex].Cells[e.ColumnIndex] is DataGridViewLinkCell)
            {
                DataGridViewLinkCell linkCell = dgvMain.Rows[e.RowIndex].Cells[e.ColumnIndex] as DataGridViewLinkCell;
                Process.Start(linkCell.Value + "");
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            txtUrl.Text = ConfigHelper.ReadConfig("url");
            txtType.Text = ConfigHelper.ReadConfig("class");
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtType.Text.Trim()))
            {
                MessageBox.Show("请输入类别"); return;
            }
            var list = dgvMain.DataSource as List<MovieModel>;
            if (list == null || list.Count == 0)
            {
                MessageBox.Show("没有要导入的数据"); return;
            }

            ConfigHelper.SaveConfig("url", txtUrl.Text.Trim());
            ConfigHelper.SaveConfig("class", txtType.Text.Trim());

            btnOk.Enabled = false;
            btnImport.Enabled = false;
            txtUrl.ReadOnly = true;
            txtType.ReadOnly = true;
            Cursor = Cursors.WaitCursor;

            ParameterizedThreadStart importParameterThread = new ParameterizedThreadStart(ImportMovie);
            Thread thImport = new Thread(importParameterThread);
            thImport.IsBackground = true;
            thImport.Start(new object[] { txtType.Text, list });
        }

        void ImportMovie(object param)
        {
            if (!(param is object[]) || ((object[])param).Length == 0)
            {
                btnOk.Enabled = true;
                btnImport.Enabled = true;
                txtUrl.ReadOnly = false;
                txtType.ReadOnly = false;
                Cursor = Cursors.Default;
                return;
            }
            object[] paramArray = param as object[];
            if (!(paramArray[1] is List<MovieModel>) || string.IsNullOrEmpty(paramArray[0] + ""))
            {
                this.Invoke(new Action(() =>
                {
                    lblStatus.Text = "没有要导入的数据";
                    pbMain.Maximum = 100;
                    pbMain.Value = 100;
                    btnOk.Enabled = true;
                    btnImport.Enabled = true;
                    txtUrl.ReadOnly = false;
                    txtType.ReadOnly = false;
                    Cursor = Cursors.Default;
                }));
                return;
            }



            StringBuilder sb = new StringBuilder();
            var list = paramArray[1] as List<MovieModel>;

            this.Invoke(new Action(() =>
            {
                pbMain.Value = 0;
                pbMain.Maximum = list.Count * 2;
            }));

            int index = 0;
            List<MySqlParameter> sqlParams = new List<MySqlParameter>();
            sqlParams.Add(new MySqlParameter("@class", paramArray[0] + ""));
            foreach (var item in list)
            {
                this.Invoke(new Action(() =>
                {
                    pbMain.Value++;
                    lblStatus.Text = "正在准备导入";
                }));
                sb.AppendLine(string.Format("insert into movies (title,body,laiyuan,addtime,class,downURL,enable) values(@title{0},@body{0},'178a',now(),@class,@url{0},0);", index));
                sqlParams.Add(new MySqlParameter("@title" + index, item.Title));
                sqlParams.Add(new MySqlParameter("@body" + index, item.Intro));
                sqlParams.Add(new MySqlParameter("@url" + index, item.Url));
                index++;
            }
            try
            {
                this.Invoke(new Action(() =>
                {
                    lblStatus.Text = "开始导入";

                }));
                int count = DbHelper.ExecuteNonQuery(CommandType.Text, sb.ToString(), sqlParams.ToArray());
                this.Invoke(new Action(() =>
                {
                    lblStatus.Text = "导入完成";
                    pbMain.Value = pbMain.Maximum;
                }));
                if (count > 0)
                {
                    MessageBox.Show( "导入成功！");
                }
                else
                {
                    MessageBox.Show( "导入失败！", "失败", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show( "导入失败！\r\n" + ex.Message, "失败", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            this.Invoke(new Action(() =>
            {
                lblStatus.Text = "";
                pbMain.Maximum = 0;
                pbMain.Value = 0;
                btnOk.Enabled = true;
                btnImport.Enabled = true;
                txtUrl.ReadOnly = false;
                txtType.ReadOnly = false;
                Cursor = Cursors.Default;
            }));
        }
    }
}
