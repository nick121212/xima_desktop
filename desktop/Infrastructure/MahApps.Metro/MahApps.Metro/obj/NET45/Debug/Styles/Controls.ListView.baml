   M S B A M L   `   `   `  ����I  EMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MahApps.Metro.ConvertersMahApps.Metro.Converters  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089/    )MahApps.Metro.Converters.ToUpperConverter   ToUpperConverter " MetroGridViewScrollViewerStyle  �� 
TargetType �� BasedOn �� Property �� Value �� 
TargetType J� SnapsToDevicePixels � ColumnDefinitions � RowDefinitions �� AllowsColumnReorder	 �� RelativeSource!
 �� ColumnHeaderContainerStyle �� ColumnHeaderToolTip �� ColumnHeaderStringFormat �� ColumnHeaderContextMenu �� ColumnHeaderTemplate �� Columns# �� ColumnHeaderTemplateSelector ��Name �� CanContentScroll-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation ��Name � Cursor �� ScrollableWidth � Maximum � Minimum �� Orientation, �� %ComputedHorizontalScrollBarVisibility �� ViewportWidth �� ViewportSize � Value �� Mode �� ScrollableHeight*  �� #ComputedVerticalScrollBarVisibility! �� ViewportHeight  MetroListView  
BlackBrush  
WhiteBrush" ��Name# �� Triggers$ P� Property% P� Value& �� 
TargetName  
GrayBrush9  VirtualisedMetroListView  MetroListViewItem  
GrayBrush1' � 	Resources( �� AncestorType) �� Path* �� Triggers+ �� Binding, �� Value 	 AccentSelectedColorBrush 
 GrayNormalBrush- ^� 
Conditions. �� Binding/ �� Value0 ��Name  AccentColorBrush  AccentColorBrush31 ]� 
Conditions2 �� Property  AccentColorBrush2  
GrayBrush7 ' #NonSelectableListViewContainerStyle   AlternateRow1BackgroundBrush   AlternateRow2BackgroundBrush  GridViewColumnHeaderGripper3 �� Padding  MetroGridViewColumnHeader4 J� IsHitTestVisible5 n�Name  
GrayBrush86 �� 	Converter7 � ActualWidth8 � ActualHeight�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      5
Converters&clr-namespace:MahApps.Metro.Converters  5      %#   &	        &	      7$�&	 �    &	 s    7  &	 ~    &	      &	 �    &	 �    7  7   '�� �    7     5      6"   �� 5      "  ��5      8   .�5
   
   ��  � |� .  5      �� 5   
    � �� 5      �� 5      " ��6"   .R�5      � #��z��6    .  5      �� 5      $��* �6/   �� 5      $
��Auto �6/    5      �� 5      $��* �6,   �� 5      $
��Auto �6,   .+�5      ]� #��z��6$   .+�5      �� $	��Top=�6+   |�.  $��Hidden=�5   +   $��Hidden=�5   +   .��5   "   �� $��2,0,2,0q�5&   =   # z 5'   =    5   =   �� **(TemplatedParent.View.AllowsColumnReorder+	 �� *TemplatedParent+
 5   =   �� *1/TemplatedParent.View.ColumnHeaderContainerStyle+	 �� *TemplatedParent+ 5    =   �� **(TemplatedParent.View.ColumnHeaderToolTip+	 �� *TemplatedParent+ 5!   =   �� */-TemplatedParent.View.ColumnHeaderStringFormat+	 �� *TemplatedParent+ 5"   =   �� *.,TemplatedParent.View.ColumnHeaderContextMenu+	 �� *TemplatedParent+ 5#   =   �� *+)TemplatedParent.View.ColumnHeaderTemplate+	 �� *TemplatedParent+ 5$   =   �� *TemplatedParent.View.Columns+	 �� *TemplatedParent+ 5%   =   �� *31TemplatedParent.View.ColumnHeaderTemplateSelector+	 �� *TemplatedParent+5'   =   5(      �� 5)      $! PART_ScrollContentPresenter��65   # z��5*   5   #��z��5+   5   #��z��5,   5   $ Local=�5-   5   # z 5.   5   5/      �� 50      $ PART_HorizontalScrollBar��6$   $ Arrow��51   $   # z 52   $   $	 0.0Q�53   $   $ 
Horizontal=�54   $   $��1��55   $   #y�z 56   $   # z 58   $    57   $   �� *HorizontalOffset+$ OneWay=�	 �� *TemplatedParent+58   $   �� 59      $ PART_VerticalScrollBar��6$   $ Arrow��5:   $   $��1��5;   $   # z 5<   $   $	 0.0Q�5=   $   $ Vertical=�5>   $   #y�z  5?   $   # z! 5A   $    5@   $   �� *VerticalOffset+$ OneWay=�	 �� *TemplatedParent+5A   $   5Q      5R      5T      5U      �� 5\      "  ��5]      .�5^   
   ��  � ��# �  5_      �� 5`   
    � ��# �  5a      �� 5b   
    � ��$ 0 1 0 0q�5c      �� 5d   
    � �� .  5e      �� 5f   
    �@��AlternationCount$ 2��5g      �� 5j   
    �@J�SnapsToDevicePixels . 5k      �� 5l   
    �@�OverridesDefaultStyle . 5m      �� 5n   
    � ��$
 Auto=�5o      �� 5p   
    � ��$
 Auto=�5q      �� 5r   
    � ��$ Center=�5s      �� 5t   
    � �� 5u      �� 5v      " ��6"   .R�5w      �� $" Border��6   #��z��5x      #��z��5y      #��z��5z       . ._�5|      �� #��z��6'   #���  5}   '   .��5~      �� 5      5�      # 5�      P� 5�      $ �@��
