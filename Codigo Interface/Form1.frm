VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{7F0DC2FA-DACB-4A76-B3C3-86A36AB1228A}#1.0#0"; "LEDMeter.ocx"
Begin VB.Form Form1 
   Caption         =   "RS232 Dani"
   ClientHeight    =   4275
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11115
   LinkTopic       =   "Form1"
   ScaleHeight     =   4275
   ScaleWidth      =   11115
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command7 
      Caption         =   "Command7"
      Height          =   615
      Left            =   7680
      TabIndex        =   14
      Top             =   3360
      Width           =   1575
   End
   Begin LEDMETERLib.LEDMeter LEDMeter1 
      Height          =   2055
      Left            =   10080
      TabIndex        =   13
      Top             =   2040
      Width           =   375
      _Version        =   65536
      _ExtentX        =   661
      _ExtentY        =   3625
      _StockProps     =   0
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Info"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2520
      TabIndex        =   12
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Watt"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2520
      TabIndex        =   11
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Vol"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   10
      Top             =   2040
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Amp"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   9
      Top             =   2640
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OFF"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   8
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ON"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   7
      Top             =   2040
      Width           =   975
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   60
      Left            =   9240
      Top             =   2520
   End
   Begin VB.CommandButton cmdenviar 
      Caption         =   "ENVIAR D."
      Height          =   375
      Left            =   4800
      TabIndex        =   4
      Top             =   2880
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.CommandButton cmdcon 
      Caption         =   "CONECTAR"
      Height          =   375
      Left            =   4800
      TabIndex        =   3
      Top             =   2400
      Width           =   2175
   End
   Begin VB.ComboBox cmbsel 
      Height          =   315
      ItemData        =   "Form1.frx":0000
      Left            =   4800
      List            =   "Form1.frx":0019
      TabIndex        =   2
      Text            =   "-----------------------------"
      Top             =   1920
      Width           =   2175
   End
   Begin MSCommLib.MSComm puerto 
      Left            =   7680
      Top             =   1800
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      BaudRate        =   4800
   End
   Begin VB.TextBox txtenviar 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2775
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H0000C000&
      BackStyle       =   1  'Opaque
      Height          =   1575
      Left            =   240
      Top             =   1800
      Width           =   3375
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "data out           data in"
      BeginProperty Font 
         Name            =   "OCR A Std"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   1320
      Width           =   6495
   End
   Begin VB.Label Label1 
      Caption         =   " medidor de corriente 4800,n,8,1"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   5
      Top             =   3720
      Width           =   5175
   End
   Begin VB.Label lblmostrar 
      BackColor       =   &H80000009&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3720
      TabIndex        =   1
      Top             =   240
      Width           =   6375
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00C0E0FF&
      BackStyle       =   1  'Opaque
      Height          =   1695
      Left            =   0
      Top             =   0
      Width           =   10575
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H0000C000&
      BackStyle       =   1  'Opaque
      Height          =   1575
      Left            =   4680
      Top             =   1800
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim onoff As Integer
Dim textout, textin  As String
Dim ValorLeido As Double


Private Sub cmdcon_Click()

onoff = onoff + 1

    If onoff = "1" Then
       On Error GoTo mensaje
       puerto.CommPort = Val(cmbsel.ListIndex + 1)
       puerto.PortOpen = True
       cmdenviar.Visible = True
       'Command9.Visible = True
       'Command10.Visible = True
       'Command11.Visible = True
       'Command12.Visible = True
       'Command13.Visible = True
       'Command14.Visible = True
       Timer1.Enabled = True
       cmdcon.Caption = "DESCONECTAR"
       
Else
     If onoff = "2" Then
        Timer1.Enabled = False
        cmdenviar.Visible = False
        puerto.PortOpen = False
        cmdcon.Caption = "CONECTAR"
        onoff = 0
On Error GoTo mensaje
 End If
    
 End If
GoTo smensaje

mensaje:
MsgBox ("No se encuentra el puerto")
onoff = 0
smensaje:
End Sub

Private Sub cmdenviar_Click()
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command1_Click()
txtenviar.Text = "1"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub



Private Sub Command10_Click()
txtenviar.Text = "9"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
Dim Numero As Integer
Dim NUMEROS As Integer

For Numero = 1 To 100
  For NUMEROS = 1 To 10000
  Next
Next

  txtenviar.Text = "2"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command11_Click()
txtenviar.Text = "9"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
Dim Numero As Integer
Dim NUMEROS As Integer

For Numero = 1 To 100
  For NUMEROS = 1 To 10000
  Next
Next

  txtenviar.Text = "3"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command12_Click()
txtenviar.Text = "9"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
Dim Numero As Integer
Dim NUMEROS As Integer

For Numero = 1 To 100
  For NUMEROS = 1 To 10000
  Next
Next

  txtenviar.Text = "4"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command13_Click()
txtenviar.Text = "9"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
Dim Numero As Integer
Dim NUMEROS As Integer

For Numero = 1 To 100
  For NUMEROS = 1 To 10000
  Next
Next

  txtenviar.Text = "5"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command14_Click()
txtenviar.Text = "9"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
Dim Numero As Integer
Dim NUMEROS As Integer

For Numero = 1 To 100
  For NUMEROS = 1 To 10000
  Next
Next

  txtenviar.Text = "6"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command15_Click()
