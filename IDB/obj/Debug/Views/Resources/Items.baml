   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      	IDB.Items   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$
  Item��5	   	   $	��600��6   $	��800��6#   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $	��489��60   $��	10,72,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� -   5         ��Name$ ItemTab��5      $��Item Details��6'   .��5      � 
�������$��	0,0,-7,-7q�6*   .+�5      �� $
��Name��6   $
��Left=�6+   $��	24,26,0,0q�6F   $	��Top=�6Y   �� 5      -   5         ��Name$
 Name��5      *   $MahApps.Metro.Controls.TextBoxHelper   ClearTextButton .    	Watermark$ Enter Item Name here��6�   $
��Left=�6�   $��23��6�   $��
135,26,0,0q�6�   	 �� TextWrapping$
	 Wrap=�6	  $	��Top=�6  $	��215��65  ���	#FF3F3F46��6,   �� *name+
 �� UpdateSourceTrigger$
 PropertyChanged=�6A  �� 5      -   5        $ Description��5       . $ Item Description��6�   $
��Left=�6�   $��89��6�   $��
519,26,0,0q�6�   $
	 Wrap=�6  $	��Top=�6&  $	��208��6>  ���	#FF3F3F46��63   �� *description+$
 PropertyChanged=�6J  �� 5      $��Description��6   $
��Left=�62   $��
420,26,0,0q�6M   $	��Top=�6a    J� RenderTransformOrigin$ 0.494,-0.077&�6y   �� 5      -   5         ��Name$ addItemButton��5      $
��Left=�64   $��559,130,0,0q�6O   $	��Top=�6d   $	��100��6|   $��30��6�   ���	#FFCCCCCC$��Add Item��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6  $��12(�6)  ��6�   Z� 67  �� 5      $��Category��6   $
��Left=�6/   $��	24,89,0,0q�6J   $	��Top=�6]   $ 0.494,-0.077&�6u   �� 5      -   5        $ Category��5       . $ Item Category��6�   $
��Left=�6�   $��23��6�   $��
135,89,0,0q�6�   $
	 Wrap=�6	  $	��Top=�6  $	��215��65  ���	#FF3F3F46��60   �� *
category+$
 PropertyChanged=�6A  �� 5      $�� ��6   $
��Left=�6'   $��
24,250,0,0q�6B   $	��Top=�6V   $ 0.494,-0.077&�6n   �� 5      $��	Item Code��6   $
��Left=�60   $��	24,57,0,0q�6K   $	��Top=�6^   $ 0.494,-0.077&�6v   �� 5      -   5        $ ItemCode��5       . $ 
Eg: Al-001��6�   $
��Left=�6�   $��23��6�   $��
135,57,0,0q�6�   $
	 Wrap=�6  $	��Top=�6  $	��215��62  ���	#FF3F3F46��60   �� *
itemCode+$
 PropertyChanged=�6>  �� 5      -   5        $ 
saveButton��5      $
��Left=�61   $��559,411,0,0q�6L   $	��Top=�6a   $	��100��6y   $��30��6�   ���	#FFCCCCCC$
��Save��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6�   $��12(�6"  ��6�   Z� 60  �� 5      -   5        $ clearButton��5      $
��Left=�62   $��420,411,0,0q�6M   $	��Top=�6b   $	��100��6z   $��30��6�   ���	#FFCCCCCC$��	Clear All��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6  $��12(�6(  ��6�   Z� 66  5      5      5       �� 5!   
   $
��Left=�6   $��20��6/   $��	22,52,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5"   
   $��Add New Items��6   $
��Left=�6(   $��72,5,0,0q�6C   $	��Top=�6U   $��58��6m   $	��281��6y   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5#   
   -	   5        $
 back��5#         MetroCircleButtonStyle#���   6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5$      �� 5%       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5'      �� 5(   
   $
��Left=�6   $��20��6/   $��105,300,0,0q�6;   $	��Top=�6P   $	��667��6h   �� 5)   
   $��Items��6   $
��Left=�6    $��
22,290,0,0q�6;   $	��Top=�6O   $��41��6g   $	��147��6s   ���	#FF3373F2$��Segoe UI Light)�6�   $��20(�6�   ��6   Z� 6�   &   System.Windows.Controls.DataGrid  5*   
   -
   5          Name$ NewItemGrid��5*         CanUserAddRows . $��Center=�6>   $��Center=�6b   $
��Left=�6�   $��
22,340,0,0q�6�     AzureDataGrid#��[ 6�      AutoGenerateColumns .  $	��Top=�6�   $	��172��6  $	��750��6     
IsReadOnly .    Columns 5+      0  *System.Windows.Controls.DataGridTextColumn  5,      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Item Code��6B      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6U   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *
itemCode+6U     5-      $
 Name��6>   $	 180 6L    6%   �� *name+6L     5.      $ Category��6B   $	 200 6T    6%   �� *
category+6T     5/      $ Description��6E   $	 270 6Z    6%   �� *description+6Z   51      52      53      