﻿#pragma checksum "..\..\Purchase.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "79B646410C218940C3DCFECF21E6B5B3"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using IDB;
using MahApps.Metro.Controls;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace IDB {
    
    
    /// <summary>
    /// Purchase
    /// </summary>
    public partial class Purchase : MahApps.Metro.Controls.MetroWindow, System.Windows.Markup.IComponentConnector {
        
        
        #line 16 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TabItem ItemTab;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button addItemButton;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button clearItemButton;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SalePrice;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox PurchasePrice;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Quantity;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker PurchaseDate;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ItemName;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox SupplierName;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button saveButton;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button clearButton;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid NewPurchaseGrid;
        
        #line default
        #line hidden
        
        
        #line 51 "..\..\Purchase.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button back;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/IDB;component/purchase.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Purchase.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.ItemTab = ((System.Windows.Controls.TabItem)(target));
            return;
            case 2:
            this.addItemButton = ((System.Windows.Controls.Button)(target));
            
            #line 20 "..\..\Purchase.xaml"
            this.addItemButton.Click += new System.Windows.RoutedEventHandler(this.addItemButton_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.clearItemButton = ((System.Windows.Controls.Button)(target));
            
            #line 21 "..\..\Purchase.xaml"
            this.clearItemButton.Click += new System.Windows.RoutedEventHandler(this.clearItemButton_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.SalePrice = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.PurchasePrice = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.Quantity = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.PurchaseDate = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 8:
            this.ItemName = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 9:
            this.SupplierName = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 10:
            this.saveButton = ((System.Windows.Controls.Button)(target));
            
            #line 32 "..\..\Purchase.xaml"
            this.saveButton.Click += new System.Windows.RoutedEventHandler(this.saveButton_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            this.clearButton = ((System.Windows.Controls.Button)(target));
            
            #line 33 "..\..\Purchase.xaml"
            this.clearButton.Click += new System.Windows.RoutedEventHandler(this.clearButton_Click);
            
            #line default
            #line hidden
            return;
            case 12:
            this.NewPurchaseGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 13:
            this.back = ((System.Windows.Controls.Button)(target));
            
            #line 51 "..\..\Purchase.xaml"
            this.back.Click += new System.Windows.RoutedEventHandler(this.back_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

