   M S B A M L   `   `   `  ����V  RXIMALAYA.PCDesktop.Controls, Version=1.1.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:XIMALAYA.PCDesktop.ControlsXIMALAYA.PCDesktop.Controls  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   MyToggleButtonTemplate �� 
TargetType0    *XIMALAYA.PCDesktop.Controls.MyToggleButton'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration �� 
TargetName �� TargetProperty		 W� To
 R� KeyTime R� Value ��Name    CornerRadius �� CornerRadius J� Opacity   BooleanToVisibilityConverter �� 	Converter ��Name    
RadiusSize �� RadiusX �� RadiusY �� ScaleX �� ScaleY �� CenterX �� RelativeSource �� AncestorType  HalfValueConverter �� 	Converter �� CenterY ��Name    ContentChecked �� Triggers P� Property  P� Value! �� Property" �� Value# �� 
TargetType�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      3local)clr-namespace:XIMALAYA.PCDesktop.Controls  5        5      �� 5   
   $X Rpack://application:,,,/XIMALAYA.PCDesktop.Controls;component/Styles/Converter.xaml?�6   %3
  &	        7  7  7  7  '   �	    7   �� 5	      "   65   .R�5
   
   � 
������  5        5      CommonStates��. 5        
Normal��6"     5      	MouseOver��. 5      �� .��5      W� $ 0:0:0.2D�6.   $ 
Part_Scale��5      $ ScaleX�5      $	 1X�60   W� 5      $ 0:0:0.2D�6.   $ 
Part_Scale��5      $ ScaleY�5      $	 1X�60   5      5        5      Pressed��. 5      �� .��5      W� $ 0D�6.   $ 
Part_Scale��5       $ ScaleX�5!      $	 1X�60   W� 5"      $ 0D�6.   $ 
Part_Scale��5#      $ ScaleY�5$      $	 1X�60   T� 5%      $ 
Foreground�6<   $ contentPresenter��5&   <   ..�5'   "   i� $
 0��69   $ Green��6E   5(      51      52        53      Disabled��. 54      �� 56      57      58        59      CheckStates��. 5:        Checked��. 5;      �� .��5<      W� $ 0:0:0.1D�6.   $ contentPresenter��5=      $ Opacity�5>      $	 0X�61   W� 5?      $ 0:0:0.1D�6.   $ contentCheckedPresenter��5@      $ Opacity�5A      $	 1X�61   5D      5E        5F      	Unchecked��. 5G      �� .��5H      W� $ 0:0:0.1D�6.   $ contentPresenter��5I      $ Opacity�5J      $	 1X�61   W� 5K      $ 0:0:0.1D�6.   $ contentCheckedPresenter��5L      $ Opacity�5M      $	 0X�61   5P      5Q      5R        5S      FocusStates��. 5T        Focused��. 5U      �� 5W      5X        5Y      	Unfocused��6"   5Z      .+�5\      �� $ PART_Border��6   #��z��5]      #��z��5^   	   # z 5`      $ 1Q�5a      y�5_      �� *IsShowBorder+8   ._�5b      �� $ 	PART_Fill��6   # z 5d   	   # z 5e   	   #��z��5f   	   y�5c   	   �� *IsShowBorder+8  z�5g      V� 5h      ~�5j   "   �� 
Part_Scale��$ 0Q�5m      $ 0Q�5n       5k      �� *ActualWidth+ �� *FindAncestor+$ local:MyToggleButtonL�8   5l      �� *ActualHeight+ �� *FindAncestor+$ local:MyToggleButtonL�8  5n      5p      5r      5s      �� 5t      $ contentPresenter��6   #��z��5u      #��z��5v      #��z��5w      #��z��5x      #��z��5y      �� 5{      $ contentCheckedPresenter��6   #��z 5|      #��z��5}      #��z��5~      #��z��5      #��z��5�      5�       5�   
   P� 5�       �@J�IsMouseOver  . . �5�      �� ! � ��
" ��  �6/   5�      5�      �� 5�      "#   6   .�5�   
   �� ! � ��8"   6%   5�      5�      