IsGrouping% . . �5�      ��  � �� .  5�   %   5�      P� 5�      $ � {�% .  . �5�      �� $& Border��6%   # �  5�   %    � ��5�      5�      5�      5�      �� 5�      "  ��5�      8   .�5�   
   ��  �@%�IsVirtualizing . 5�      �� 5�   
    �@%�VirtualizationMode$ 	Recycling=�5�      �� 5�   
   " �@��IsDeferredScrollingEnabled . 5�      �� 5�   
    � �� . 5�      5�      �� 5�      "  ��5�      .�5�   
   ��  � ��# �  5�      �� 5�   
    � ��$ Stretch=�5�      �� 5�   
    � ��$ Center=�5�      �� 5�   
    � ��$ 25��5�      �� 5�   
    � ��$ 0,0,0,0q�5�      �� 5�   
    � ��# �  5�      �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      �� $" Bd��6   #��z��5�       . ._�5�      � .+�5�      �� #��z��63   ' 5�   "   ���� 5�   &   '��       "  ��6,   .�5�   *   ��  � �� 5�   1   �� 	 �� "( ��$) 
Foreground�* 5�   *   �� 5�   .   + 6:   �� $) 
IsSelected�	 �� "( ��, True5�   :   .a�5�   2   ��  � ��# � 	 5�   9   5�   /   �� 5�   .   + 6:   �� $) 	IsEnabled�	 �� "( ��	, False5�   :   .a�5�   2   ��  � ��# � 
 5�   9   5�   /   ^� 5�   .   - 5�   2   �� 5�   6   . 6@   �� $) 	IsEnabled�	 �� "( ��	/ False5�   @   �� 5�   6   . 6@   �� $) 
