   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 $   MenuScrollingVisibilityConverter  	Checkmark  
RightArrow  	DownArrow  UpArrow  �� 
TargetType �� Property  MenuBackgroundBrush �� Value �� 
TargetType J� SnapsToDevicePixels  	MetroMenu&    System.Windows.Media.TextOptions  MenuFontSize �� Padding  MetroContextMenu 	 ContextMenuBackgroundBrush 
 ContextMenuBorderBrush  ContextMenuFontSize ��Name ��Name �� 
ResourceId	 �� TypeInTargetAssembly
 ��Name-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation � IsSharedSizeScope   TabNavigation �� Triggers P� Property P� Value �� 
TargetName3  -System.Windows.Media.Effects.DropShadowEffect  MenuShadowColor   Color   
BlurRadius   ShadowDepth   	Direction   Opacity  MetroMenuItem �� RelativeSource �� AncestorType �� Triggers  TextBoxMetroContextMenu m� Command  MenuScrollButton �� BasedOn ��Name ��Name � ColumnDefinitions � RowDefinitions  �� LineUpCommand! `� ConverterParameter" `� 	Converter# �� FallbackValue$ �� Path% �� LineDownCommand  SubMenuBorderBrush  SubMenuBackgroundBrush& F�Name  CheckmarkFill' �Name( � AllowsTransparency) � HorizontalOffset* � VerticalOffset+ ��Name, P� 
SourceName  TopMenuItemSelectionStroke  TopMenuItemPressedStroke  TopMenuItemPressedFill  DisabledMenuItemForeground  DisabledMenuItemGlyphPanel- z� SharedSizeGroup. m� InputGestureText  RightArrowFill  MenuItemSelectionFill  MenuItemSelectionStroke�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      1System&clr-namespace:System;assembly=mscorlib  5      %�<  &	        &	      &	 c     &	 �     &	 �     (�� �     5      *MenuItem.SeparatorStyleKey+)&	 �    &	 7    &	     &	 �    7  &	     (�� g    5     $ MenuScrollViewer��"	 �)7  7   7  7  7   7  (�� �    5P     $ SubmenuContent��"	 �)(�� a    5Y     $ TopLevelHeaderTemplateKey��"	 m�)7  (�� L%    5�     $ TopLevelItemTemplateKey��"	 m�)7  (�� b*    5     $ SubmenuHeaderTemplateKey��"	 m�)7  7  (�� �4    5�     $ SubmenuItemTemplateKey��"	 m�)7  l� 5      6'   �5      <8M 0,5.1 L 1.7,5.2 L 3.4,7.1 L 8,0.4 L 9.2,0 L 3.3,10.8 Z�6[   �5      M 0,0 L 4,3.5 L 0,7 Z�69   �5	      M 0,0 L 3.5,4 L 7,0 Z�68   �5
      M 0,4 L 3.5,0 L 7,4 Z�66   �� 5      "  ��5      .�5   
   ��  � ��# �  5      �� 5   
    � �� .  5      �� 5   
    � ��$ 6,2,6,2q�5      �� 5   
    � �� 5      �� 5      " ��6"   .R�5      � $��0,6,0,4q�6    . .+�5      �� ���#E0E0E0$��1��5   $   $��20,0,1,1q�5   $   �� 5      
