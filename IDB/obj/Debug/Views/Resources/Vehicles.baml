   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.Vehicles   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  Vehicles��5	   	   $	��600��6   $	��800��6'   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $	��489��60   $��	10,72,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� -   5         ��Name$ 
vehicleTab��5      $��Vehicle Details��6*   .��5      � 
�������$��	0,0,-7,-7q�6*   .+�5      �� $��Register Date��6   $
��Left=�64   $��
420,71,0,0q�6O   $	��Top=�6c   �� 5      -   5         ��Name$
 Type��5      *   $MahApps.Metro.Controls.TextBoxHelper   ClearTextButton .    	Watermark$ Vehicle Type��6�   $
��Left=�6�   $��26��6�   $��
519,26,0,0q�6�   	 �� TextWrapping$
	 Wrap=�6   $	��Top=�6  $	��215��6,  ���	#FF3F3F46��6,   �� *type+
 �� UpdateSourceTrigger$
 PropertyChanged=�68  �� 5      $
��Type��6   $
��Left=�6+   $��
420,26,0,0q�6F   $	��Top=�6Z    J� RenderTransformOrigin$ 0.494,-0.077&�6r   �� 5      $��Capacity��6   $
��Left=�6/   $��	24,71,0,0q�6J   $	��Top=�6]   $ 0.494,-0.077&�6u   �� 5      -   5        $ Capacity��5       . $ Vehicle Capacity��6�   $
��Left=�6�   $��23��6�   $��
135,71,0,0q�6�   $
	 Wrap=�6  $	��Top=�6   $	��215��68  ���	#FF3F3F46��60   �� *
capacity+$
 PropertyChanged=�6D  �� 5      $�� ��6   $
��Left=�6'   $��
24,250,0,0q�6B   $	��Top=�6V   $ 0.494,-0.077&�6n   �� 5      $��
Vehicle No��6   $
��Left=�61   $��	24,26,0,0q�6L   $	��Top=�6_   $ 0.494,-0.077&�6w   �� 5      -   5        $ 	VehicleNo��5       . $ 
Vehicle No��6�   $
��Left=�6�   $��23��6�   $��
135,26,0,0q�6�   $
	 Wrap=�6  $	��Top=�6  $	��215��64  ���	#FF3F3F46��61   �� *	vehicleNo+$
 PropertyChanged=�6@  �� 5      -   5         ��Name$ 
saveButton��5      $
��Left=�61   $��562,374,0,0q�6L   $	��Top=�6a   $	��100��6y   $��30��6�   ���	#FFCCCCCC$
��Save��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6�   $��12(�6"  ��6�   Z� 60  �� 5      -   5        $ clearButton��5      $
��Left=�62   $��420,374,0,0q�6M   $	��Top=�6b   $	��100��6z   $��30��6�   ���	#FFCCCCCC$��	Clear All��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6  $��12(�6(  ��6�   Z� 66  (  "System.Windows.Controls.DatePicker  5      -   5          Name$ RegisterDate��5   !   $ Register Date��6r   $
��Left=�6�   $��23��6�   $��
519,71,0,0q�6�   $	��Top=�6�   $	��215��6�   ���	#FF3F3F46   Text 67   �� *date+$
 PropertyChanged=�6  �� 5      $��Sales Center��6   $
��Left=�63   $��
24,116,0,0q�6N   $	��Top=�6b   �� 5      -   5         ��Name$ SellingCenter��5      $ Select a Sales Center��6�   $
��Left=�6�   $��135,116,0,0q�6�   $	��Top=�6�   $	��215��6  $ 0.247,4.231&�6   �� SelectedValue 66   �� *sellingCenter+$
 PropertyChanged=�6  5      5       5!      �� 5"   
   $
��Left=�6   $��20��6/   $��	22,52,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5#   
   $��Register New Vehicle��6   $
��Left=�6/   $��72,5,0,0q�6J   $	��Top=�6\   $��58��6t   $	��322��6�   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5$   
   -	   5        $
 back��5$         MetroCircleButtonStyle#���   6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5%      �� 5&       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5(      5)      5*      