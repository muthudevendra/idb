   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.MainMenu   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Icon$#  /IDB;component/Icons/icon.png��5	   	    � Title$ IDB Main Menu��6.   $	��500��6D   $	��800��6Q   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      .+�5   
   !   MahApps.Metro.Controls.Tile  -   5           Title$ Sales��5         
TiltFactor$ 2��5      $
��Auto��5      $
��Auto��6   $��300,25,295,291q�5      ���	#FF742585.��5      �� $��75��6   $��75��6%   $��Right=�60   $	��Top=�6L   $��
100,0,0,10q�6d   ��5      �� 5      	 �� ImageSource$#	 /IDB;component/Icons/sell.png��6!   5      5        5   
   -   5        $ New Purchase��5      $��300,185,295,134q�6-   $
��Auto��6Y   $
��Auto��6g   ���	#CCDA1136.��5      �� $��75��6   $��75��6&   $��Right=�61   $	��Top=�6M   $��
100,0,0,10q�6e   ��5      �� 5       $"	 /IDB;component/Icons/buy.png��6!   5"      5#        5$   
   -   5        $ View Customers��5$      $ 2��5%      $
��Auto��5&      $
��Auto��6$   $��50,25,534,346q�5'      ���	#FF4D8DD6.��5(      �� $��80��6   $��80��6%   $��
100,0,0,20q�60   ��5)      �� 5*      $%	 /IDB;component/Icons/search.png��6!   5,      5-        5/   
   -   5        $ New Customer��5/      $ 2��50   !   $
��Auto��51   !   $
��Auto��6.   $��50,132,644,239q�52   !   ���	#FF2D6BEF.��53      �� $��50��6   $��50��6%   $��Right=�60   $	��Top=�6L   $��	50,0,0,40q�6d   ��54      �� 55      $$	 /IDB;component/Icons/admin.png��6!   57      58        5:   
   -   5        $ New Supplier��5:      $ 2��5;   !   $
��Auto��5<   !   $
��Auto��6.   $��160,132,534,239q�5=   !   ���	#FFEF742D.��5>      �� $��70��6   $��70��6%   $��Right=�60   $	��Top=�6L   $��	50,0,0,40q�6d   ��5?      �� 5@      $%	 /IDB;component/Icons/oneman.png��6!   5B      5C        5E   
   -   5        $ Stock��5E      $ 2��5F      $
��Auto��5G      $
��Auto��6$   $��644,132,50,239q�5H      ���	#FFE264E2.��5I      �� $��50��6   $��50��6%   $��	50,0,0,40q�60   ��5J      �� 5K      $&	  /IDB;component/Icons/openbox.png��6!   5M      5N        5P   
   -   5        $ New Item��5P      $ 2��5Q   !   $
��Auto��5R   !   $
��Auto��6.   $��536,25,50,346q�5S   !   ���	#FFB516D8.��5T      �� $��80��6   $��80��6%   $��Right=�60   $	��Top=�6L   $��
120,0,0,20q�6d   ��5U      �� 5V      $"	 /IDB;component/Icons/box.png��6!   5X      5Y        5[   
   -   5        $ Register Vehicle��5[      $ 2��5\      $
��Auto��5]      $
��Auto��6$   $��644,342,50,29q�5^      ���	#FFCDEA7F.��5_      �� $��50��6   $��50��6%   $��Right=�60   $	��Top=�6L   $��	50,0,0,50q�6d   ��5`      �� 5a      $&	  /IDB;component/Icons/vehicle.png��6!   5c      5d        5f   
   -	   5        $ Register Driver��5f      $ 2��5g   !   $
��Auto��5h   !   $
��Auto��6.   $��536,342,158,29q�5i   !   ���	#FFCCEF2D.��5j      �� $��50��6   $��50��6%   $��Right=�60   $	��Top=�6L   $��	50,0,0,50q�6d   ��5k      �� 5l      $&	  /IDB;component/Icons/contact.png��6!   5n      5o        5q   
   -
   5        $ Sales Centers��5q      $ 2��5r   !   $
��Auto��5s   !   $
��Auto��6.   $��536,237,50,134q�5t   !   ���	#FF0BBF55.��5u      �� $	��100��6   $	��100��6'   $��Right=�63   $	��Top=�6O   $��
100,0,0,20q�6g   ��5v      �� 5w      $%	 /IDB;component/Icons/center.png��6!   5y      5z        5|   
   -   5        $ Report Generate��5|      $ 2��5}   !   $
��Auto��5~   !   $
��Auto��6.   $��300,342,295,29q�5   !   ���	#FFEF2D2D.��5�      �� $	��100��6   $	��100��6&   $��Right=�62   $	��Top=�6N   $��
100,0,0,20q�6f   ��5�      �� 5�      $#	 /IDB;component/Icons/file.png��6!   5�      5�        5�   
   -   5        $ View Suppliers��5�      $ 2��5�      $
��Auto��5�      $
��Auto��6   $��50,237,534,134q�5�      ���	#FFBB7F56.��5�      �� $��80��6   $��80��6%   $��
100,0,0,20q�60   ��5�      �� 5�      $%	 /IDB;component/Icons/driver.png��6!   5�      5�        5�   
   -   5        $ 
View Items��5�      $ 2��5�      $
��Auto��5�      $
��Auto��6   $��536,132,158,239q�5�      ���	#FFE264E2.��5�      �� $��50��6   $��50��6%   $��	50,0,0,40q�60   ��5�      �� 5�      $"	 /IDB;component/Icons/mag.png��6!   5�      5�        5�   
   -   5        $ Transport Details��5�      $ 2��5�      $
��Auto��5�      $
��Auto��6   $��50,342,534,29q�5�      ���	#FFCDEA7F.��5�      �� $��78��6   $��80��6%   $��Right=�60   $	��Top=�6L   $��
110,0,0,20q�6d   ��5�      �� 5�      $&	  /IDB;component/Icons/deliver.ico��6!   5�      5�      5�      5�      