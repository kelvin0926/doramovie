namespace NetMovieLoader
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.txtUrl = new System.Windows.Forms.TextBox();
            this.btnOk = new System.Windows.Forms.Button();
            this.dgvMain = new System.Windows.Forms.DataGridView();
            this.btnImport = new System.Windows.Forms.Button();
            this.colNo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colImage = new System.Windows.Forms.DataGridViewImageColumn();
            this.colImgRelativePath = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colTitle = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colUrl = new System.Windows.Forms.DataGridViewLinkColumn();
            this.colIntro = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pbMain = new System.Windows.Forms.ProgressBar();
            this.lblStatus = new System.Windows.Forms.Label();
            this.txtType = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMain)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "网址：";
            // 
            // txtUrl
            // 
            this.txtUrl.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtUrl.Location = new System.Drawing.Point(49, 6);
            this.txtUrl.Name = "txtUrl";
            this.txtUrl.Size = new System.Drawing.Size(471, 21);
            this.txtUrl.TabIndex = 1;
            // 
            // btnOk
            // 
            this.btnOk.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnOk.Location = new System.Drawing.Point(643, 4);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(51, 23);
            this.btnOk.TabIndex = 5;
            this.btnOk.Text = "抓取";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // dgvMain
            // 
            this.dgvMain.AllowUserToAddRows = false;
            this.dgvMain.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvMain.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMain.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colNo,
            this.colImage,
            this.colImgRelativePath,
            this.colTitle,
            this.colUrl,
            this.colIntro});
            this.dgvMain.Location = new System.Drawing.Point(14, 33);
            this.dgvMain.Name = "dgvMain";
            this.dgvMain.RowTemplate.Height = 23;
            this.dgvMain.Size = new System.Drawing.Size(734, 321);
            this.dgvMain.TabIndex = 99;
            this.dgvMain.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvMain_CellContentClick);
            // 
            // btnImport
            // 
            this.btnImport.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnImport.Location = new System.Drawing.Point(697, 4);
            this.btnImport.Name = "btnImport";
            this.btnImport.Size = new System.Drawing.Size(51, 23);
            this.btnImport.TabIndex = 7;
            this.btnImport.Text = "导入";
            this.btnImport.UseVisualStyleBackColor = true;
            this.btnImport.Click += new System.EventHandler(this.btnImport_Click);
            // 
            // colNo
            // 
            this.colNo.DataPropertyName = "Id";
            this.colNo.HeaderText = "序号";
            this.colNo.Name = "colNo";
            this.colNo.Width = 40;
            // 
            // colImage
            // 
            this.colImage.DataPropertyName = "Img";
            this.colImage.HeaderText = "图片";
            this.colImage.Name = "colImage";
            this.colImage.ReadOnly = true;
            // 
            // colImgRelativePath
            // 
            this.colImgRelativePath.DataPropertyName = "ImgRelativePath";
            this.colImgRelativePath.HeaderText = "图片路径";
            this.colImgRelativePath.Name = "colImgRelativePath";
            this.colImgRelativePath.ReadOnly = true;
            this.colImgRelativePath.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.colImgRelativePath.Visible = false;
            // 
            // colTitle
            // 
            this.colTitle.DataPropertyName = "Title";
            this.colTitle.HeaderText = "标题";
            this.colTitle.Name = "colTitle";
            this.colTitle.Width = 150;
            // 
            // colUrl
            // 
            this.colUrl.DataPropertyName = "Url";
            this.colUrl.HeaderText = "网址";
            this.colUrl.Name = "colUrl";
            this.colUrl.Width = 200;
            // 
            // colIntro
            // 
            this.colIntro.DataPropertyName = "Intro";
            this.colIntro.HeaderText = "简介";
            this.colIntro.Name = "colIntro";
            this.colIntro.Width = 200;
            // 
            // pbMain
            // 
            this.pbMain.Location = new System.Drawing.Point(14, 360);
            this.pbMain.Name = "pbMain";
            this.pbMain.Size = new System.Drawing.Size(100, 12);
            this.pbMain.TabIndex = 100;
            // 
            // lblStatus
            // 
            this.lblStatus.AutoSize = true;
            this.lblStatus.Location = new System.Drawing.Point(120, 360);
            this.lblStatus.Name = "lblStatus";
            this.lblStatus.Size = new System.Drawing.Size(0, 12);
            this.lblStatus.TabIndex = 101;
            // 
            // txtType
            // 
            this.txtType.Location = new System.Drawing.Point(526, 6);
            this.txtType.Name = "txtType";
            this.txtType.Size = new System.Drawing.Size(111, 21);
            this.txtType.TabIndex = 3;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(760, 384);
            this.Controls.Add(this.txtType);
            this.Controls.Add(this.lblStatus);
            this.Controls.Add(this.pbMain);
            this.Controls.Add(this.dgvMain);
            this.Controls.Add(this.btnImport);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.txtUrl);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "电影抓取机";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvMain)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtUrl;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.DataGridView dgvMain;
        private System.Windows.Forms.Button btnImport;
        private System.Windows.Forms.DataGridViewTextBoxColumn colNo;
        private System.Windows.Forms.DataGridViewImageColumn colImage;
        private System.Windows.Forms.DataGridViewTextBoxColumn colImgRelativePath;
        private System.Windows.Forms.DataGridViewTextBoxColumn colTitle;
        private System.Windows.Forms.DataGridViewLinkColumn colUrl;
        private System.Windows.Forms.DataGridViewTextBoxColumn colIntro;
        private System.Windows.Forms.ProgressBar pbMain;
        private System.Windows.Forms.Label lblStatus;
        private System.Windows.Forms.TextBox txtType;
    }
}

