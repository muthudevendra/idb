   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.MainWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$"  Industrial Development Board��5	   	   $	��400��6.   $	��600��6;   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� -   5         ��Name$ SignControl��5      $
��Left=�6*   $	��349��6E   $��	10,10,0,0q�6R   $	��Top=�6e   $	��572��6}   .@�5      �� $��
Login Here��6   .��5      � 
�������$��
-6,0,-4,-3q�6*   .+�5      )   #MahApps.Metro.Controls.ProgressRing  -   5          Name$ ProgressRing��5   ,      IsActive .  $��271,98,263,130q�6S   $��42��6k   $��42��6w   �� 5      -   5         ��Name$ UserNameLogin��5      *   $MahApps.Metro.Controls.TextBoxHelper	   ClearTextButton	 . 
   	Watermark$
 Enter your Username here��6�   $
��Left=�6�   $��23��6�   $��	64,98,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6  $	��467��6$  ���	#FF3F3F46��65   �� *userNameLogin+60  G� 5      -   5         G�Name$ PasswordLogin��5   "   	 . $
 Enter your Password here��6g   $
��Left=�6�   $��23��6�   $��
64,167,0,0q�6�   $	��Top=�6�   $	��467��6�   ���	#FF3F3F466  �� 5      $��Username��6   $
��Left=�6/   $��	64,71,0,0q�6J   $	��Top=�6]   $��77��6u   
���   �6�   �� 5      $��Password��6   $
��Left=�6/   $��
64,141,0,0q�6J   $	��Top=�6^   $��77��6v   
���   �6�   �� 5      $��Log In��6   $
��Left=�6-   $��	238,0,0,0q�6H   $	��Top=�6[   $	��127��6s   $��62��6   
���   �$��36(�6�   $��Segoe UI Light)�6�   �� 5      $
��Left=�6!   $��61��6<   $	��Top=�6H   $��61��6`   $��	172,0,0,0q�6k   ��5      �� 5       �� ImageSource$ Icons/appbar.unlock.png��6)   5      �� 5      -   5         ��Name$ loginButton��5      $
��Left=�63   $��216,221,0,0q�6N   $	��Top=�6c   $	��127��6{   $��41��6�   ���	#FFCCCCCC$��Login��6�   
���   �$��Segoe UI Light)�6�    J� RenderTransformOrigin$ 0.538,-0.615&�6   $��12(�6%  ��6�   Z� 63  5      5      �� 5       $��Create New Account��6   
���   �.��5!      � 
�������$��
-6,6,-4,-3q�6*   .+�5"      � 
�������$��10,-14,10,10q�6.   .+�5#      �� -   5        $ UserNameNew��5#   "   	 . $"
 Enter a Unique Username here��6�   $
��Left=�6�   $��23��6�   $��	49,89,0,0q�6�   $
 Wrap=�6�   $	��Top=�6  $	��483��6(  ���	#FF3F3F46$��2��6K  ��67   �� *userNameNew+6K  G� 5$      -   5        $ PasswordNew��5$   &   	 . $
 Enter your Password here��6i   $
��Left=�6�   $��23��6�   $��
49,156,0,0q�6�   $	��Top=�6�   $	��225��6�   ���	#FF3F3F466  G� 5%      -   5        $ ConfirmPasswordNew��5%   &   	 . $ 
 Confirm your Password here��6p   $
��Left=�6�   $��23��6�   $��302,156,0,0q�6�   $	��Top=�6�   $	��230��6  ���	#FF3F3F466  	� 5&      -	   5         	�Name$ Admin��5&   &   $��Admin��65   $
��Left=�6E   $��215,208,0,0q�6`   $	��Top=�6u   
���   �6�   	� 5'      -
   5        $ Employee��5'   &   $��Employee��68    d� 	IsChecked$
 TrueY�6K   $
��Left=�6\   $��302,208,0,0q�6w   $	��Top=�6�   
���   �$ 0.329,0.611&�6�   �� 5(      -   5        $ signUpButton��5(   !   $
��Left=�68   $��215,254,0,0q�6S   $	��Top=�6h   $	��127��6�   $��41��6�   ���	#FFCCCCCC$��Sign Up��6�   
���   �$��Segoe UI Light)�6�   $��12(�6  ��6�   Z� 6  �� 5)      $��Username��6    $
��Left=�63   $��	49,63,0,0q�6N   $	��Top=�6a   $��77��6y   
���   �6�   �� 5*      $��Password��6    $
��Left=�63   $��
49,130,0,0q�6N   $	��Top=�6b   $��77��6z   
���   �6�   �� 5+      $
��Left=�6%   $��61��6@   $	��Top=�6L   $��61��6d   $��	154,0,0,0q�6o   ��5,      �� 5-   "   $* $/IDB;component/Icons/appbar.lock.png��6-   5/      �� 50      $��Sign Up��6    $
��Left=�62   $��	215,0,0,0q�6M   $	��Top=�6`   $	��127��6x   $��62��6�   
���   �$��36(�6�   $��Segoe UI Light)�6�   �� 51      $��Confirm Password��6    $
��Left=�6;   $��302,129,0,0q�6V   $	��Top=�6k   $	��107��6�   
���   �6�   �� 52      $��Account Type��6    $
��Left=�67   $��
49,204,0,0q�6R   $	��Top=�6f   $��91��6~   
���   �6�   53      54      55      56      57      58      