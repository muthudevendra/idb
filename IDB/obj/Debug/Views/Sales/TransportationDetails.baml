   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.TransportationDetails   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  Transportation Details��5	   	   $	��600��6(   $	��800��65   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $	��474��60   $��	10,72,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� -   5         ��Name$ transportTab��5      .��5      � 
�������.+�5      �� $��Customer Name��6   $
��Left=�64   $��	24,26,0,0q�6O   $	��Top=�6b   �� 5      $��Driver Name��6   $
��Left=�62   $��
418,79,0,0q�6M   $	��Top=�6a   �� 5      -   5         ��Name$ CustomerName��5      *   $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Select customer��6�   $
��Left=�6�   $��
144,26,0,0q�6�   $	��Top=�6�   $	��215��6�    �� SelectedValue 65   �� *customerName+	 �� UpdateSourceTrigger$	 PropertyChanged=�6�   �� 5      -   5        $ 
DriverName��5      $ Select Driver��6t   $
��Left=�6�   $��23��6�   $��
520,79,0,0q�6�   $	��Top=�6�   $	��215��6�   ���	#FF3F3F46
 �� Text
 63   �� *
driverName+$	 PropertyChanged=�6  �� 5      -   5         ��Name$ Income��5      {�.     ClearTextButton . $ Income in Rs.��6�   $
��Left=�6�   $��23��6�   $��520,278,0,0q�6   �� TextWrapping$
 Wrap=�6  $	��Top=�6,  $	��215��6D  ���	#FF3F3F46��6@   �� *income+$	 PropertyChanged=�6P  (  "System.Windows.Controls.DatePicker  5      -   5          Name$ RequestDate��5   !   $ Transport Requset Date��6q   $
��Left=�6�   $��23��6�   $��144,131,0,0q�6�   $	��Top=�6�   $	��215��6�   ���	#FF3F3F46   Text 66   �� *date+$	 PropertyChanged=�6  �� 5      -   5        $ ArrivalTime��5       . $ Arrival Time (eg: 1)��6�   $
��Left=�6�   $��23��6�   $��520,131,0,0q�6  $
 Wrap=�6  $	��Top=�6+  $	��215��6C  ���	#FF3F3F46��63   �� *arrivalTime+$	 PropertyChanged=�6O  �� 5      -   5        $ 	VehicleNo��5      $ Select Vehicle��6r   $
��Left=�6�   $��23��6�   $��
144,79,0,0q�6�   $	��Top=�6�   $	��215��6�   ���	#FF3F3F46
 62   �� *	vehicleNo+$	 PropertyChanged=�6  �� 5      -   5        $ 
Desination��5       . $! Destination in Km (eg:12km)��6�   $
��Left=�6�   $��23��6�   $��144,188,0,0q�6  $
 Wrap=�6  $	��Top=�61  $	��215��6I  ���	#FF3F3F46��62   �� *destination+$	 PropertyChanged=�6U  �� 5      $��Arrival Time��6   $
��Left=�63   $��418,131,0,0q�6N   $	��Top=�6c    J� RenderTransformOrigin$ 0.494,-0.077&�6{   �� 5      $��Destination��6   $
��Left=�62   $��
24,188,0,0q�6M   $	��Top=�6a   $ 0.494,-0.077&�6y   �� 5      -	   5        $ Distance��5       . $ Distance in Km (eg: 10)��6�   $
��Left=�6�   $��23��6�   $��520,188,0,0q�6�   $
 Wrap=�6  $	��Top=�6(  $	��215��6@  ���	#FF3F3F46��60   �� *
distance+$	 PropertyChanged=�6c  �� 5      $
��Date��6   $
��Left=�6+   $��
24,131,0,0q�6F   $	��Top=�6Z   $ 0.494,-0.077&�6r   �� 5       -
   5         ��Name$ 
saveButton��5       $
��Left=�61   $��418,375,0,0q�6L   $	��Top=�6a   $	��122��6y   $��30��6�   ���	#FFCCCCCC$��Requset Confirm��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6  $��12(�6-  ��6�   Z� 6;  �� 5!      -   5        $ clearButton��5!      $
��Left=�62   $��259,375,0,0q�6M   $	��Top=�6b   $	��100��6z   $��30��6�   ���	#FFCCCCCC$��Clear��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6�   $��12(�6$  ��6�   Z� 62  �� 5"      $��Vehicle��6   $
��Left=�6.   $��	24,79,0,0q�6I   $	��Top=�6\   �� 5#      $��Income��6   $
��Left=�6-   $��418,278,0,0q�6H   $	��Top=�6]   $ 0.494,-0.077&�6u   �� 5$      $��Distance��6   $
��Left=�6/   $��418,188,0,0q�6J   $	��Top=�6_   $ 0.494,-0.077&�6w   $��66��6�   �� 5%      $��Selling Center��6   $
��Left=�65   $��
419,26,0,0q�6P   $	��Top=�6d   $ 0.494,-0.077&�6|   �� 5&      -   5        $ SellingCenter��5&      $ Select a Selling Center��6�   $
��Left=�6�   $��
520,26,0,0q�6�   $	��Top=�6�   $	��215��6   66   �� *sellingCenter+$	 PropertyChanged=�6  5'      5(      5)      �� 5*   
   $
��Left=�6   $��20��6/   $��	22,52,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5+   
   $��Transportation Details��6   $
��Left=�61   $��72,9,0,0q�6L   $	��Top=�6^   $��58��6v   $	��322��6�   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5,   
   -   5        $
 back��5,         MetroCircleButtonStyle#���   6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5-      �� 5.       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   50      51      52      