�������$��1��5   $   $��20,1,1,0q�5   $   5      5       5"      5#      �� 5%      "  o�5&      .�5'   
   ��  �@J�SnapsToDevicePixels . 5(      �� 5)   
    �@��ClearTypeHint$ Enabled=�5*      �� 5+   
    �@  TextFormattingMode$ Ideal=�5,      �� 5-   
    � ��# �  5.      �� 5/   
    � ��# � ��50      �� 51   
    � ��# �  52      �� 53   
    � ��# � ��54      �� 55   
    � ��# � ��56      �� 57   
    � ��# � ��58      �� 59   
    � �� 5:      �� 5;      " o�6"   .R�5<      �� #��z��6   #��z��5=      #��z��5>      # z��5?      # z 5@      ._�5A      �� $��0q�6)   # z 5B   )   5C      5D      5F      5G      �� 5I      "  ��5J      .�5K   
   ��  �@J�SnapsToDevicePixels . 5L      �� 5M   
    �@��ClearTypeHint$ Enabled=�5N      �� 5O   
    �@  TextFormattingMode$ Ideal=�5P      �� 5Q   
    � ��# � 	 5R      �� 5S   
    � ��$ 1q�5T      �� 5U   
    � ��# � 
 5V      �� 5W   
    �@�OverridesDefaultStyle . 5X      �� 5Y   
    �@�IsSharedSizeScope . 5Z      �� 5[   
    �@��HasDropShadow . 5\      �� 5]   
    � ��# � ��5^      �� 5_   
    � ��# �  5`      �� 5a   
    � ��# � ��5b      �� 5c   
    � ��# � ��5d      �� 5e   
    � ��# � ��5f      �� 5g   
    � �� 5h      �� 5i      " ��6"   .R�5j      �� $ 
LayoutRoot��6   
������ ._�5l      �� $ Border��6!   #��z��5m   !   #��z��5n   !   #��z��5o   !   # z��5p   !   # z 5q   !   ._�5s      �� $ SubMenuScrollViewer��6+   ��. ��5u   +   C� *�� $ MenuScrollViewer��"	 �+.��5v   "   �� $
 ItemsPresenter��61   $ Cycle=�5w   1    . $��0q�5y   1   # z 5z   1   $ Cycle=�5{   1   5|      5}      5~       5      P� 5�       �@��HasDropShadow . . �5�      �� $ 
LayoutRoot��6%    �@J�Effect 5�   "     5�   &   # �  67   $ 4Q�5�   7   $ 2Q�5�   7   $	 315Q�5�   7   $	 0.3Q�5�   7   5�      �� 5�      $ 
LayoutRoot��6%    �@��Padding$ 0,0,6,6q�5�   %   5�      5�      5�      5�      �� 5�      "  m�5�      .�5�   
   ��  � �� 5�      �� *HorizontalContentAlignment+ �� " ���� 5�   
    � �� 5�      �� *VerticalContentAlignment+ �� " ���� 5�   
    � ��
 ���� 5�      �� 5�   
    �@��PanningMode$
 Both=�5�      �� 5�   
    �@��IsFlicksEnabled .  5�      �� 5�   
    � �� 5�      C� *�� $ SubmenuItemTemplateKey��"	 m�+ 5�   
   P� 5�       �@m�Role$ TopLevelHeader=�5�      . �5�      ��  � ��$ 7,5,8,6q�5�      �� 5�       � �� 5�      C� *�� $ TopLevelHeaderTemplateKey��"	 m�+5�      P� 5�       �@m�Role$ TopLevelItem=�5�      . �5�      ��  � ��$ 7,5,8,6q�5�      �� 5�       � �� 5�      C� *�� $ TopLevelItemTemplateKey��"	 m�+5�      P� 5�       �@m�Role$ SubmenuHeader=�5�      . �5�      ��  � ��$ 2,6,2,6q�5�      �� 5�       � �� 5�      C� *�� $ SubmenuHeaderTemplateKey��"	 m�+5�      P� 5�       �@m�Role$ SubmenuItem=�5�      . �5�      ��  � ��$ 2,6,2,6q�5�      5�      5�      �� 5�      8��  .@�5�   
   m� $ ApplicationCommands.Cut��6   #���  5�      m� 5�   
   $ ApplicationCommands.Copy��6   #���  5�      m� 5�   
   $ ApplicationCommands.Paste��6   #���  5�      5�      �� 5�      "  ��5�       5�      Z� .�5�   
   ��  �@��	ClickMode$ Hover=�5�      �� 5�   
    � ��$ 0��5�      �� 5�   
    � ��$ 0��5�      �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      ]� 
