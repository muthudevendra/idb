   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   > :IDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:IDBIDB 5   	      IDB.Purchase   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   #localclr-namespace:IDB     5   	     � Title$  	Purchases��5	   	   $	��600��6   $	��800��6(   (   "MahApps.Metro.Controls.MetroWindow   EnableDWMDropShadow .  � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �� $
��Left=�6   $	��489��60   $��	10,72,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� -   5         ��Name$ ItemTab��5      $��Item Details��6'   .��5      � 
�������$��	0,0,-7,-7q�6*    � ColumnDefinitions 5      �� 5      $
��695* �6+   �� 5      $	��24* �6+   �� 5      $	��56* �6+   .+�5      �� $��	Item Name��6   $
��Left=�60   $��	24,57,0,0q�6K   $	��Top=�6^   �� 5      $��Supplier Name��6   $
��Left=�64   $��
420,23,0,0q�6O   $	��Top=�6c    J� RenderTransformOrigin$ 0.494,-0.077&�6{   �� 5      -   5         ��Name$ addItemButton��5      $
��Left=�64   $��559,134,0,0q�6O   $	��Top=�6d   $	��100��6|   $��30��6�   ���	#FFCCCCCC$��Add Item��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6  $��12(�6)  ��6�   Z� 67  �� 5      $��Quantity��6   $
��Left=�6/   $��	24,94,0,0q�6J   $	��Top=�6]   $ 0.494,-0.077&�6u   �� 5      $�� ��6   $
��Left=�6'   $��
24,250,0,0q�6B   $	��Top=�6V   $ 0.494,-0.077&�6n   �� 5      $
��Date��6   $
��Left=�6+   $��	24,21,0,0q�6F   $	��Top=�6Y   $ 0.494,-0.077&�6q   �� 5      -   5        	 ��Name$	 	SalePrice��5      *   $MahApps.Metro.Controls.TextBoxHelper
   ClearTextButton
 .    	Watermark$ Item Sale price in Rs��6�   $
