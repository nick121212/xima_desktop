   M S B A M L   `   `   `  ����.  *XIMALAYA.PCDesktop.Modules.AlbumListModuleF    @XIMALAYA.PCDesktop.Modules.AlbumListModule.Views.AlbumDetailView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      V RXIMALAYA.PCDesktop.Controls, Version=1.1.0.0, Culture=neutral, PublicKeyToken=null1	MControls!http://ximalaya.com/xaml/controls  5      I EMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=null;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      .��5	      � $	�� 10q�6     � RowDefinitions  5
      �� 5      $
��Auto �6   �� 5      $��* �6   .+�5      �  � ColumnDefinitions 5      �� 5      $
��Auto �6   �� 5      $��* �6     5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5      )  #XIMALAYA.PCDesktop.Controls.MyImage  $��4��6   $	��Top=�5         DefaultSource$ 	album.png��5      $	��140��5       $	��140��5!         Source 5      �� *AlbumData.AlbumCoverUrl140+5!      �� 5#      $��1��6   $��0��5$      $��10 0 0 0q�5%      $��16(�5&      $
��Bold"�5'      $
��Left=�5(      ��5)      �� *AlbumData.Title+�� 5+       �� Orientation$ 
Horizontal=�6   $��10 0 0 0q�5,      $��1��5-      $��1��5.      .+�50        $��30��51      $��30��52      $ 
person.jpg��53       50      �� *AlbumData.AvatarPath+53      �� 54      $
��Left=�6   ��55   	   �� *AlbumData.NickName+ �� StringFormat$ 	{0}创建��,  &XIMALAYA.PCDesktop.Controls.PathButton  57         IsSingle .    AccentColorBrush   Fill# �   59      $��0q�5:      
���   �   
IconHeight$ 15Q�5=      	   	IconWidth$	 15Q�5>      $��20��5?      $
��Auto��5@      
   IconData
 57      �� *TrackCountPath+*  $XIMALAYA.PCDesktop.Controls.PathData   Instance �� Source# Z    TextContent 5<      �� *AlbumData.TrackCount+5@      5B      �� 5D      $ 
Horizontal=�6   $��	10 10 0 0q�5E      $��1��5F      $��2��5G      .+�5I          WhiteColorBrush#���  6     BlackColorBrush# �  5J      $	��5 0q�5K         
IconMargin$ 8 0 5 0q�5L      $ 15Q�5P      $	 15Q�5Q      $��30��5R      $��30��5S       d� 	IsChecked 5M      �� *BassEngine.IsPlaying+ �� Mode$ OneWay=���5N      �� *BassEngine.PlayCommand+��5O      ��  �� *Self+ �� Path$ 	IsChecked�   IconDataChecked 5T      �� *ToolbarPausePath+# Z 
 5U      �� *ToolbarPlayPath+# Z 5V        5X      #���  6   # �  5Y       . $	��5 0q�5[      $ 15Q�5\      $	 15Q�5]      $��30��5^      $��30��5_      
 5`      �� *VistorUserPath+# Z 5a        5c      #���  6   # �  5d       . $	��5 0q�5f      $ 15Q�5g      $	 15Q�5h      $��30��5i      $��30��5j      
 5k      �� *SubscribeAlbumPath+# Z 5l      5n      5p      5q      5r      