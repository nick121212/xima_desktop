   M S B A M L   `   `   `  ����I  EMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:MahApps.Metro.Controls.DialogsMahApps.Metro.Controls.Dialogs  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   SquareButtonStyle �� BasedOn �� 
TargetType �� Property �� Value  AccentedDialogSquareButton  AccentedSquareButtonStyle  DialogShownStoryboard g� AccelerationRatio g� 	BeginTime g� Duration	 �� TargetProperty	
 W� To  DialogCloseStoryboard  MetroDialogTemplate �� 
TargetType4    .MahApps.Metro.Controls.Dialogs.BaseMetroDialog � FocusVisualStyle � RowDefinitions    	DialogTop � ColumnDefinitions    Title ��Name    
DialogBody � DataContext    DialogBottom �� Triggers :� RoutedEvent  WhiteColorBrush  
BlackBrush-  'System.Windows.Input.KeyboardNavigation�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      8Dialogs,clr-namespace:MahApps.Metro.Controls.Dialogs  5        5      �� 5   
   $Q Kpack://application:,,,/MahApps.Metro;component/Styles/Controls.Buttons.xaml?�6   %�  '��       7   &	 f     7  &	 �     &	 V    &	 �    7  '   h    7  �� 5	      8   " ��5
      .�5   
   ��  �@�FocusVisualStyle 5      Z� 5      �� 5      8   " ��5      .�5   
   ��  �@�FocusVisualStyle 5      Z� 5      �� 5      .��5   
   W� $ .9Q�6   $ 0:0:0X�5      $ 0:0:0.2D�5      $	 Opacity�5      $
 1X�5      5      �� 5      .��5   
   W� $ .9Q�6   $ 0:0:0X�5       $ 0:0:0.2D�5!      $	 Opacity�5"      $
 0X�5#      5$      �� 5&      "   5'      .R�5(   
   � #��z��6   .+�5)      �� |�.   6   Z� ._�5+      �  5,      �� 5-      $
��Auto �6(   �� 5.      $��* �6(   �� 5/      $
��Auto �6(   .+�51      �� $��0��6'   #��z 52   '   � 53      $��1��6    54      �� 55      $	��25* �6/   �� 56      $	��50* �6/   �� 57      $	��25* �6/   .+�5:      � $��1��6   $��0 10 0 0q�5;       5<      �� 5=   "   $
��Auto �60   �� 5>   "   $��* �60   .+�5@      �� $��0��6(   $��26(�5A   (   #��z��5B   (   #��z 5C   (   $
��Wrap=�5D   (   �� 5E      $&  PART_DialogBody_ContentPresenter��6/   $��1��5F   /   #��z 5G   /   # z 5H   /   5I      5J      �� 5K      $��2��6'   #��z 5L   '   5M      5N      5O       5P   
   :� 5Q      $ Loaded��6   [�5R      �� 5S      8��  6&   5U      5W      �� 5Y      "   6   .�5Z   
   ��  � ��8   5[      �� 5\   
    � ��$ Center=�5]      �� 5^   
    � ��$ Stretch=�5_      �� 5`   
    � ��# �  5a      �� 5b   
    � ��# �  5c      �� 5d   
    �@�FocusVisualStyle 5e      Z� �� 5f   
    �@ TabNavigation$ Cycle=�5g      �� 5h   
    �@ DirectionalNavigation$ Cycle=�5i      �� 5j   
    �@J�Opacity$ 0Q�5k      5l      5m      