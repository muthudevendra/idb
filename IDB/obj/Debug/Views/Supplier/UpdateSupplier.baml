   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.UpdateSupplier   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	   -   5          � Title$  Update Supplier��5	   	   $	��600��6!   $	��800��6.   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $	��478��60   $��	10,45,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� -   5         ��Name$ SupplierTab��5      $�� ��6+   .��5      � 
�������.+�5      �� $��Supplier ID��6   $
��Left=�62   $	��Top=�6M   $��44,7,0,0q�6e   �� 5      $��Company Name��6   $
��Left=�63   $��
44,125,0,0q�6N   $	��Top=�6b   �� 5      -   5         ��Name$ 
SupplierID��5       �� 
IsReadOnly . $
��Left=�6D   $��23��6_   $��	117,7,0,0q�6k    �� TextWrapping$
 Wrap=�6~   $	��Top=�6�   $	��166��6�   ���	#FF3F3F46	 J� RenderTransformOrigin$	 -0.18,0.477&�6�   �� 5      -   5        $ SupplierName��5      *   $MahApps.Metro.Controls.TextBoxHelper
   ClearTextButton
 .    	Watermark$ Enter Supplier Name here��6x   $
��Left=�6�   $��23��6�   $��
145,70,0,0q�6�   $
 Wrap=�6�   $	��Top=�6  $	��215��6  ���	#FF3F3F46��64   �� *name+6'  �� 5      -   5        $ CompanyName��5      
 . $ Enter Company Name here��6~   $
��Left=�6�   $��23��6�   $��145,125,0,0q�6�   $
 Wrap=�6�   $	��Top=�6	  $	��215��6!  ���	#FF3F3F46��63   �� *companyName+6-  �� 5      -   5        $ Address1��5      
 . $ Postal Code��6|   $
��Left=�6�   $��23��6�   $��
531,70,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��60   �� *addressLine1+6  �� 5      -   5        $ Address2��5      
 . $ Address Line 1��6|   $
��Left=�6�   $��23��6�   $��531,112,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��60   �� *addressLine2+6"  �� 5      -   5        $ Address3��5      
 . $ Address Line 2��6|   $
��Left=�6�   $��23��6�   $��531,152,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��60   �� *addressLine3+6"  �� 5      -	   5        $ MobileContact��5      
 . $ 	Contact 1��6{   $
��Left=�6�   $��23��6�   $��145,216,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��65   �� *mobile+6  �� 5      -
   5        $ HomeContact��5      
 . $ 	Contact 2��6~   $
��Left=�6�   $��23��6�   $��531,216,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��63   �� *homeContact+6  �� 5      $��Mobile Contact��6   $
��Left=�65   $��
44,216,0,0q�6P   $	��Top=�6d   $	 0.494,-0.077&�6|   �� 5      $��Address��6   $
��Left=�6.   $��
438,70,0,0q�6I   $	��Top=�6]   $	 0.494,-0.077&�6u   �� 5      $��Home Contact��6   $
��Left=�63   $��438,216,0,0q�6N   $	��Top=�6c   $	 0.494,-0.077&�6{   �� 5       -   5         ��Name$ 
saveButton��5       $
��Left=�61   $��347,367,0,0q�6L   $	��Top=�6a   $	��100��6y   $��30��6�   ���	#FFCCCCCC$��Update��6�   
���   �$��Segoe UI Light)�6�   $	 0.538,-0.615&�6�   $��12(�6$  ��6�   Z� 62  �� 5!      $��Supplier Name��6   $
��Left=�64   $��	44,70,0,0q�6O   $	��Top=�6b   5"      5#      5$      �� 5%   
   $
��Left=�6   $��20��6/   $��	22,61,0,0q�6;   $	��Top=�6N   $	��762��6f   $��2��6r   �� 5&   
   $��Update Supplier��6   $
��Left=�6*   $��77,5,0,0q�6E   $	��Top=�6W   $��58��6o   $	��279��6{   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   $��2��6�   ��6�   Z� 6�   �� 5'   
   -   5        $
 back��5'         MetroCircleButtonStyle#���   6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   � � ToolTip$ Back to Customer View��6�   ��5(      �� 5)       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5+      5,      5-      