   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.TransportaionDetails   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  Transportaion Details��5	   	   $	��600��6'   $	��800��64   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $��20��6/   $��	22,52,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5   
   $��Transportation Details��6   $
��Left=�61   $��72,5,0,0q�6L   $	��Top=�6^   $��58��6v   $	��377��6�   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5   
   -   5         ��Name$
 back��5         MetroCircleButtonStyle#���   6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5      �� 5       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5      �� 5   
   $
��Left=�6   $	��474��60   $��	10,72,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� -   5         ��Name$ 	CenterTab��5   1   $��Transport Details��6   .��5      &   System.Windows.Controls.DataGrid  -   5          Name$ TransportGrid��5      $��Center=�62   $��Center=�6V   $
��Left=�6x     AzureDataGrid#��[ 6�   	   AutoGenerateColumns	 .  $	��Top=�6�   $	��362��6�   $	��746��6�   
   
IsReadOnly
 . $��0,40,0,0q�6     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Sales Center��6M      Width5  /System.Windows.Controls.DataGridLengthConverter$	 200 6c   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *salesCenter+6c     5      $
 Date��6F   $	 150 6T    6-   �� *date+6T     5      $ Driver Name��6L   $	 150 6a    6-   �� *
driverName+6a     5      $ 
Vehicle No��6K   $	 140 6_    6-   �� *	vehicleNo+6_     5      $ Income��6H   $	 106 6X    6-   �� *income+6X   5       5!      �� 5"      $��Driver Details��6   .��5#        -   5        $ 
DriverGrid��5#      $��Center=�6/   $��Center=�6S   $
��Left=�6u   #��[ 6�   	 .  $	��Top=�6�   $	��362��6�   $	��746��6�   
 . $��0,40,0,0q�6   5$        5%      $ Driver��6K   $	 100 6[    6-   �� *	firstName+6[     5&      $
 Name��6J   $	 100 6X    6-   �� *
lastName+6X     5'      $	 NIC��6E   $	 150 6R    6-   �� *nic+6R     5(      $ 
Contact No��6M   $	 140 6a    6-   �� *homeContact+6a     5)      $ 	Mobile No��6O   $	 106 6b    6-   �� *mobileContact+6b     5*      $ Sales Center��6M   $	 200 6c    6-   �� *salesCenter+6c   5,      5-      �� 5.      $��Vehicle Details��6   .��5/        -   5        $ vehicleGrid��5/      $��Center=�60   $��Center=�6T   $
��Left=�6v   #��[ 6�   	 .  $	��Top=�6�   $	��362��6�   $	��746��6�   
 . $��0,40,0,0q�6   50        51      $ 
Vehicle No��6K   $	 140 6_    6-   �� *	vehicleNo+6_     52      $
 Type��6F   $	 150 6T    6-   �� *type+6T     53      $ Reg.Date��6N   $	 106 6`    6-   �� *registerDate+6`     54      $ Capacity��6J   $	 150 6\    6-   �� *
capacity+6\     55      $ Sales Center��6M   $	 200 6c    6-   �� *salesCenter+6c   57      58      59      5:      5;      