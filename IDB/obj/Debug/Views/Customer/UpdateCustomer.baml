   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.UpdateCustomer   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	   -   5          � Title$  Update Customer��5	   	   $	��600��6!   $	��800��6.   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $	��62* �6   �� 5      $
��409* �6   .+�5   
   �� $
��Left=�6   $	��471��60   $��	10,45,0,0q�6=   $	��Top=�6P   $	��774��6h   $��2��6t   .@�5      �� -   5         ��Name$ customerTab��5      $�� ��6+   .��5      � 
�������$��	0,0,0,-19q�6*   .+�5      �� $��Customer ID��6   $
��Left=�62   $	��Top=�6M   $��44,7,0,0q�6e   �� 5      $��	Last Name��6   $
��Left=�60   $��
416,70,0,0q�6K   $	��Top=�6_   �� 5      -   5         ��Name$ 
CustomerID��5       �� 
IsReadOnly . $
��Left=�6D   $��23��6_   $��	137,7,0,0q�6k   	 �� TextWrapping$
	 Wrap=�6~   $	��Top=�6�   $	��215��6�   ���	#FF3F3F46
 J� RenderTransformOrigin$
 -0.18,0.477&�6�   �� 5      -   5        $ LastName��5      *   $MahApps.Metro.Controls.TextBoxHelper   ClearTextButton .    	Watermark$ Enter your Last Name here��6x   $
��Left=�6�   $��23��6�   $��
508,70,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6  $	��215��6  ���	#FF3F3F46��60   �� *
lastName+6(  �� 5      -   5        $ 	FirstName��5       . $  Enter your First Name here��6z   $
��Left=�6�   $��23��6�   $��
137,70,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6  $	��215��6  ���	#FF3F3F46��61   �� *	firstName+6+  �� 5      -   5        $ Address1��5       . $ Postal Code��6|   $
��Left=�6�   $��23��6�   $��508,112,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��60   �� *addressLine1+6  �� 5      -   5        $ Address2��5       . $ Address Line 1��6|   $
��Left=�6�   $��23��6�   $��508,144,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��60   �� *addressLine2+6"  �� 5      -   5        $ Address3��5       . $ Address Line 2��6|   $
��Left=�6�   $��23��6�   $��508,175,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��60   �� *addressLine3+6"  �� 5      -	   5        $ Email��5       . $  Enter your User Email here��6r   $
��Left=�6�   $��23��6�   $��137,167,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6   $	��215��6  ���	#FF3F3F46��6-   �� *email+6$  �� 5      -
   5        $ MobileContact��5       . $ 	Contact 1��6�   $
��Left=�6�   $��23��6�   $��137,229,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��65   �� *mobileNumber+6"  �� 5       $��Mobile��6   $
��Left=�6-   $��
44,229,0,0q�6H   $	��Top=�6\   $
 0.494,-0.077&�6t   �� 5!      $��Address��6   $
��Left=�6.   $��416,112,0,0q�6I   $	��Top=�6^   $
 0.494,-0.077&�6v   �� 5#      -   5        $ HomeContact��5#       . $ 	Contact 2��6~   $
��Left=�6�   $��23��6�   $��508,229,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6�   $	��215��6  ���	#FF3F3F46��63   �� *fixedNumber+6  �� 5$      $��
Fixed Line��6   $
��Left=�61   $��416,229,0,0q�6L   $	��Top=�6a   $
 0.494,-0.077&�6y   �� 5%      -   5         ��Name$ 
saveButton��5%      $
��Left=�61   $��331,362,0,0q�6L   $	��Top=�6a   $	��100��6y   $��30��6�   ���	#FFCCCCCC$��Update��6�   
���   �$��Segoe UI Light)�6�   $
 0.538,-0.615&�6�   $��12(�6$  ��6�   Z� 62  �� 5&      $��Email��6   $
��Left=�6,   $��
44,167,0,0q�6G   $	��Top=�6[   �� 5'      $��
First Name��6   $
��Left=�61   $��	44,70,0,0q�6L   $	��Top=�6_   5(      5)      5*      �� 5+   
   $
��Left=�6   $��20��6/   $��	22,61,0,0q�6;   $	��Top=�6N   $	��762��6f   $��2��6r   �� 5,   
   $��Update Customer��6   $
��Left=�6*   $��77,5,0,0q�6E   $	��Top=�6W   $��58��6o   $	��279��6{   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   $��2��6�   ��6�   Z� 6�   �� 5-   
   -   5        $
 back��5-         MetroCircleButtonStyle#���   6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   � � ToolTip$ Back to Customer View��6�   ��5.      �� 5/       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   51      52      53      