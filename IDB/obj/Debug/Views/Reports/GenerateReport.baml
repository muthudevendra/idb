   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	   g cMicrosoft.ReportViewer.WinForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3atSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinFormsMicrosoft.Reporting.WinForms 5   	      IDB.GenerateReport   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	   brvSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinForms     5   	     � Title$  Reports��5
   	   $	��600��6   $	��800��6&   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $��20��6/   $��	22,52,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5   
   $��Reports��6   $
��Left=�6"   $��72,5,0,0q�6=   $	��Top=�6O   $��58��6g   $	��281��6s   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6   Z� 6�   �� 5   
   -   5         ��Name$
 back��5         MetroCircleButtonStyle#���   6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5      �� 5       �� ImageSource$" /Icons/appbar.arrow.left.png��6   5      �� 5   
   $��Select Category��6   $
��Left=�6*   $��	22,81,0,0q�6E   $	��Top=�6X   �� 5   
   -   5         ��Name$ CatogoryName��5      $
��Left=�6)   $��
120,81,0,0q�6D   $	��Top=�6X   $	��178��6p   .@�5      ��  �� 
IsSelected . .��6-   Select Report category6E   �� 5      .��6   Stock Report6)   �� 5      .��6   Purchase Report6,   �� 5      .��6   Sales Report6)   �� 5      .��6   Transportations Report63   �� 5      .��6   Suppliers Report6-   �� 5      .��6   Customers Report6-   �� 5       .��6   External Resource Report65   5!      7  1System.Windows.Forms.Integration.WindowsFormsHost  5#   
   $
��Left=�6   $	��443��66   $��
10,118,0,0q�6C   $	��Top=�6W   $	��774��6o   	   Child.	 5$      /  )Microsoft.Reporting.WinForms.ReportViewer  -   5        ReportViewer��5$      5%      �� 5&   
   -   5        $ generateButton��5&      $
��Left=�6)   $��
684,79,0,0q�6D   $	��Top=�6X   $	��100��6p   $��30��6|   ���	#FFCCCCCC$��Generate��6�   
���   �$��Segoe UI Light)�6�   
 J� RenderTransformOrigin$
 0.538,-0.615&�6�   $��12(�6  ��6�   Z� 6+  �� 5'   
   -   5        $ options��5'      $y�Hidden=�6$   *   $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Select a Name��68   $
��Left=�6i   $��
474,81,0,0q�6�   $	��Top=�6�   $	��178��6�   5(      5)      