��Left=�6�   $��23��6�   $��
519,94,0,0q�6    �� TextWrapping$
 Wrap=�6  $	��Top=�6(  $	��215��6@  ���	#FF3F3F46$��3��6c  ��61   �� *
salesPrice+ �� UpdateSourceTrigger$ PropertyChanged=�6c  �� 5      -   5        $	 PurchasePrice��5      
 . $ Item Purchase Price in Rs��6�   $
��Left=�6�   $��23��6   $��
519,57,0,0q�6  $
 Wrap=�6   $	��Top=�64  $	��215��6L  ���	#FF3F3F46$��3��6o  ��65   �� *purchasePrice+$ PropertyChanged=�6o  �� 5      -   5        $	 Quantity��5      
 . $ Item Quantity��6�   $
��Left=�6�   $��23��6�   $��
125,94,0,0q�6�   $
 Wrap=�6	  $	��Top=�6  $	��215��65  ���	#FF3F3F46��60   �� *
quantity+$ PropertyChanged=�6A  (  "System.Windows.Controls.DatePicker  5       -   5          Name$ PurchaseDate��5    !   $ Purchase Date��6r   $
��Left=�6�   $��23��6�   $��
125,21,0,0q�6�   $	��Top=�6�   $	��215��6�   ���	#FF3F3F46   Text 67   �� *date+$ PropertyChanged=�6  �� 5!      -   5         ��Name$ ItemName��5!      $ Select a Item��6p   $
��Left=�6�   $��
125,57,0,0q�6�   $	��Top=�6�   $	��215��6�    �� Text 61   �� *
itemName+$ PropertyChanged=�6�   �� 5"      -   5        $ SupplierName��5"      $ Select a supplier��6x   $
��Left=�6�   $��
519,23,0,0q�6�   $	��Top=�6�   $	��215��6�   $��3��6    65   �� *supplierName+$ PropertyChanged=�6   �� 5$      -	   5        $ 
saveButton��5$      $
��Left=�61   $��559,411,0,0q�6L   $	��Top=�6a   $	��100��6y   $��30��6�   ���	#FFCCCCCC$
��Save��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6�   $��12(�6"  ��6�   Z� 60  �� 5%      -
   5        $ clearButton��5%      $
��Left=�62   $��420,411,0,0q�6M   $	��Top=�6b   $	��100��6z   $��30��6�   ���	#FFCCCCCC$��	Clear All��6�   
���   �$��Segoe UI Light)�6�   $ 0.538,-0.615&�6  $��12(�6(  ��6�   Z� 66  �� 5&      $
��Left=�6    $��20��6;   $��162,169,0,0q�6G   $	��Top=�6\   $	��603��6t   $��3��6�   �� 5'      $��Purchase Items��6   $
��Left=�65   $��
15,159,0,0q�6P   $	��Top=�6d   $��41��6|   $	��147��6�   ���	#FF3373F2$��Segoe UI Light)�6�   $��20(�6�   ��6�   Z� 6�   &   System.Windows.Controls.DataGrid  5(      -   5          Name$ NewPurchaseGrid��5(      $��Center=�68   $��Center=�6\   $
��Left=�6~   $��
15,200,0,0q�6�      AzureDataGrid#��[  6�      AutoGenerateColumns .  $	��Top=�6�   $	��153��6  $	��750��6     
IsReadOnly . $��3��63     Columns 5)      0  *System.Windows.Controls.DataGridTextColumn  5*      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Item Name��6J      Width5  /System.Windows.Controls.DataGridLengthConverter$	 180 6]   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *name+6]     5+      $ Quantity��6N   $	 120 6`    61   �� *
quantity+6`     5,      $ Purchase Price��6S   $	 200 6k    61   �� *purchasePrice+6k     5-      $ 
Sale Price��6O   $	 270 6c    61   �� *	salePrice+6c   5/      �� 50      $��Purchase Price��6   $
��Left=�65   $��
420,57,0,0q�6P   $	��Top=�6d   $ 0.494,-0.077&�6|   �� 51      $��
Sale Price��6   $
��Left=�61   $��
420,94,0,0q�6L   $	��Top=�6`   $ 0.494,-0.077&�6x   �� 52      $��
Invoice ID��6   $
��Left=�61   $��585,-40,0,0q�6L   $	��Top=�6a   �� 53      -   5        $	 PurchaseInvoiceID��53      $ 
ID eg:P001��6z   $
��Left=�6�   $��23��6�   $��652,-40,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $��82��6  ���	#FF3F3F46$��3��62  ��69   �� *
purchaseId+$ PropertyChanged=�.��6F  54      �� 55      $��Total Items��6   $
��Left=�62   $��
24,368,0,0q�6M   $	��Top=�6a   �� 56      -   5        $	 TotalPurchaseItems��56      $ items��6:   {�.  $
��Left=�6u   $��23��6�   $��
93,368,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $��64��6�   ���	#FF3F3F466�   �� 57      $��Total Price��6   $
��Left=�62   $��167,368,0,0q�6M   $	��Top=�6b   �� 58      -   5        $	 TotalPurchasePrice��58      $ price��6:   {�.  $
��Left=�6u   $��23��6�   $��232,368,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��108��6�   ���	#FF3F3F466�   59      5:      5;      �� 5<   
   $
��Left=�6   $��20��6/   $��	22,52,0,0q�6;   $	��Top=�6N   $	��762��6f   �� 5=   
   $��New Purchase��6   $
��Left=�6'   $��72,5,0,0q�6B   $	��Top=�6T   $��58��6l   $	��281��6x   ���	#FF3373F2$��Segoe UI Light)�6�   $��34(�6�   ��6�   Z� 6�   �� 5>   
   -   5        $
 back��5>        MetroCircleButtonStyle#���  6   $
��Left=�6P   $��	22,13,0,0q�6k   $	��Top=�6~   $��45��6�   $��45��6�   
���   ���5?      �� 5@       �� ImageSource$" /Icons/appbar.arrow.left.png��6   5B      5C      5D      