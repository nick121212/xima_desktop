   M S B A M L   `   `   `  ����V  RXIMALAYA.PCDesktop.Controls, Version=1.1.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:XIMALAYA.PCDesktop.ControlsXIMALAYA.PCDesktop.Controls  5   "   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089S OXIMALAYA.PCDesktop.Tools, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI EMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=null  �� MergedDictionaries �� Source   AlbumItemTemplate �� DataType!   MahApps.Metro.Controls.Tile �� Path �� RelativeSource �� Mode �� AncestorType  ControlBorderBrush � RowDefinitions)   #XIMALAYA.PCDesktop.Controls.MyImage   DefaultSource	 � ToolTip
   Source � Orientation �� TextAlignment  LongToDateConverter �� 	Converter �Name1   +XIMALAYA.PCDesktop.Controls.RotationManager   Angle  AccentColorBrush2 E� IsClosed E� 
StartPoint �� Point �� Triggers �� Value �� Binding �� 
TargetName �� Property �� Value  AlbumListStyle �� 
TargetType  ListItemBaseTemp �� BasedOn  MetroAlbumItemTemplate/  )XIMALAYA.PCDesktop.Tools.CommandSingleton   Instance �� Source  MetroAlbumListStyle+   %XIMALAYA.PCDesktop.Controls.TilePanel�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5   "   *toolshttp://ximalaya.com/xaml/tools  5   "   8	converter(http://ximalaya.com/xaml/tools/converter  5   "   ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   "   7	MControls)clr-namespace:XIMALAYA.PCDesktop.Controls  5   "     5      �� 5	   
   $X Rpack://application:,,,/XIMALAYA.PCDesktop.Controls;component/Styles/Converter.xaml?�6   �� 5
   
   $a [pack://application:,,,/XIMALAYA.PCDesktop.Controls;component/Styles/ListBoxItem.Common.xaml?�6   %>
  &	        7  &	 $    7  7   &	 �    &	 :	    7  7  �� 5      " ��6-   .R�5   
      
������ $	��220��5      $	��180��5      $��5q�5      ��5      �� $&  DataContext.ShowAlbumInfoCommand� �� $ FindAncestor=�" ����5      �� *	AlbumID+��5      �� 5      ��5      �� 5      .R�5      �� $��1q�6%   $	��180��69   #���  6E   ._�5   "   �  5   &   �� 5   *   $	��180 �68   �� 5   *   $��60 �68   .+�5         $	��180��5!      $	��180��5"      $ 	album.png��5$      	 5       �� *Title+
 5#      �� *AlbumCoverUrl290+5$      � 5%   &   $��1��60   $ Vertical=�6=   $��Center=�6T   .+�5&   *   �� $	��180��6N   $��NoWrap=�6Z   $ Center=�6p   $��Center=�6�   	 64   �� *Title+��6�   �� *Title+�� 5'   *   $	��180��64   $��WrapWithOverflow=�6@   $ Center=�6`   $��Center=�6w   ��6�   �� *LastUptrackDate+8   5(   '   � 5)   &   $ 	isOverCon��6+   $��Bottom=�6>   $��Right=�5*   +   $y�Hidden=�5+   +   $��90��5,   +   $��90��66   .+�5-   *   �� $��完本��60   $��Right=�5.   0   $��Bottom=�5/   0   $��Center=�50   0   $	 -45Q�51   0   F� 52   *   
������ #���  6D   ��53   .   B� 54   2   .��55   6   E�  . $ 45,90&�6Q   .��56   :   �� $ 90,90&�6F   �� 57   :   $ 90,45&�6F   58   7   59   3   5;   +   5<   '   5=   #   5>       5?      �� 5@   "   $ 2��6N    6.   �� *SerialState+.a�5A   &   �� $ 	isOverCon��6-    � y�$ Visible=�6Z   5B   #   5D      5F      5H      5I      �� 5J      " ��6#   8   .�5K   
   ��  � ��
 ���� 6'   �� 5L   
    � ��8  6,   5M      �� 5P      " ��62   .R�5Q   
      
������ $��0q�5T      ��5R      ��  �� *FindAncestor+$ ListBoxItemL�$ ActualWidth���5S      ��  �� *FindAncestor+$ ListBoxItemL�$ ActualHeight���5U      �� $ AlbumDetailCommand�# Z ��5V      �� *	AlbumID+��5W      � 5X      .+�5Y        $��Center=�6   $ 	album.png��5[      
 5Z      �� *AlbumCoverUrl290+5[      �� 5\      $��Bottom=�6   $��Center=�5^   
   ���	#66000000
�������$��0q�5a   
   ��5]   
   ��  �� *FindAncestor+$ ListBoxItemL�$ ActualWidth���5b   
   �� *Title+5c      5e      5f      �� 5g      " ��6(   8   .�5h   
   ��  � ��
 ���� 6'   �� 5i   
    �@ WidthPix$ 1��69   �� 5j   
    �@ 	HeightPix$ 1��6:   �� 5k   
    � ��8  6,   5l      5n      