������  . .+�5�      �� $ R1��6$   $��Right=�5�   $   
������ $��1��5�   $   �� 5�      $ B1��6$   $��Bottom=�5�   $   
������ $��1��5�   $   �� 5�      $ L1��6$   $
��Left=�5�   $   
������ $��1��5�   $   �� 5�      $ T1��6$   $	��Top=�5�   $   
������ $��1��5�   $   �� 5�      $ ContentContainer��6+   $��Center=�5�   +   $��6q�5�   +   $��Center=�5�   +   5�       5�      P� 5�       � �� . . �5�      �� $ R1��5�   %   # � ��5�   %    � ���� 5�      $ B1��5�   %   # � ��5�   %    � ���� 5�      $ L1��5�   %   # � ��5�   %    � ���� 5�      $ T1��5�   %   # � ��5�   %    � ��5�      5      5     5     �� 5     "  ��5      5     Z� .�5  
   ��  � ��$ Hidden=�5	     �� 5
  
    � ��$
 Auto=�5     �� 5  
    � �� 5     �� 5     " ��6"   .R�5     �  .  5     �� 5     $��* �6/    5     �� 5     $
��Auto �6,   �� 5     $��* �6,   �� 5     $
��Auto �6,   .+�5     �� $��0��6!   $��1��5  !   ._�5     �� #��z��65   5     �� 5     $��0��6'   #��Z  5  '   |�.  $��0��5   '   8��  ��5  '   ��  �� *TemplatedParent+y�5"     `� 5#  "   $! 0��6/   8"  $# Visibility.Collapsed��5%  /   .1�5&  &   �� $)$ #ComputedVerticalScrollBarVisibility�6.    5'  .   �� *TemplatedParent+�� 5(  &   $$ VerticalOffset�6.    5)  .   �� *TemplatedParent+�� 5*  &   $$ ExtentHeight�6.    5+  .   �� *TemplatedParent+�� 5,  &   $$ ViewportHeight�6.    5-  .   �� *TemplatedParent+5.  #   .��50     F� 8�� #��� ��51  #   52     �� 53     $��0��6'   #��Z% 55  '   |�.  $��2��57  '   8�� ��54  '   ��  �� *TemplatedParent+y�59     `� 5:  "   $	! 100��6/   8"  $# Visibility.Collapsed��5<  /   .1�5=  &   �� $)$ #ComputedVerticalScrollBarVisibility�6.    5>  .   �� *TemplatedParent+�� 5?  &   $$ VerticalOffset�6.    5@  .   �� *TemplatedParent+�� 5A  &   $$ ExtentHeight�6.    5B  .   �� *TemplatedParent+�� 5C  &   $$ ViewportHeight�6.    5D  .   �� *TemplatedParent+5E  #   .��5G     F� 8�� #��� ��5H  #   5I     5J     5K     5M     5N     �� 5P     " ��5Q     .R�5R  
   �� #���  6   $��1q�5S     #���  5T     ._�5U     �� 5V     5W     �� 5Y     " m�5Z     .R�5[  
   �  . .+�5\     �� $ Bg��6   #��z��5]     $��1q�5^     #��z��5_     $��1��5`     ]� 5a     .+�5b     �� $
 Icon��6#   $
��Icon��5c  #   $��4,0,6,0q�5d  #   # z 5e  #   $��Center=�5f  #   F� 5g     $& 
GlyphPanel��6   8��  #���  5i     $��LeftToRight=�5j     $y�	Collapsed=�5k     $��8,0,0,0q�5l     $��Center=�5m     $��Center=�5n     �� 5o     $��Header��6#   #��z��5p  #   ��. # z 5r  #   5s     � 5t     $' 
PART_Popup��6   ( . |�.  $) 1��5w     #��� -�5y     $��Bottom=�5z     $* -1��5{     ��5x     �� *IsSubmenuOpen+ �� *TemplatedParent+.��5|     �� $ 
LayoutRoot��6   
������ ._�5~     �� $+ SubMenuBorder��6%   ��.  ��5�  %   C� *�� $ SubmenuContent��"	 �+.��5�     �� $ SubMenuScrollViewer��6'   ��. ��5�  '   C� *�� $ MenuScrollViewer��"	 �+.��5�     �� $
 ItemsPresenter��6-   $ Cycle=�5�  -    . $��0q�5�  -   # z 5�  -   $ Cycle=�5�  -   5�     5�     5�     5�     5�      5�  
   P� 5�     " �@m�IsSuspendingPopupAnimation . . �5�     �� $ 
