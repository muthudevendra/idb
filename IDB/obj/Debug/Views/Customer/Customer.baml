   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.Customer   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  Customer��5	   	   $	��600��6   $	��800��6'   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $	��474��60   $��	10,72,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� -   5         ��Name$ customerTab��5      $��Personal��6+   .��5      � 
�������.+�5      �� $��
First Name��6   $
��Left=�61   $��	24,26,0,0q�6L   $	��Top=�6_   �� 5      $��	Last Name��6   $
��Left=�60   $��
418,26,0,0q�6K   $	��Top=�6_   �� 5      -   5         ��Name$ 	FirstName��5      *   $MahApps.Metro.Controls.TextBoxHelper   ClearTextButton .    	Watermark$ Enter First Name here��6�   $
��Left=�6�   $��23��6�   $��
111,26,0,0q�6   	 �� TextWrapping$
	 Wrap=�6  $	��Top=�6(  $	��215��6@  ���	#FF3F3F46��61   �� *	firstName+
 �� UpdateSourceTrigger$
 PropertyChanged=�6L  �� 5      -   5        $ LastName��5       . $ Enter Last Name here��6�   $
��Left=�6�   $��23��6�   $��
520,26,0,0q�6�   $
	 Wrap=�6  $	��Top=�6$  $	��215��6<  ���	#FF3F3F46��60   �� *
lastName+$
 PropertyChanged=�6H  �� 5      -   5        $ Address1��5       . $ Postal Code��6�   $
��Left=�6�   $��23��6�   $��
520,79,0,0q�6�   $
	 Wrap=�6  $	��Top=�6  $	��215��67  ���	#FF3F3F46��60   �� *addressLine1+$
 PropertyChanged=�6C  �� 5      -   5        $ Address2��5       . $ Address Line 1��6�   $
��Left=�6�   $��23��6�   $��520,118,0,0q�6�   $
	 Wrap=�6  $	��Top=�6#  $	��215��6;  ���	#FF3F3F46��60   �� *addressLine2+$
 PropertyChanged=�6G  �� 5      -   5        $ Address3��5       . $ Address Line 2��6�   $
��Left=�6�   $��23��6�   $��520,155,0,0q�6�   $
	 Wrap=�6  $	��Top=�6#  $	��215��6;  ���	#FF3F3F46��60   �� *addressLine3+$
 PropertyChanged=�6G  �� 5      -   5        $ Email��5       . $ Enter User Email here��6�   $
��Left=�6�   $��23��6�   $��
111,79,0,0q�6�   $
	 Wrap=�6  $	��Top=�6  $	��215��67  ���	#FF3F3F46��6-   �� *email+$
 PropertyChanged=�6C  �� 5      -   5        $ Mobile��5       . $ 	Contact 1��6�   $
��Left=�6�   $��23��6�   $��111,206,0,0q�6�   $
	 Wrap=�6  $	��Top=�6  $	��215��64  ���	#FF3F3F46��6.   �� *mobileNumber+$
 PropertyChanged=�6@  �� 5      $��Mobile��6   $
��Left=�6-   $��
24,206,0,0q�6H   $	��Top=�6\    J� RenderTransformOrigin$ 0.494,-0.077&�6t   �� 5      $��Address��6   $
��Left=�6.   $��
418,79,0,0q�6I   $	��Top=�6]   $ 0.494,-0.077&�6u   �� 5      -	   5        $ 	FixedLine��5       . $ 	Contact 2��6�   $
��Left=�6�   $��23��6�   $��520,206,0,0q�6�   $
	 Wrap=�6
  $	��Top=�6  $	��215��66  ���	#FF3F3F46��61   �� *fixedNumber+$
 PropertyChanged=�6B  �� 5      $��
Fixed Line��6   $
��Left=�61   $��418,206,0,0q�6L   $	��Top=�6a   $ 0.494,-0.077&�6y   �� 5       -
   5         ��Name$ 
saveButton��5       $
��Left=�61   $��418,342,0,0q�6L   $	��Top=�6a   $	��100��6y   $��30��6�   ���	#FFCCCCCC$
��Save��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6�   $��12(�6"  ��6�   Z� 60  �� 5!      -   5        $ clearButton��5!      $
��Left=�62   $��259,342,0,0q�6M   $	��Top=�6b   $	��100��6z   $��30��6�   ���	#FFCCCCCC$��Clear��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6�   $��12(�6$  ��6�   Z� 62  �� 5"      $��Email��6   $
��Left=�6,   $��	24,79,0,0q�6G   $	��Top=�6Z   5$      5%      5&      �� 5'   
   $
��Left=�6   $��20��6/   $��	22,52,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5(   
   $��Customer Details��6   $
��Left=�6+   $��72,5,0,0q�6F   $	��Top=�6X   $��58��6p   $	��251��6|   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5)   
   -   5        $
 back��5)         MetroCircleButtonStyle#���   6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5*      �� 5+       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5-      5.      5/      