   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.ViewCustomers   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  View Customers��5	   	   $	��600��6    $	��800��6-   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ CustomerGrid��5      $��Center=�6)   $��Center=�6M   $
��Left=�6o   $��
22,100,0,0q�6�      AzureDataGrid#��[  6�      AutoGenerateColumns .  $	��Top=�6�   $	��431��6�   $	��740��6     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$		  ID��6<   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 70 6I   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ID+6I     5      $	 
First Name��6C   $	
 110 6W    6%   �� *	firstName+6W     5      $	 	Last Name��6B   $	
 120 6U    6%   �� *
lastName+6U     5      $	 Address��6A   $	
 144 6R    6%   �� *	address+6R     5      $	 E-mail��6?   $	
 120 6O    6%   �� *email+6O     5      $	 Mobile��6@   $
 90 6P    6%   �� *mobile+6P     5      $	 
Fixed Line��6E   $
 90 6Y    6%   �� *fixedNumber+6Y   5      �� 5   
   $
��Left=�6   $��20��6/   $��	22,58,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5   
   $��View All Customers��6   $
��Left=�6-   $��77,5,0,0q�6H   $	��Top=�6Z   $��58��6r   $	��294��6~   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5   
   -   5         ��Name$
 back��5        MetroCircleButtonStyle#���  6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5      �� 5       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5       5"      5#      