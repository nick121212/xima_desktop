   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      I EMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MahApps.Metro.ControlsMahApps.Metro.Controls 5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   MetroCheckBox  �� 
TargetType �� Property  LabelTextBrush �� Value  ContentFontSize  ContentFontFamily �� 
TargetType'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration	 W� To	 �� TargetProperty
 �� 
TargetName � ColumnDefinitions ��Name �Name  TransparentWhiteBrush ��Name J� Opacity  CheckBoxBrush  
WhiteBrush  CheckBoxMouseOverBrush  HighlightBrush F�Name �� Stretch � UseLayoutRounding 	 
GrayBrush3 
 SemiTransparentWhiteBrush ��Name �� Triggers P� Property P� Value �� 
TargetName �� ScaleX+  %MahApps.Metro.Controls.ControlsHelper�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      1System&clr-namespace:System;assembly=mscorlib  5      1Controls$clr-namespace:MahApps.Metro.Controls  5      %U  &	        �� 5      "  ��5	      .�5
   
   ��  � ��# �  5      �� 5   
    � ��# �  5      �� 5   
    � ��# �  5      �� 5   
    � ��$
 Left=�5      �� 5   
    � ��$ Center=�5      �� 5   
    � ��$ 6,0,0,0q�5      �� 5   
    � ��$ 1q�5      �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �  5        5      CommonStates��. 5   "     
Normal��6.     5   "   	MouseOver��. 5    &   �� .��5!   *   W� $ 0D�6:   $ 1X�5"   :   $	 (UIElement.Opacity)�5#   :   $
 hover��5$   :   5%   '   5&   #     5'   "   Pressed��. 5(   &   �� .��5)   *   W� $ 0D�6:   $ 1X�5*   :   $	 (UIElement.Opacity)�5+   :   $
 pressed��5,   :   5-   '   5.   #     5/   "   Disabled��. 50   &   �� .��51   *   W� $ 0D�6:   $	 .55X�52   :   $	 (UIElement.Opacity)�53   :   $
 contentPresenter��54   :   W� 55   *   $ 0D�6:   $ 1X�56   :   $	 (UIElement.Opacity)�57   :   $
 disabled��58   :   59   '   5:   #   5;        5<      CheckStates��. 5=   "     Checked��. 5>   &   �� .��5?   *   W� $ 0D�6:   $ 1X�5@   :   $	 (UIElement.Opacity)�5A   :   $
 checkBox��5B   :   5C   '   5D   #     5E   "   	Unchecked��6.     5F   "   Indeterminate��. 5G   &   �� .��5H   *   W� $ 0D�6:   $ 1X�5I   :   $	 (UIElement.Opacity)�5J   :   $
 IndeterminateCheck��5K   :   5L   '   5M   #   5N        5O      FocusStates��. 5P   "     Focused��. 5Q   &   �� .��5R   *   W� $ 0D�6:   $ 1X�5S   :   $	 (UIElement.Opacity)�5T   :   $
 focused��5U   :   5V   '   5W   #     5X   "   	Unfocused��6.   5Y       5[      �� 5\      $ LeftCol��6:   $��18 �6/   6:   �� 5]      $ RightCol��69   $��* �6/   69   .+�5_      � $ PART_CHECKBOX��6   .+�5`      �� #���  6(   �� 5a      $ normal��6(   $ 1Q�5b   (   #���  5c   (   $��1��5d   (   #���  5e   (   $��18��5f   (   $��18��5g   (   �� 5h      $ hover��6(   #���  5i   (   $��1��5j   (   #���  5k   (   $ 0Q�5l   (   $��18��5m   (   $��18��5n   (   �� 5o      $ pressed��6(   $ 0Q�5p   (   #���  5q   (   $��1��5r   (   #���  5s   (   $��18��5t   (   $��18��5u   (   �� 5v      $ focused��6(   $ 0Q�5w   (   #���  5x   (   $��1��5y   (   #���  5z   (   $��18��5{   (   $��18��5|   (   F� 5}      $ checkBox��6#   $��10��5~   #   $��12��5   #   $
 Fill=�5�   #   $ 0Q�5�   #   �����   �m�@�G��   �m�@�G�   ��Ց@   �<1{@   ��Ց@   �<1{@   ��Ց@   �<1{@   ��̑@   ��{@   ��̑@   ��{@   ��̑@   ��{@���C   ��({@���C   ��({@S���C   ��({@   ��Ց@�Y   ��Ց@�Y�   ��Ց@�YnD\enD\e�nD\e��]D    ��z@��]D    ��z@S��]D    ��z@   �m�@�G�   �m�@�G�	#���  5�   #    .  5�   #   �� 5�      $ IndeterminateCheck��6(   #��� 	 5�   (   $��3��5�   (   $��8��5�   (   $ 0Q�5�   (   �� 5�      $ disabled��6(   $ 0Q�5�   (   $��1��5�   (   #��� 
 5�   (   $��18��5�   (   $��18��5�   (   5�      �� 5�      $ contentPresenter��6+   #��z��5�   +   #��z��5�   +   $��1��5�   +   #��z��5�   +   #��z��5�   +   #��z��5�   +   5�       5�      P� 5�       � ��$ RightToLeft=�6;   . �5�      �� $ checkBox��6%    �@�LayoutTransform 5�   "   �� 5�   &   $ -1Q�65   5�      5�      P� 5�       �@ ContentDirection$ RightToLeft=�5�   "   . �5�      ��  � ��$ 0,0,6,0q�5�   %   �� 5�      $ LeftCol��6%    � ��$ * �5�   %   �� 5�      $ RightCol��6%    � ��$ 18 �5�   %   �� 5�      $ PART_CHECKBOX��6%    � ��$ 1��5�   %   �� 5�      $ contentPresenter��6%    � ��$ 0��5�   %   5�      5�      5�      5�      5�      