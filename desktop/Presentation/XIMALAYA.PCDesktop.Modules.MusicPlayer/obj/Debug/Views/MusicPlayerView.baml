   M S B A M L   `   `   `  ����Z  VWPFSoundVisualizationLib, Version=0.4.5247.32420, Culture=neutral, PublicKeyToken=nulleHclr-namespace:WPFSoundVisualizationLib;assembly=WPFSoundVisualizationLibWPFSoundVisualizationLib  5	      * &XIMALAYA.PCDesktop.Modules.MusicPlayerB   <XIMALAYA.PCDesktop.Modules.MusicPlayer.Views.MusicPlayerView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      I EMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=null;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      V RXIMALAYA.PCDesktop.Controls, Version=1.1.0.0, Culture=neutral, PublicKeyToken=null1	MControls!http://ximalaya.com/xaml/controls  5      S OXIMALAYA.PCDesktop.Tools, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null4tools(http://ximalaya.com/xaml/tools/converter  5      TsoundHclr-namespace:WPFSoundVisualizationLib;assembly=WPFSoundVisualizationLib  5	        � 	Resources  5       �� MergedDictionaries �� SourceB  <XIMALAYA.PCDesktop.Tools.Converter.TimeSpanToDoubleConverter   TimeSpanToDoubleConverter:  4XIMALAYA.PCDesktop.Tools.Converter.TimeSpanConverter  TimeSpanConverter  BoolToVisibility�� 5       5      �� 5      $V Ppack://application:,,,/XIMALAYA.PCDesktop.Controls;component/Themes/Generic.xaml?�6   %W   &	        &	      &	 &       5      6%     5      69   �� 5      6=   5      .��5      � $��Center=�6   $	��0 5q�6#    � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5      �� 5      $
��Auto �6   �� 5      $��* �6   �� 5       $
��Auto �6   �� 5!      $
��Auto �6   .+�5%      �� $��3��6   $��1��6    �� Orientation$ 
Horizontal=�6,   .+�5'      /   )WPFSoundVisualizationLib.SpectrumAnalyzer  -   5          Name$ SpectrumAnalyzer��5'      $
��10 0q�5(   
   $	��200��5)   
   ��5*   
   ��  �� RelativeSource �� *FindAncestor+ �� AncestorType$ 	WrapPanelL�	 �� Path$	 ActualHeight�
   BarStyle
 5+      �� 5,       �� 
TargetType" ��6   .�5-      ��  �� Property � �� �� Value 5.   	   �� 5/   
    �� 
StartPoint$ 0.5,0&�6    �� EndPoint$ 0.5,1&�61   BarBrush��.��50      �   AccentColor � Color# �  6    � Offset$ 0Q�6>   � 51        AccentColor4# �  6   $ 1Q�6?   52      54   	   55         	PeakStyle 57      �� 58      " ��6   .�59      ��  � �� 5:   	   �� 5;   
     AccentColor2 �� Color# �  6   5=   	   5>      5@      0  *XIMALAYA.PCDesktop.Controls.MyToggleButton  5B      $��30��6   $��30��5C         
BorderType$ Ellipse=�5E        AccentColorBrush2#���  5F        AccentColorBrush#���  5G   '   #���  5H      $��1q�5I       d� 	IsChecked 5D      �� *BassEngine.IsMuted+$��1��5L   (      ContentChecked$ 2��5O   /   5P      ,  &XIMALAYA.PCDesktop.Controls.PathButton  5T         Fill
 �����$	��5 0q�5V   #   #���  5W   #      
IconHeight$ 10Q�5X   #      	IconWidth$ 10Q�5Y   #   $��20��5Z   #   $��20��5[   #    5T      �� *BassEngine.IsMuted+   IconDataChecked 5\      �� *	MutedPath+*  $XIMALAYA.PCDesktop.Controls.PathData   Instance �� Source# Z    IconData 5]   #   �� *
VolumePath+# Z 5^      �� 5_      $��2q�6   $��70��5`      $��5��5a       � Maximum$ 1Q�5b       � Minimum$ 0Q�5c        � LargeChange$	  0.2Q�5d      ! � SmallChange$	! 0.1Q�5e        
FlatSlider#���  5g      " � Value" 5f      �� *BassEngine.Volume+5g        5h      $ FalseY�6   
 �����$	��5 0q�5j   #   #���  5k   #   $ 15Q�5l   #   $ 15Q�5m   #   $��30��5n   #   $��30��5o   #   #   IsSingle# .  5q   #   �� *ToolbarPrevPath+# Z 5r        5s      
 �����$	��5 0q�5t   #   $   
IconMargin$$ 10 0 5 0q�5u      #���  5v   #   $ 25Q�5z   #   $ 25Q�5{   #   $��50��5|   #   $��50��5}   #    5w   #   �� *BassEngine.IsPlaying+% �� Mode$% OneWay=���5x   #   �� *BassEngine.PlayCommand+��5y   #   ��  �� *Self+$	 	IsChecked� 5~   #   �� *ToolbarPausePath+# Z  5   #   �� *ToolbarPlayPath+# Z 5�        5�      $ FalseY�6   
 �����$	��5 0q�5�   #   #���  5�      $ 15Q�5�   #   $ 15Q�5�   #   $��30��5�   #   $��30��5�   #   # .  5�   #   �� *ToolbarNextPath+# Z 5�      5�      )  #XIMALAYA.PCDesktop.Controls.MyImage  5�      $��0��6   $��1��5�   
   $��5q�5�   
   $��Center=�5�   
   $��32��5�   
   $��32��5�   
   &   DefaultSource$& 
person.jpg��5�   
   '   Source' 5�   
   �� *SoundData.CoverSmall+5�   
   � 5�      $��1��6	   $��1��6   .+�5�      �� $
��Wrap=�6   $��	0 0 100 0q�5�   	   $��14(�5�   	   $��Center=�5�   	   ��5�   	   �� *SoundData.Title+5�   	   �� 5�      $ 
Horizontal=�6   $��Right=�5�      $��Center=�5�      .+�5�      �� $��Right=�6   $��Center=�5�   
   ��5�   
   �� *TotalTimeSpan+( �� ElementName$( metroSlider��) �� 	Converter#) [ �� 5�      $��Right=�6   $��Center=�5�   
   ��5�   
   �� *
Duration+$( metroSlider��#) [ * �� StringFormat$*  / {0}��5�      5�      � 5�      $��4��6	   $��0��5�       5�      �� 5�      $
��Auto �6   �� 5�      $��* �6   .+�5�      -  'XIMALAYA.PCDesktop.Controls.MetroSlider  -   5        +  Name$+ metroSlider��5�      $ 0Q�5�   $   $��10��5�       	 WhiteColorBrush,   ThumbBackground#, � 	 5�   $   -   ThumbForeground#- �  5�   $    
 AccentColorBrush4.   TrackBackgroundBack#. � 
 5�   $   /   TrackBackgroundFront#/ �  5�   $   0 K� ZIndex$0 10��5�   $   $
  5000Q�5�   $   $
! 1000Q�5�   $    5�   $   ��  �� *Self+$	 Duration�1   TotalTimeSpan1 5�   $   ��  �� *Self+$	 Value�2   Duration2 5�   $   �� *BassEngine.TotalTime+#) [  " 5�   $   �� *BassEngine.CurrentTime+#) [  3   Process3 5�   $   �� *BassEngine.Process+��5�   $   ��  �� *FindAncestor+$
 GridL�$	 ActualWidth�5�      5�      5�      5�      