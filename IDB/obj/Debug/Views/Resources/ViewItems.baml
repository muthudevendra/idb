   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.ViewItems   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  Items��5	   	   $	��600��6   $	��800��6$   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	ItemsGrid��5      $��Center=�6&   $��Center=�6J   $
��Left=�6l      AzureDataGrid#��[  6�      AutoGenerateColumns .  $	��Top=�6�   $	��326��6�   $	��746��6�      
IsReadOnly . $��
22,152,0,0q�6     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 	Item Code��6B   
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 100 6U   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *
itemCode+6U     5      $
	 Name��6B   $	
 180 6P    6%   �� *
itemName+6P     5      $	 Category��6B   $	
 200 6T    6%   �� *
category+6T     5      $	 Description��6E   $	
 270 6Z    6%   �� *description+6Z   5      �� 5   
   $
��Left=�6   $��20��6/   $��	22,68,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5   
   $��Items��6   $
��Left=�6    $��72,5,0,0q�6;   $	��Top=�6M   $��58��6e   $	��281��6q   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6}   Z� 6�   �� 5   
   -   5         ��Name$
 back��5        MetroCircleButtonStyle#���  6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5      �� 5       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5      �� 5   
   $��Registered Item Details��6   $
��Left=�62   $��	22,81,0,0q�6M   $	��Top=�6`   $��58��6x   $	��368��6�   ���	#FF3373F2$��Segoe UI Light)�6�   $��25(�6�   ��6�   Z� 6�   5      5       