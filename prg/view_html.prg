Public OFORMPDF

LCFILENAME = "C:\Users\ana\Desktop\SUNEDU\html\lista.php"

OFORMPDF = Newobject("ShowPDF")
OFORMPDF.Show()
Return
Endproc
**
Define Class ShowPDF As Form
	AutoCenter = .T.
	Height = 475
	Width = 730
	Caption = "Visor de PDF   - EasyFees"
	ShowWindow = 2
	Name = "ShowPDF"
	ShowWindow = 1
	AlwaysOnTop = .T.
	CPDFFILENAME = "=SPACE(0)"
	Add Object OWB As OleControl With Top = 0, Left = 0, Height = Thisform.Height, Width = Thisform.Width, Anchor = 15, OleClass = "Shell.Explorer.2", Name = "oWB"
**
	Procedure Init
	Thisform.ShowPDF()
	Endproc
**
	Procedure Refresh
	Nodefault
	Endproc
**
	Procedure ShowPDF
	Thisform.OWB.Object.NAVIGATE2("About:Blank")
	LNSECONDS = Seconds()
	Do While Thisform.OWB.Object.BUSY .And. Seconds()-LNSECONDS<60
		DoEvents
	Enddo
	Thisform.OWB.Object.NAVIGATE2(LCFILENAME)
	LNSECONDS = Seconds()
	Do While Thisform.OWB.Object.BUSY .And. Seconds()-LNSECONDS<60
		DoEvents
	Enddo
	Endproc
**
Enddefine
**