txtenviar.Text = "P"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command2_Click()
txtenviar.Text = "2"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command3_Click()
txtenviar.Text = "4"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command4_Click()
txtenviar.Text = "3"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub


Private Sub Command6_Click()
txtenviar.Text = "6"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command7_Click()

'Dim Conexion As New ADODB.Connection
'Grabamos en Base de datos
Dim DBCon As ADODB.Connection
Dim Cmd As ADODB.Command
Dim Rs As ADODB.Recordset
Dim strName As String

'Bucle que repetimos cada 5 segundos
'Do While (True)

'Lectura de valor AMP
Dim variableAPM As Double
txtenviar.Text = "4"
textout = txtenviar.Text
puerto.Output = textout

'MsgBox (Val(lblmostrar.Caption))

If lblmostrar.Caption <> "" Then
    variableAMP = Asc(lblmostrar.Caption)
    On Error GoTo valor0AMP

    'Lectura del valor VOL
    Dim variableVOL As Double
    variableVOL = 1.2 'ValorFijo 12 V

    'Lectura de POT
    Dim variablePOT As Double
    variablePOT = variableVOL * variableAMP '"POT"

    MsgBox (Val(variablePOT))

    'Create a connection to the database
    Set DBCon = New ADODB.Connection
    DBCon.CursorLocation = adUseClient
    'This is a connectionstring to a local MySQL server
    DBCon.Open "Driver={MySQL ODBC 3.51 Driver};Server=194.140.168.201;Port=3306;Database=upcreative_HACK2015;User=UPC_HACK;Password=HACK_2015;Option=3;"

    'Create a new command that will execute the query
    Set Cmd = New ADODB.Command
    Cmd.ActiveConnection = DBCon
    Cmd.CommandType = adCmdText
    
    Dim FechaHora As String
    FechaHora = Year(Now) & "-" & Month(Now) & "-" & Day(Now) & " " & Hour(Now) & ":" & Minute(Now) & ":" & Second(Now)

    Cmd.CommandText = "INSERT INTO `lecturas`(`Id_Dispositivo`, `FechaHora`, `Consumo`) VALUES (1,'" & FechaHora & "'," & variablePOT & ")"

    'Executes the query-command and puts the result into Rs (recordset)
    Set Rs = Cmd.Execute

    'Close your database connection
    DBCon.Close
End If
GoTo valor0AMP

valor0AMP:
'MsgBox ("Error")

'Loop
'Fin del Bucle

'Delete all references
Set Rs = Nothing
Set Cmd = Nothing
Set DBCon = Nothing

End Sub


Private Sub Command8_Click()
txtenviar.Text = "8"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Command9_Click()
txtenviar.Text = "9"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
Dim Numero As Integer
Dim NUMEROS As Integer

For Numero = 1 To 100
  For NUMEROS = 1 To 10000
  Next
Next

  txtenviar.Text = "1"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
  
End Sub

Private Sub Command5_Click()
txtenviar.Text = "5"
textout = txtenviar.Text
puerto.Output = textout
txtenviar.Text = ""
End Sub

Private Sub Timer1_Timer()
textin = puerto.Input

If textin <> "" Then
   lblmostrar.Caption = textin
End If

'Dim Conexion As New ADODB.Connection
'Grabamos en Base de datos
Dim DBCon As ADODB.Connection
Dim Cmd As ADODB.Command
Dim Rs As ADODB.Recordset
Dim strName As String

'Bucle que repetimos cada 5 segundos
'Do While (True)

'Lectura de valor AMP
Dim variableAPM As Double
txtenviar.Text = "4"
textout = txtenviar.Text
puerto.Output = textout

'MsgBox (Val(lblmostrar.Caption))

If lblmostrar.Caption <> "" Then
    variableAMP = Asc(textin)
    On Error GoTo valor0AMP

    'Lectura del valor VOL
    Dim variableVOL As Double
    variableVOL = 1.2 'ValorFijo 12 V

    'Lectura de POT
    Dim variablePOT As Double
    variablePOT = variableVOL * variableAMP '"POT"

    'MsgBox (Val(variablePOT))

    'Create a connection to the database
    Set DBCon = New ADODB.Connection
    DBCon.CursorLocation = adUseClient
    'This is a connectionstring to a local MySQL server
    DBCon.Open "Driver={MySQL ODBC 3.51 Driver};Server=194.140.168.201;Port=3306;Database=upcreative_HACK2015;User=UPC_HACK;Password=HACK_2015;Option=3;"

    'Create a new command that will execute the query
    Set Cmd = New ADODB.Command
    Cmd.ActiveConnection = DBCon
    Cmd.CommandType = adCmdText
    
    Dim FechaHora As String
    FechaHora = Year(Now) & "-" & Month(Now) & "-" & Day(Now) & " " & Hour(Now) & ":" & Minute(Now) & ":" & Second(Now)

    Cmd.CommandText = "INSERT INTO `lecturas`(`Id_Dispositivo`, `FechaHora`, `Consumo`) VALUES (1,'" & FechaHora & "'," & variablePOT & ")"

    'Executes the query-command and puts the result into Rs (recordset)
    Set Rs = Cmd.Execute

    'Close your database connection
    DBCon.Close
End If
GoTo valor0AMP

valor0AMP:
'MsgBox ("Error")

'Loop
'Fin del Bucle

'Delete all references
Set Rs = Nothing
Set Cmd = Nothing
Set DBCon = Nothing

End Sub


