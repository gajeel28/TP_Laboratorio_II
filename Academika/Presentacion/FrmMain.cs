using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using FontAwesome.Sharp;

namespace Academika.Presentacion
{
    public partial class FrmMain : Form
    {
        //Campos
        private IconButton currentBtn;
        private Panel leftBorderBtn;
        private Form currentChildForm;

        public FrmMain()
        {
            InitializeComponent();
            leftBorderBtn = new Panel();
            leftBorderBtn.Size = new Size(7, 60);
            panelMenu.Controls.Add(leftBorderBtn);
            //Formulario
            this.Text = string.Empty;
            this.ControlBox = false;
            this.DoubleBuffered = true;
            this.MaximizedBounds = Screen.FromHandle(this.Handle).WorkingArea;
        }
        //Estructuras de color
        private struct RGBColors
        {
            public static Color color1 = Color.FromArgb(172, 126, 241);
            public static Color color2 = Color.FromArgb(249, 118, 176);
            public static Color color3 = Color.FromArgb(253, 138, 114);
            public static Color color4 = Color.FromArgb(95, 77, 221);
            public static Color color5 = Color.FromArgb(249, 88, 155);
            public static Color color6 = Color.FromArgb(24, 161, 251);
        }
        //Métodos
        private void ActivateButton(object senderBtn, Color color)
        {
            if (senderBtn != null)
            {
                DisableButton();
                //Botón
                currentBtn = (IconButton)senderBtn;
                currentBtn.BackColor = Color.FromArgb(37, 36, 81);
                currentBtn.ForeColor = color;
                currentBtn.TextAlign = ContentAlignment.MiddleCenter;
                currentBtn.IconColor = color;
                currentBtn.TextImageRelation = TextImageRelation.TextBeforeImage;
                currentBtn.ImageAlign = ContentAlignment.MiddleRight;
                //Botón borde izquierdo
                leftBorderBtn.BackColor = color;
                leftBorderBtn.Location = new Point(0, currentBtn.Location.Y);
                leftBorderBtn.Visible = true;
                leftBorderBtn.BringToFront();
                //Icono actual
                iconActual.IconChar = currentBtn.IconChar;
                iconActual.IconColor = color;

            }
        }
        private void DisableButton()
        {
            if (currentBtn != null)
            {
                currentBtn.BackColor = Color.FromArgb(31, 30, 68);
                currentBtn.ForeColor = Color.Gainsboro;
                currentBtn.TextAlign = ContentAlignment.MiddleLeft;
                currentBtn.IconColor = Color.Gainsboro;
                currentBtn.TextImageRelation = TextImageRelation.ImageBeforeText;
                currentBtn.ImageAlign = ContentAlignment.MiddleLeft;
            }
        }
        //Abrir formulario hijo
        private void OpenChild(Form childForm)
        {
            if (currentChildForm != null)
            {
                currentChildForm.Close();
            }
            currentChildForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            panelDesktop.Controls.Add(childForm);
            panelDesktop.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
            lblHome.Text = childForm.Text;
        }
        private void Main_Load(object sender, EventArgs e)
        {
            rjDropDownMenu1.IsMainMenu = true;
            rjDropDownMenu2.IsMainMenu = true;
            rjDropDownMenu1.PrimaryColor = Color.FromArgb(37, 36, 81);
            rjDropDownMenu1.MenuItemTextColor = Color.Gainsboro;
            rjDropDownMenu2.PrimaryColor = Color.FromArgb(37, 36, 81);
            rjDropDownMenu2.MenuItemTextColor = Color.Gainsboro;

        }

        private void iconButton1_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color1);
            OpenChild(new FrmAltaAlumno());
        }

        private void iconButton2_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color2);
        }

        private void iconButton3_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color2);
            rjDropDownMenu1.Show(btnModAcademico, btnModAcademico.Width, 0);
        }

        private void iconButton4_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color3);
            rjDropDownMenu2.Show(btnModExamenes, btnModExamenes.Width, 0);
            
        }

        private void iconButton5_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color5);
        }

        private void iconButton7_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color6);
            OpenChild(new FrmExamenes());
        }

        private void btnHome_Click(object sender, EventArgs e)
        {
            currentChildForm.Close();
            Reset();
        }

        private void Reset()
        {
            DisableButton();
            leftBorderBtn.Visible = false;
            iconActual.IconChar = IconChar.Home;
            iconActual.IconColor = Color.MediumPurple;
            lblHome.Text = "Principal";
        }
        //Arrastrar formulario
        [DllImport("user32.DLL", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.DLL", EntryPoint = "SendMessage")]
        private extern static void SendMesage(System.IntPtr hWnd, int wMsg, int wParam, int lParam);
        
        private void panel1_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMesage(this.Handle, 0x112, 0xf012, 0);
        }

        private void iconButton8_Click(object sender, EventArgs e)
        {
            const string message = "Desea salir de la aplicación?";
            const string caption = "Salir";
            var result = MessageBox.Show(message, caption, MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                Application.Exit();
            }
            else if (result == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnMaximize_Click(object sender, EventArgs e)
        {
            if (WindowState == FormWindowState.Normal)
                WindowState = FormWindowState.Maximized;
            else
            WindowState = FormWindowState.Normal;

        }

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Minimized;
        }

        private void btnConsults_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color4);
            OpenChild(new FrmAltaDocentes());
        }

        private void btnConsultas_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color5);
            OpenChild(new FrmConsultas());
        }

        private void btnConfiguracion_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color6);
            OpenChild(new FrmConfig());
        }

        private void rjToggleButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void panelDesktop_Paint(object sender, PaintEventArgs e)
        {

        }

        private void rjDropDownMenu2_Opening(object sender, CancelEventArgs e)
        {

        }

        private void rjDropDownMenu1_Opening(object sender, CancelEventArgs e)
        {

        }

        private void tToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenChild(new FrmAltaTecni());
        }

        private void cursosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenChild(new FrmAltaCursos());
        }

        private void materiasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenChild(new FrmAltaMaterias());
        }

        private void exámenesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenChild(new FrmExamenes());
        }

        private void actualizarCondiciónAlumnoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenChild(new FrmActualCond());
        }

        private void tipoExámenesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenChild(new FrmTipoExam());
        }

        private void turnosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenChild(new FrmTipoExam());
        }

        private void iconButton2_Click_1(object sender, EventArgs e)
        {
            OpenChild(new FrmConfig());
        }

        private void iconButton1_Click_1(object sender, EventArgs e)
        {
            FrmAcercaDe nuevo = new FrmAcercaDe();
            nuevo.Show();
        }
    }
}