PART_Popup��5�      � ��$
 None=�5�     5�     P� 5�      5�     Z�  �@m�Icon. �5�     �� $
 Icon��5�      � y�$ 	Collapsed=�5�     5�     P� 5�      �@m�	IsChecked . . �5�     �� $ 
GlyphPanel��5�      � y�$ Visible=�5�     �� 5�     $
 Icon��5�      � y�$ 	Collapsed=�5�     5�     P� 5�     $, 
PART_Popup��5�      �@�HasDropShadow . . �5�     �� $ 
LayoutRoot��6    �@J�Effect 5�       5�     # �  6+   $ 4Q�5�  +   $ 2Q�5�  +   $	 315Q�5�  +   $	 0.3Q�5�  +   5�     �� 5�     $ 
LayoutRoot��6    �@��Padding$ 0,0,6,6q�5�     5�     P� 5�      �@m�IsHighlighted . . �5�     �� $ Bg��5�     # �  5�      � ��5�     P� 5�      �@J�IsKeyboardFocused . . �5�     �� $ Bg��5�     # �  5�      � ���� 5�     $ Bg��5�     # �  5�      � ��5�     P� 5�      �@m�IsSubmenuOpen . . �5�     �� $ Bg��5�     # �  5�      � ���� 5�     $ Bg��5�     # �  5�      � ��5�     P� 5�      � {� .  . �5�     �� # �  5�      � ���� 5�     $ 
GlyphPanel��5�     # �  5�      � ��5�     5�     �� 5�     " m�5�     .R�5�  
   �  . .+�5�     �� $ Bg��6   #��z��5�     $��1q�5�     #��z��5�     $��1��5�     ]� 5�     .+�5�     �� $
 Icon��6#   $
��Icon��5�  #   $��4,0,6,0q�5�  #   # z 5�  #   $��Center=�5�  #   F� 5�     $& 
GlyphPanel��6   8��  #���  5�     $��LeftToRight=�5�     $y�	Collapsed=�5�     $��8,0,0,0q�5�     $��Center=�5�     $��Center=�5�     �� 5�     $��Header��6#   #��z��5�  #   ��. # z 5�  #   5�     5�      5�  
   P� 5�      5�     Z�  �@m�Icon. �5�     �� $
 Icon��5�      � y�$ 	Collapsed=�5�     5�     P� 5�      �@m�	IsChecked . . �5�     �� $ 
GlyphPanel��5�      � y�$ Visible=�5      �� 5     $
 Icon��5      � y�$ 	Collapsed=�5     5     P� 5      �@m�IsHighlighted . . �5     �� $ Bg��5     # �  5	      � ��5
     P� 5      �@J�IsKeyboardFocused . . �5     �� $ Bg��5     # �  5      � ���� 5     $ Bg��5     # �  5      � ��5     P� 5      � {� .  . �5     �� # �  5      � ���� 5     $ 
GlyphPanel��5     # �  5      � ��5     5     �� 5     " m�5      .R�5!  
   �  . .+�5"     �� $ Bg��6   #��z��5#     #��z��5$     $��1��5%     � 5&      5'     �� 5(     $��24��6'   $- MenuItemIconColumnGroup��5)  '   $
��Auto �5*  '   �� 5+     $��4 �6'   �� 5,     $��* �6'   �� 5-     $��6 �6'   �� 5.     $- MenuItemIGTColumnGroup��6'   $
��Auto �5/  '   �� 50     $��17 �6'   .+�52     �� $
 Icon��6#   $