IsSelected�	 �� "( ��/ True5�   @   0�5�   2   �� 5�   6    � ��# � 	 5�   =   5�   /   5�   '   5�   #   5�      �� 5�      $0 contentPresenter��6/   $y�	Collapsed=�5�   /   5�      5�      # 5�      P� 5�      % 5�   "   Z� $ �@��ColumnCollection. �5�      �� $& contentPresenter��6%    � y�$ Visible=�5�   %   5�      P� 5�      $ �@��
IsSelected% . . �5�      �� $& Bd��6%    � �� �	#FF143c655�   %   �� 5�      $& Bd��5�   %   # �  5�   %    � ��6R   �� 5�      # � 	 5�   %    � ��5�      P� 5�      $ �@J�IsMouseOver% . . �5�      �� $& Bd��6%   # �  5�   %    � ��5�      ]� 5�      1 5�      �� 5�   "   2 �@��
IsSelected/ . 5�   ,   �� 5�   "   2 �@��IsSelectionActive/ . 5�   ,   ./�5�      �� $& Bd��5�   %   # �  5�   %    � ���� 5�      $& Bd��5�   %    � �� �	#FF143c655�   %   �� 5�      # � 	 5�   %    � ��5      ]� 5     1 5     �� 5  "   2 � {�/ .  5  ,   �� 5  "   2 �@��
IsSelected/ . 5  ,   /�5     �� 5	  "   $& Bd��6)   # �  5  )    � ��5     5     5     5     �� 5     "  ��5     .�5  
   ��  � ��# �  5     �� 5  
    � ��$ Stretch=�5     �� 5  
    � ��$ Center=�5     �� 5  
    � ��$ 25��5     �� 5  
    � ��$ 0,0,0,0q�5      �� 5!  
    � �� .  5"     �� 5#  
    � ��# �  5$     �� 5%  
    � �� 5&     �� 5'     " ��6"   .R�5(     �� $" Bd��6   #��z��5)     #��z��5*      . ._�5,     �� #��z��6/   5-     # 5.     P� 5/     $ �@J�IsMouseOver% . . �51     �� $& Bd��6%    � �� �#e0eff853  %   54     56     58     * 59  
   P� 5:     $ �@��AlternationIndex$% 0��5;     . �5<     ��  � ��# �  5=     5>     P� 5?     $ �@��AlternationIndex$% 1��5@     . �5A     ��  � ��# �  5B     �� 5C      � ��$ 0 1 0 1q�5D     5E     5G     �� 5I     "  n�5J     .�5K  
   ��  � ��$ 18��5L     �� 5M  
    � ��
 �����5N     �� 5O  
    � �� 5P     �� 5Q     " n�6"   .R�5R     �� #3 z��6   
������ $��0 0 0 2q�5T     ._�5U     �� $��Center=�6$   $��1��5V  $   #��z��5W  $   5X     5Y     5[     5\     �� 5^     "  ��5_     .�5`  
   ��  � ��# �  5a     �� 5b  
    �@J�SnapsToDevicePixels . 5c     �� 5d  
    � ��$
 Left=�5e     �� 5f  
    � ��$ Center=�5g     �� 5h  
    � ��$ 4 2 4 2q�5i     �� 5j  
    � �� 5k     �� 5l     " ��6"   .R�5m     � .+�5n     �� 
������ 4 . 5o  $   �� 5p     $" HeaderBorder��6!   #3 z��5q  !   ._�5r     �� $0 HeaderContent��6/   #��z��5s  /   #��z��5t  /   $��0,0,0,1q�5u  /   #��z��5v  /   #��z��5w  /   ��. # z 5y  /   5z     n� 5{     $5 PART_HeaderGripper��6    $��Right=�5|      $��0,0,-9,0q�5}      8��  5~      5     # 5�     P� 5�     $ � ��% . . �5�     �� $& HeaderBorder��6%   # �  5�  %    � ���� 5�     $& HeaderContent��6%    � ��$ 1,1,0,0q�5�  %   5�     P� 5�     $ � {�% .  . �5�     �� # � ��5�  %    � ��5�     5�     5�     �� 5�  
    � �� 5�     �� 5�     .R�5�     �� $��SemiBold"�6    ��5�      �� 86  5�     5�     * 5�  
   P� 5�     $ �@��Role$% Floating=�5�     . �5�     ��  �@J�Opacity$	 0.7Q�5�     �� 5�      � �� 5�     �� 5�     " ��6*   .R�5�     �� $��PART_FloatingHeaderCanvas��6%   .+�5�  "   �� ���	#60000000#��z7 5�  ,   #��z8 5�  ,   5�     5�     5�     5�     5�     �� 5�     "  ��6   8   5�     5�     