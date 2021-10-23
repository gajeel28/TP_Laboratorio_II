namespace Academika.Presentacion
{
    partial class FrmConfig
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblLegajoDocente = new System.Windows.Forms.Label();
            this.creaciones2 = new Academika.Creaciones();
            this.creaciones1 = new Academika.Creaciones();
            this.SuspendLayout();
            // 
            // lblLegajoDocente
            // 
            this.lblLegajoDocente.AutoSize = true;
            this.lblLegajoDocente.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLegajoDocente.ForeColor = System.Drawing.Color.Gainsboro;
            this.lblLegajoDocente.Location = new System.Drawing.Point(426, 20);
            this.lblLegajoDocente.Name = "lblLegajoDocente";
            this.lblLegajoDocente.Size = new System.Drawing.Size(44, 18);
            this.lblLegajoDocente.TabIndex = 48;
            this.lblLegajoDocente.Text = "Altas:";
            // 
            // creaciones2
            // 
            this.creaciones2.Location = new System.Drawing.Point(283, 89);
            this.creaciones2.Name = "creaciones2";
            this.creaciones2.Size = new System.Drawing.Size(200, 200);
            this.creaciones2.TabIndex = 50;
            // 
            // creaciones1
            // 
            this.creaciones1.Location = new System.Drawing.Point(29, 89);
            this.creaciones1.Name = "creaciones1";
            this.creaciones1.Size = new System.Drawing.Size(200, 200);
            this.creaciones1.TabIndex = 49;
            this.creaciones1.Load += new System.EventHandler(this.creaciones1_Load);
            // 
            // FrmConfig
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(76)))), ((int)(((byte)(117)))));
            this.ClientSize = new System.Drawing.Size(946, 616);
            this.Controls.Add(this.creaciones2);
            this.Controls.Add(this.creaciones1);
            this.Controls.Add(this.lblLegajoDocente);
            this.Name = "FrmConfig";
            this.Text = "Configuración";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblLegajoDocente;
        private Creaciones creaciones1;
        private Creaciones creaciones2;
    }
}