��Icon��53  #   $��1q�54  #   # z 55  #   $��Center=�56  #   F� 57     $& 
GlyphPanel��6   8��  #���  59     $��LeftToRight=�5:     $y�	Collapsed=�5;     $��5,0,0,0q�5<     $��Center=�5=     $��Center=�5>     �� 5?     $��2��6#   $��Header��5@  #   #��z��5A  #   ��. # z 5C  #   �� 5D     $��4��6   #��z��5E     #��z. 5F     $y�	Collapsed=�5G     F� 5H     $��5��6   8�� #���  5J     $��4,0,0,0q�5K     $��Center=�5L     5M     � 5N     $' 
PART_Popup��6   ( . |�.  $) -2��5Q     #��� -�5S     $��Right=�5T     $* -3��5U     ��5R     �� *IsSubmenuOpen+ �� *TemplatedParent+.��5V     �� $ 
LayoutRoot��6   
������ ._�5X     �� $+ SubMenuBorder��6%   ��.  ��5Z  %   C� *�� $ SubmenuContent��"	 �+.��5[     �� $ SubMenuScrollViewer��6'   ��. ��5]  '   C� *�� $ MenuScrollViewer��"	 �+.��5^     �� $
 ItemsPresenter��6-   $ Cycle=�5_  -    . $��0q�5a  -   # z 5b  -   $ Cycle=�5c  -   5d     5e     5f     5g     5h      5i  
   P� 5j     " �@m�IsSuspendingPopupAnimation . . �5l     �� $ 
PART_Popup��5m      � ��$
 None=�5n     5o     P� 5p      5q     Z�  �@m�Icon. �5r     �� $
 Icon��5s      � y�$ 	Collapsed=�5t     5u     P� 5v      �@m�	IsChecked . . �5x     �� $ 
GlyphPanel��5y      � y�$ Visible=�5z     �� 5{     $
 Icon��5|      � y�$ 	Collapsed=�5}     5~     P� 5     $, 
PART_Popup��5�      �@�HasDropShadow . . �5�     �� $ 
LayoutRoot��6    �@J�Effect 5�       5�     # �  6+   $ 4Q�5�  +   $ 2Q�5�  +   $	 315Q�5�  +   $	 0.3Q�5�  +   5�     �� 5�     $ 
LayoutRoot��6    �@��Padding$ 0,0,6,6q�5�     5�     P� 5�      �@m�IsHighlighted . . �5�     �� $ Bg��5�     # �  5�      � ���� 5�     $ Bg��5�     # �  5�      � ��5�     P� 5�      � {� .  . �5�     �� # �  5�      � ���� 5�     $ 
GlyphPanel��5�     # �  5�      � ��5�     5�     �� 5�     " m�5�     .R�5�  
   �  . .+�5�     �� $ Bg��6   #��z��5�     #��z��5�     $��1��5�     � 5�      5�     �� 5�     $��24��6'   $- MenuItemIconColumnGroup��5�  '   $
��Auto �5�  '   �� 5�     $��4 �6'   �� 5�     $��* �6'   �� 5�     $��6 �6'   �� 5�     $- MenuItemIGTColumnGroup��6'   $
��Auto �5�  '   �� 5�     $��17 �6'   .+�5�     �� $
 Icon��6#   $
��Icon��5�  #   $��1q�5�  #   # z 5�  #   $��Center=�5�  #   F� 5�     $& 
GlyphPanel��6   8��  #���  5�     $��LeftToRight=�5�     $y�	Collapsed=�5�     $��5,0,0,0q�5�     $��Center=�5�     $��Center=�5�     �� 5�     $��2��6#   $��Header��5�  #   #��z��5�  #   ��. # z 5�  #   �� 5�     $��4��6   #��z��5�     #��z. 5�     5�     5�      5�  
   P� 5�      5�     Z�  �@m�Icon. �5�     �� $
 Icon��5�      � y�$ 	Collapsed=�5�     5�     P� 5�      �@m�	IsChecked . . �5�     �� $ 
GlyphPanel��5�      � y�$ Visible=�5�     �� 5�     $
 Icon��5�      � y�$ 	Collapsed=�5�     5�     P� 5�      �@m�IsHighlighted . . �5�     �� $ Bg��5�     # �  5�      � ���� 5�     $ Bg��5�     # �  5�      � ��5�     P� 5�      � {� .  . �5�     �� # �  5�      � ���� 5�     $ 
GlyphPanel��5�     # �  5�      � ��5�     5�     5�     