   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.ViewSuppliers   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  View Suppliers��5	   	   $	��600��6    $	��800��6-   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ SupplierGrid��5      $��Center=�6)   $��Center=�6M   $
��Left=�6o   $��
22,100,0,0q�6�      AzureDataGrid#��[  6�      AutoGenerateColumns .  $	��Top=�6�   $	��437��6�   $	��746��6     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$		  ID��6<   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 70 6I   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ID+6I     5      $
	 Name��6>   $	
 150 6L    6%   �� *name+6L     5      $	 Address��6A   $	
 200 6R    6%   �� *	address+6R     5      $	 Company Name��6E   $	
 125 6[    6%   �� *companyName+6[     5      $	 Mobile��6@   $	
 100 6P    6%   �� *mobile+6P     5      $
	 Home��6E   $	
 100 6S    6%   �� *homeContact+6S   5      �� 5   
   $
��Left=�6   $��20��6/   $��	22,58,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5   
   $��View All Suppliers��6   $
��Left=�6-   $��77,5,0,0q�6H   $	��Top=�6Z   $��58��6r   $	��294��6~   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5   
   -   5         ��Name$
 back��5        MetroCircleButtonStyle#���  6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5      �� 5       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5      5       5!      