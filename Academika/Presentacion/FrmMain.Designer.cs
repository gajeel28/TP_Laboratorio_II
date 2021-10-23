namespace Academika.Presentacion
{
    partial class FrmMain
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmMain));
            this.panelMenu = new System.Windows.Forms.Panel();
            this.btnConfiguracion = new FontAwesome.Sharp.IconButton();
            this.btnConsultas = new FontAwesome.Sharp.IconButton();
            this.btnAltaDocentes = new FontAwesome.Sharp.IconButton();
            this.btnModExamenes = new FontAwesome.Sharp.IconButton();
            this.btnModAcademico = new FontAwesome.Sharp.IconButton();
            this.btnNuevoAlumno = new FontAwesome.Sharp.IconButton();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnHome = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnClose = new FontAwesome.Sharp.IconButton();
            this.btnMaximize = new FontAwesome.Sharp.IconButton();
            this.btnMinimize = new FontAwesome.Sharp.IconButton();
            this.lblHome = new System.Windows.Forms.Label();
            this.iconActual = new FontAwesome.Sharp.IconPictureBox();
            this.panelShadow = new System.Windows.Forms.Panel();
            this.panelDesktop = new System.Windows.Forms.Panel();
            this.iconButton1 = new FontAwesome.Sharp.IconButton();
            this.iconButton2 = new FontAwesome.Sharp.IconButton();
            this.rjDropDownMenu2 = new Academika.RJControls.RJDropDownMenu(this.components);
            this.exámenesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.turnosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tipoExámenesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.actualizarCondiciónAlumnoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rjDropDownMenu1 = new Academika.RJControls.RJDropDownMenu(this.components);
            this.tToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cursosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.materiasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panelMenu.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.btnHome)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconActual)).BeginInit();
            this.rjDropDownMenu2.SuspendLayout();
            this.rjDropDownMenu1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelMenu
            // 
            this.panelMenu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(31)))), ((int)(((byte)(30)))), ((int)(((byte)(68)))));
            this.panelMenu.Controls.Add(this.iconButton2);
            this.panelMenu.Controls.Add(this.iconButton1);
            this.panelMenu.Controls.Add(this.btnConfiguracion);
            this.panelMenu.Controls.Add(this.btnConsultas);
            this.panelMenu.Controls.Add(this.btnAltaDocentes);
            this.panelMenu.Controls.Add(this.btnModExamenes);
            this.panelMenu.Controls.Add(this.btnModAcademico);
            this.panelMenu.Controls.Add(this.btnNuevoAlumno);
            this.panelMenu.Controls.Add(this.panel2);
            this.panelMenu.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelMenu.Location = new System.Drawing.Point(0, 0);
            this.panelMenu.Name = "panelMenu";
            this.panelMenu.Size = new System.Drawing.Size(220, 721);
            this.panelMenu.TabIndex = 0;
            // 
            // btnConfiguracion
            // 
            this.btnConfiguracion.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnConfiguracion.FlatAppearance.BorderSize = 0;
            this.btnConfiguracion.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnConfiguracion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfiguracion.ForeColor = System.Drawing.Color.Gainsboro;
            this.btnConfiguracion.IconChar = FontAwesome.Sharp.IconChar.ChartBar;
            this.btnConfiguracion.IconColor = System.Drawing.Color.Gainsboro;
            this.btnConfiguracion.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnConfiguracion.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConfiguracion.Location = new System.Drawing.Point(0, 440);
            this.btnConfiguracion.Name = "btnConfiguracion";
            this.btnConfiguracion.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.btnConfiguracion.Size = new System.Drawing.Size(220, 60);
            this.btnConfiguracion.TabIndex = 11;
            this.btnConfiguracion.Text = "Reportes";
            this.btnConfiguracion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConfiguracion.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnConfiguracion.UseVisualStyleBackColor = true;
            this.btnConfiguracion.Click += new System.EventHandler(this.btnConfiguracion_Click);
            // 
            // btnConsultas
            // 
            this.btnConsultas.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnConsultas.FlatAppearance.BorderSize = 0;
            this.btnConsultas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnConsultas.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConsultas.ForeColor = System.Drawing.Color.Gainsboro;
            this.btnConsultas.IconChar = FontAwesome.Sharp.IconChar.ClipboardList;
            this.btnConsultas.IconColor = System.Drawing.Color.Gainsboro;
            this.btnConsultas.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnConsultas.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConsultas.Location = new System.Drawing.Point(0, 380);
            this.btnConsultas.Name = "btnConsultas";
            this.btnConsultas.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.btnConsultas.Size = new System.Drawing.Size(220, 60);
            this.btnConsultas.TabIndex = 10;
            this.btnConsultas.Text = "Consultas";
            this.btnConsultas.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConsultas.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnConsultas.UseVisualStyleBackColor = true;
            this.btnConsultas.Click += new System.EventHandler(this.btnConsultas_Click);
            // 
            // btnAltaDocentes
            // 
            this.btnAltaDocentes.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnAltaDocentes.FlatAppearance.BorderSize = 0;
            this.btnAltaDocentes.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAltaDocentes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAltaDocentes.ForeColor = System.Drawing.Color.Gainsboro;
            this.btnAltaDocentes.IconChar = FontAwesome.Sharp.IconChar.UserTie;
            this.btnAltaDocentes.IconColor = System.Drawing.Color.Gainsboro;
            this.btnAltaDocentes.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnAltaDocentes.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAltaDocentes.Location = new System.Drawing.Point(0, 320);
            this.btnAltaDocentes.Name = "btnAltaDocentes";
            this.btnAltaDocentes.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.btnAltaDocentes.Size = new System.Drawing.Size(220, 60);
            this.btnAltaDocentes.TabIndex = 9;
            this.btnAltaDocentes.Text = "Alta Docente";
            this.btnAltaDocentes.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAltaDocentes.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnAltaDocentes.UseVisualStyleBackColor = true;
            this.btnAltaDocentes.Click += new System.EventHandler(this.btnConsults_Click);
            // 
            // btnModExamenes
            // 
            this.btnModExamenes.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnModExamenes.FlatAppearance.BorderSize = 0;
            this.btnModExamenes.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnModExamenes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnModExamenes.ForeColor = System.Drawing.Color.Gainsboro;
            this.btnModExamenes.IconChar = FontAwesome.Sharp.IconChar.Tasks;
            this.btnModExamenes.IconColor = System.Drawing.Color.Gainsboro;
            this.btnModExamenes.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnModExamenes.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnModExamenes.Location = new System.Drawing.Point(0, 260);
            this.btnModExamenes.Name = "btnModExamenes";
            this.btnModExamenes.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.btnModExamenes.Size = new System.Drawing.Size(220, 60);
            this.btnModExamenes.TabIndex = 4;
            this.btnModExamenes.Text = "Módulo Exámenes";
            this.btnModExamenes.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnModExamenes.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnModExamenes.UseVisualStyleBackColor = true;
            this.btnModExamenes.Click += new System.EventHandler(this.iconButton4_Click);
            // 
            // btnModAcademico
            // 
            this.btnModAcademico.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnModAcademico.FlatAppearance.BorderSize = 0;
            this.btnModAcademico.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnModAcademico.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnModAcademico.ForeColor = System.Drawing.Color.Gainsboro;
            this.btnModAcademico.IconChar = FontAwesome.Sharp.IconChar.Book;
            this.btnModAcademico.IconColor = System.Drawing.Color.Gainsboro;
            this.btnModAcademico.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnModAcademico.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnModAcademico.Location = new System.Drawing.Point(0, 200);
            this.btnModAcademico.Name = "btnModAcademico";
            this.btnModAcademico.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.btnModAcademico.Size = new System.Drawing.Size(220, 60);
            this.btnModAcademico.TabIndex = 3;
            this.btnModAcademico.Text = "Módulo Académico";
            this.btnModAcademico.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnModAcademico.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnModAcademico.UseVisualStyleBackColor = true;
            this.btnModAcademico.Click += new System.EventHandler(this.iconButton3_Click);
            // 
            // btnNuevoAlumno
            // 
            this.btnNuevoAlumno.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnNuevoAlumno.FlatAppearance.BorderSize = 0;
            this.btnNuevoAlumno.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNuevoAlumno.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNuevoAlumno.ForeColor = System.Drawing.Color.Gainsboro;
            this.btnNuevoAlumno.IconChar = FontAwesome.Sharp.IconChar.UserGraduate;
            this.btnNuevoAlumno.IconColor = System.Drawing.Color.Gainsboro;
            this.btnNuevoAlumno.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnNuevoAlumno.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNuevoAlumno.Location = new System.Drawing.Point(0, 140);
            this.btnNuevoAlumno.Name = "btnNuevoAlumno";
            this.btnNuevoAlumno.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.btnNuevoAlumno.Size = new System.Drawing.Size(220, 60);
            this.btnNuevoAlumno.TabIndex = 1;
            this.btnNuevoAlumno.Text = "Nuevo Alumno";
            this.btnNuevoAlumno.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNuevoAlumno.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnNuevoAlumno.UseVisualStyleBackColor = true;
            this.btnNuevoAlumno.Click += new System.EventHandler(this.iconButton1_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.btnHome);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(220, 140);
            this.panel2.TabIndex = 0;
            // 
            // btnHome
            // 
            this.btnHome.Image = global::Academika.Properties.Resources.academika;
            this.btnHome.Location = new System.Drawing.Point(23, 5);
            this.btnHome.Name = "btnHome";
            this.btnHome.Size = new System.Drawing.Size(172, 131);
            this.btnHome.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.btnHome.TabIndex = 0;
            this.btnHome.TabStop = false;
            this.btnHome.Click += new System.EventHandler(this.btnHome_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(26)))), ((int)(((byte)(25)))), ((int)(((byte)(62)))));
            this.panel1.Controls.Add(this.btnClose);
            this.panel1.Controls.Add(this.btnMaximize);
            this.panel1.Controls.Add(this.btnMinimize);
            this.panel1.Controls.Add(this.lblHome);
            this.panel1.Controls.Add(this.iconActual);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(220, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(962, 80);
            this.panel1.TabIndex = 1;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            this.panel1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panel1_MouseDown);
            // 
            // btnClose
            // 
            this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnClose.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClose.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(26)))), ((int)(((byte)(25)))), ((int)(((byte)(62)))));
            this.btnClose.IconChar = FontAwesome.Sharp.IconChar.WindowClose;
            this.btnClose.IconColor = System.Drawing.Color.Gainsboro;
            this.btnClose.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnClose.IconSize = 20;
            this.btnClose.Location = new System.Drawing.Point(906, 20);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(41, 29);
            this.btnClose.TabIndex = 4;
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.iconButton8_Click);
            // 
            // btnMaximize
            // 
            this.btnMaximize.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnMaximize.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnMaximize.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(26)))), ((int)(((byte)(25)))), ((int)(((byte)(62)))));
            this.btnMaximize.IconChar = FontAwesome.Sharp.IconChar.WindowMaximize;
            this.btnMaximize.IconColor = System.Drawing.Color.Gainsboro;
            this.btnMaximize.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnMaximize.IconSize = 20;
            this.btnMaximize.Location = new System.Drawing.Point(880, 17);
            this.btnMaximize.Name = "btnMaximize";
            this.btnMaximize.Size = new System.Drawing.Size(34, 35);
            this.btnMaximize.TabIndex = 3;
            this.btnMaximize.UseVisualStyleBackColor = true;
            this.btnMaximize.Click += new System.EventHandler(this.btnMaximize_Click);
            // 
            // btnMinimize
            // 
            this.btnMinimize.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnMinimize.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnMinimize.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(26)))), ((int)(((byte)(25)))), ((int)(((byte)(62)))));
            this.btnMinimize.IconChar = FontAwesome.Sharp.IconChar.WindowMinimize;
            this.btnMinimize.IconColor = System.Drawing.Color.Gainsboro;
            this.btnMinimize.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnMinimize.IconSize = 20;
            this.btnMinimize.Location = new System.Drawing.Point(849, 20);
            this.btnMinimize.Name = "btnMinimize";
            this.btnMinimize.Size = new System.Drawing.Size(36, 25);
            this.btnMinimize.TabIndex = 2;
            this.btnMinimize.UseVisualStyleBackColor = true;
            this.btnMinimize.Click += new System.EventHandler(this.btnMinimize_Click);
            // 
            // lblHome
            // 
            this.lblHome.AutoSize = true;
            this.lblHome.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHome.ForeColor = System.Drawing.Color.Gainsboro;
            this.lblHome.Location = new System.Drawing.Point(90, 35);
            this.lblHome.Name = "lblHome";
            this.lblHome.Size = new System.Drawing.Size(95, 25);
            this.lblHome.TabIndex = 1;
            this.lblHome.Text = "Principal";
            // 
            // iconActual
            // 
            this.iconActual.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(26)))), ((int)(((byte)(25)))), ((int)(((byte)(62)))));
            this.iconActual.ForeColor = System.Drawing.Color.MediumSlateBlue;
            this.iconActual.IconChar = FontAwesome.Sharp.IconChar.Home;
            this.iconActual.IconColor = System.Drawing.Color.MediumSlateBlue;
            this.iconActual.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconActual.IconSize = 50;
            this.iconActual.Location = new System.Drawing.Point(34, 22);
            this.iconActual.Name = "iconActual";
            this.iconActual.Size = new System.Drawing.Size(50, 54);
            this.iconActual.TabIndex = 0;
            this.iconActual.TabStop = false;
            // 
            // panelShadow
            // 
            this.panelShadow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(26)))), ((int)(((byte)(24)))), ((int)(((byte)(58)))));
            this.panelShadow.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelShadow.Location = new System.Drawing.Point(220, 80);
            this.panelShadow.Name = "panelShadow";
            this.panelShadow.Size = new System.Drawing.Size(962, 9);
            this.panelShadow.TabIndex = 2;
            // 
            // panelDesktop
            // 
            this.panelDesktop.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(76)))), ((int)(((byte)(117)))));
            this.panelDesktop.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelDesktop.Location = new System.Drawing.Point(220, 89);
            this.panelDesktop.Name = "panelDesktop";
            this.panelDesktop.Size = new System.Drawing.Size(962, 632);
            this.panelDesktop.TabIndex = 3;
            this.panelDesktop.Paint += new System.Windows.Forms.PaintEventHandler(this.panelDesktop_Paint);
            // 
            // iconButton1
            // 
            this.iconButton1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.iconButton1.FlatAppearance.BorderSize = 0;
            this.iconButton1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.iconButton1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.iconButton1.ForeColor = System.Drawing.Color.Gainsboro;
            this.iconButton1.IconChar = FontAwesome.Sharp.IconChar.QuestionCircle;
            this.iconButton1.IconColor = System.Drawing.Color.Gainsboro;
            this.iconButton1.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconButton1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.iconButton1.Location = new System.Drawing.Point(0, 661);
            this.iconButton1.Name = "iconButton1";
            this.iconButton1.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.iconButton1.Size = new System.Drawing.Size(220, 60);
            this.iconButton1.TabIndex = 12;
            this.iconButton1.Text = "Ayuda";
            this.iconButton1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.iconButton1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.iconButton1.UseVisualStyleBackColor = true;
            this.iconButton1.Click += new System.EventHandler(this.iconButton1_Click_1);
            // 
            // iconButton2
            // 
            this.iconButton2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.iconButton2.FlatAppearance.BorderSize = 0;
            this.iconButton2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.iconButton2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.iconButton2.ForeColor = System.Drawing.Color.Gainsboro;
            this.iconButton2.IconChar = FontAwesome.Sharp.IconChar.Cogs;
            this.iconButton2.IconColor = System.Drawing.Color.Gainsboro;
            this.iconButton2.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconButton2.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.iconButton2.Location = new System.Drawing.Point(0, 601);
            this.iconButton2.Name = "iconButton2";
            this.iconButton2.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.iconButton2.Size = new System.Drawing.Size(220, 60);
            this.iconButton2.TabIndex = 13;
            this.iconButton2.Text = "Configuración";
            this.iconButton2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.iconButton2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.iconButton2.UseVisualStyleBackColor = true;
            this.iconButton2.Click += new System.EventHandler(this.iconButton2_Click_1);
            // 
            // rjDropDownMenu2
            // 
            this.rjDropDownMenu2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(31)))), ((int)(((byte)(30)))), ((int)(((byte)(68)))));
            this.rjDropDownMenu2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F);
            this.rjDropDownMenu2.IsMainMenu = false;
            this.rjDropDownMenu2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.exámenesToolStripMenuItem,
            this.turnosToolStripMenuItem,
            this.tipoExámenesToolStripMenuItem,
            this.actualizarCondiciónAlumnoToolStripMenuItem});
            this.rjDropDownMenu2.MenuItemHeight = 25;
            this.rjDropDownMenu2.MenuItemTextColor = System.Drawing.Color.Empty;
            this.rjDropDownMenu2.Name = "rjDropDownMenu2";
            this.rjDropDownMenu2.PrimaryColor = System.Drawing.Color.Empty;
            this.rjDropDownMenu2.Size = new System.Drawing.Size(294, 100);
            this.rjDropDownMenu2.Opening += new System.ComponentModel.CancelEventHandler(this.rjDropDownMenu2_Opening);
            // 
            // exámenesToolStripMenuItem
            // 
            this.exámenesToolStripMenuItem.Name = "exámenesToolStripMenuItem";
            this.exámenesToolStripMenuItem.Size = new System.Drawing.Size(293, 24);
            this.exámenesToolStripMenuItem.Text = "Exámenes";
            this.exámenesToolStripMenuItem.Click += new System.EventHandler(this.exámenesToolStripMenuItem_Click);
            // 
            // turnosToolStripMenuItem
            // 
            this.turnosToolStripMenuItem.Name = "turnosToolStripMenuItem";
            this.turnosToolStripMenuItem.Size = new System.Drawing.Size(293, 24);
            this.turnosToolStripMenuItem.Text = "Turnos Exámenes";
            this.turnosToolStripMenuItem.Click += new System.EventHandler(this.turnosToolStripMenuItem_Click);
            // 
            // tipoExámenesToolStripMenuItem
            // 
            this.tipoExámenesToolStripMenuItem.Name = "tipoExámenesToolStripMenuItem";
            this.tipoExámenesToolStripMenuItem.Size = new System.Drawing.Size(293, 24);
            this.tipoExámenesToolStripMenuItem.Text = "Tipo Exámenes";
            this.tipoExámenesToolStripMenuItem.Click += new System.EventHandler(this.tipoExámenesToolStripMenuItem_Click);
            // 
            // actualizarCondiciónAlumnoToolStripMenuItem
            // 
            this.actualizarCondiciónAlumnoToolStripMenuItem.Name = "actualizarCondiciónAlumnoToolStripMenuItem";
            this.actualizarCondiciónAlumnoToolStripMenuItem.Size = new System.Drawing.Size(293, 24);
            this.actualizarCondiciónAlumnoToolStripMenuItem.Text = "Actualizar Condición Alumno";
            this.actualizarCondiciónAlumnoToolStripMenuItem.Click += new System.EventHandler(this.actualizarCondiciónAlumnoToolStripMenuItem_Click);
            // 
            // rjDropDownMenu1
            // 
            this.rjDropDownMenu1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(31)))), ((int)(((byte)(30)))), ((int)(((byte)(68)))));
            this.rjDropDownMenu1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F);
            this.rjDropDownMenu1.IsMainMenu = false;
            this.rjDropDownMenu1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tToolStripMenuItem,
            this.cursosToolStripMenuItem,
            this.materiasToolStripMenuItem});
            this.rjDropDownMenu1.MenuItemHeight = 25;
            this.rjDropDownMenu1.MenuItemTextColor = System.Drawing.Color.Empty;
            this.rjDropDownMenu1.Name = "rjDropDownMenu1";
            this.rjDropDownMenu1.PrimaryColor = System.Drawing.Color.Empty;
            this.rjDropDownMenu1.Size = new System.Drawing.Size(176, 76);
            this.rjDropDownMenu1.Opening += new System.ComponentModel.CancelEventHandler(this.rjDropDownMenu1_Opening);
            // 
            // tToolStripMenuItem
            // 
            this.tToolStripMenuItem.Name = "tToolStripMenuItem";
            this.tToolStripMenuItem.Size = new System.Drawing.Size(175, 24);
            this.tToolStripMenuItem.Text = "Tecnicaturas";
            this.tToolStripMenuItem.Click += new System.EventHandler(this.tToolStripMenuItem_Click);
            // 
            // cursosToolStripMenuItem
            // 
            this.cursosToolStripMenuItem.Name = "cursosToolStripMenuItem";
            this.cursosToolStripMenuItem.Size = new System.Drawing.Size(175, 24);
            this.cursosToolStripMenuItem.Text = "Cursos";
            this.cursosToolStripMenuItem.Click += new System.EventHandler(this.cursosToolStripMenuItem_Click);
            // 
            // materiasToolStripMenuItem
            // 
            this.materiasToolStripMenuItem.Name = "materiasToolStripMenuItem";
            this.materiasToolStripMenuItem.Size = new System.Drawing.Size(175, 24);
            this.materiasToolStripMenuItem.Text = "Materias";
            this.materiasToolStripMenuItem.Click += new System.EventHandler(this.materiasToolStripMenuItem_Click);
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1182, 721);
            this.Controls.Add(this.panelDesktop);
            this.Controls.Add(this.panelShadow);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panelMenu);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Principal";
            this.Load += new System.EventHandler(this.Main_Load);
            this.panelMenu.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.btnHome)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconActual)).EndInit();
            this.rjDropDownMenu2.ResumeLayout(false);
            this.rjDropDownMenu1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelMenu;
        private System.Windows.Forms.Panel panel2;
        private FontAwesome.Sharp.IconButton btnNuevoAlumno;
        private FontAwesome.Sharp.IconButton btnModExamenes;
        private System.Windows.Forms.PictureBox btnHome;
        private System.Windows.Forms.Panel panel1;
        private FontAwesome.Sharp.IconPictureBox iconActual;
        private System.Windows.Forms.Label lblHome;
        private System.Windows.Forms.Panel panelShadow;
        private System.Windows.Forms.Panel panelDesktop;
        private FontAwesome.Sharp.IconButton btnMinimize;
        private FontAwesome.Sharp.IconButton btnClose;
        private FontAwesome.Sharp.IconButton btnMaximize;
        private FontAwesome.Sharp.IconButton btnModAcademico;
        private FontAwesome.Sharp.IconButton btnConfiguracion;
        private FontAwesome.Sharp.IconButton btnConsultas;
        private FontAwesome.Sharp.IconButton btnAltaDocentes;
        private RJControls.RJDropDownMenu rjDropDownMenu2;
        private System.Windows.Forms.ToolStripMenuItem exámenesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem turnosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tipoExámenesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem actualizarCondiciónAlumnoToolStripMenuItem;
        private RJControls.RJDropDownMenu rjDropDownMenu1;
        private System.Windows.Forms.ToolStripMenuItem tToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cursosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem materiasToolStripMenuItem;
        private FontAwesome.Sharp.IconButton iconButton2;
        private FontAwesome.Sharp.IconButton iconButton1;
    }
}