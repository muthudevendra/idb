   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.Sale   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  Sales��5	   	   $	��600��6   $	��800��6$   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $	��493��60   $��	10,68,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� -   5         ��Name$ ItemTab��5      $��Item Details��6'   .��5      � 
�������$��
0,-12,-7,5q�6*   .+�5      �� $��	Item Name��6   $
��Left=�60   $��	24,87,0,0q�6K   $	��Top=�6^   �� 5      $��Customer Name��6   $
��Left=�64   $��
420,23,0,0q�6O   $	��Top=�6c    J� RenderTransformOrigin$ 0.494,-0.077&�6{   �� 5      -   5         ��Name$ addItemButton��5      $
��Left=�64   $��634,151,0,0q�6O   $	��Top=�6d   $	��100��6|   $��30��6�   ���	#FFCCCCCC$��Add Item��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6  $��12(�6)  ��6�   Z� 67  �� 5      $��Quantity��6   $
��Left=�6/   $��
420,87,0,0q�6J   $	��Top=�6^   $ 0.494,-0.077&�6v   �� 5      $
��Date��6   $
��Left=�6+   $��	24,21,0,0q�6F   $	��Top=�6Y   $ 0.494,-0.077&�6q   �� 5      -   5         ��Name$ Price��5      {�.  *   $MahApps.Metro.Controls.TextBoxHelper	   	Watermark$	 
Item price��6   $
��Left=�6�   $��23��6�   $��125,118,0,0q�6�   
 �� TextWrapping$

 Wrap=�6�   $	��Top=�6�   $��89��6  ���	#FF3F3F46��6-   �� *	itemPrice+ �� UpdateSourceTrigger$ PropertyChanged=�6   �� 5      -   5        $ Quantity��5         ClearTextButton . $	 Item Quantity��6�   $
��Left=�6�   $��23��6�   $��
519,87,0,0q�6�   $

 Wrap=�6	  $	��Top=�6  $	��215��65  ���	#FF3F3F46��60   �� *
quantity+$ PropertyChanged=�6X  (  "System.Windows.Controls.DatePicker  5      -   5          Name$ 	SalesDate��5   !   $	 
Sales Date��6o   $
��Left=�6�   $��23��6�   $��
125,21,0,0q�6�   $	��Top=�6�   $	��215��6�   ���	#FF3F3F46   Text 64   �� *date+$ PropertyChanged=�6�   �� 5      -   5         ��Name$ ItemName��5      $	 Select a Item��6y   $
��Left=�6�   $��
125,87,0,0q�6�   $	��Top=�6�   $	��215��6�    �� SelectedValue 61   �� *
itemName+$ PropertyChanged=�6�   �� 5      -   5        $ CustomerName��5      $	 Select customer��6�   $
��Left=�6�   $��
519,23,0,0q�6�   $	��Top=�6�   $	��215��6�    65   �� *customerName+$ PropertyChanged=�6�   �� 5      -   5        $ 
saveButton��5      $
��Left=�61   $��559,411,0,0q�6L   $	��Top=�6a   $	��100��6y   $��30��6�   ���	#FFCCCCCC$
��Save��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6�   $��12(�6"  ��6�   Z� 60  �� 5      -	   5        $ clearButton��5      $
��Left=�62   $��420,411,0,0q�6M   $	��Top=�6b   $	��100��6z   $��30��6�   ���	#FFCCCCCC$��	Clear All��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6  $��12(�6(  ��6�   Z� 66  �� 5      $
��Left=�6    $��20��6;   $��162,181,0,0q�6G   $	��Top=�6\   $	��603��6t   �� 5       $��Sales Items��6   $
��Left=�62   $��
15,171,0,0q�6M   $	��Top=�6a   $��41��6y   $	��147��6�   ���	#FF3373F2$��Segoe UI Light)�6�   $��20(�6�   ��6�   Z� 6�   &   System.Windows.Controls.DataGrid  5!      -
   5          Name$ NewSalesGrid��5!      $��Center=�65   $��Center=�6Y   $
��Left=�6{   $��
15,215,0,0q�6�      AzureDataGrid#��[  6�      AutoGenerateColumns .  $	��Top=�6�   $	��153��6  $	��750��6     
IsReadOnly .    Columns 5"      0  *System.Windows.Controls.DataGridTextColumn  5#      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Item Name��6J      Width5  /System.Windows.Controls.DataGridLengthConverter$	 180 6]   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *name+6]     5$      $ Quantity��6N   $	 120 6`    61   �� *
quantity+6`     5%      $ 
Item Price��6O   $	 270 6c    61   �� *	itemPrice+6c     5&      $ Total Price��6P   $	 270 6e    61   �� *
totalPrice+6e   5(      �� 5)      $��Selling Center��6   $
��Left=�65   $��	24,52,0,0q�6P   $	��Top=�6c   $ 0.494,-0.077&�6{   �� 5*      $��Price��6   $
��Left=�6,   $��
24,118,0,0q�6G   $	��Top=�6[   $ 0.494,-0.077&�6s   �� 5+      $��
Invoice ID��6   $
��Left=�61   $��585,-23,0,0q�6L   $	��Top=�6a   �� 5,      -   5        $ SalesInvoiceID��5,      $	 
ID eg:S001��6t   $
��Left=�6�   $��23��6�   $��652,-23,0,0q�6�   $

 Wrap=�6�   $	��Top=�6�   $��82��6
  ���	#FF3F3F46��66   �� *	salesId+$ PropertyChanged=�6  �� 5-      $��Total Items��6   $
��Left=�62   $��
24,373,0,0q�6M   $	��Top=�6a   �� 5.      -   5        $ TotalSalesItems��5.      $	 items��6}   {�.  $
��Left=�6�   $��23��6�   $��
93,373,0,0q�6�   $

 Wrap=�6�   $	��Top=�6  $��64��6  ���	#FF3F3F46��67   �� *totalSalesItems+$ PropertyChanged=�6*  �� 5/      $��Total Price��6   $
��Left=�62   $��167,373,0,0q�6M   $	��Top=�6b   �� 50      -   5        $ TotalSalesPrice��50      $	 price��6}   {�.  $
��Left=�6�   $��23��6�   $��232,373,0,0q�6�   $

 Wrap=�6�   $	��Top=�6  $	��108��6   ���	#FF3F3F46��67   �� *totalSalesPrice+$ PropertyChanged=�6,  �� 51      -   5        $ SellingCenter��51      $	 Select a Selling Center��6�   $
��Left=�6�   $��
125,52,0,0q�6�   $	��Top=�6�   $	��215��6   66   �� *sellingCenter+$ PropertyChanged=�6  �� 52      $��Request Transport��6   $
��Left=�68   $��585,373,0,0q�6S   $	��Top=�6h   $ 0.494,-0.077&�6�   �� 53      -   5         ��Name$ TransportRequest��53      $
��Left=�69   $��709,378,0,0q�6T   $	��Top=�6i   $��20��6�   �� 54      -   5        $ TotalItemPrice��54      {�.  $	 total price��6�   $
��Left=�6�   $��23��6�   $��519,118,0,0q�6�   $

 Wrap=�6�   $	��Top=�6  $��89��6$  ���	#FF3F3F46��66   �� *totalItemPrice+$ PropertyChanged=�6/  �� 55      $��Total Item Price��6   $
��Left=�67   $��420,118,0,0q�6R   $	��Top=�6g   $ 0.494,-0.077&�6   56      57      58      �� 59   
   $
��Left=�6   $��20��6/   $��	22,52,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5:   
   $��New Sale��6   $
��Left=�6#   $��72,5,0,0q�6>   $	��Top=�6P   $��58��6h   $	��281��6t   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5;   
   -   5        $
 back��5;        MetroCircleButtonStyle#���  6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5<      �� 5=       �� ImageSource$0 */IDB;component/Icons/appbar.arrow.left.png��6   5?      5@      5A      