   M S B A M L   `   `   `  ����V  RXIMALAYA.PCDesktop.Controls, Version=1.1.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:XIMALAYA.PCDesktop.ControlsXIMALAYA.PCDesktop.Controls  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   MyRadioButtonTemplate  �� 
TargetType/    )XIMALAYA.PCDesktop.Controls.MyRadioButton'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration �� TargetProperty	 W� To �� 
TargetName t�Name		 t� To
 �� Source ��Name ��Name J� Opacity �� Stretch    SuperScriptSize �� Angle �� ScaleX �� ScaleY F�Name    IconData    IconFill    	IconWidth    
IconHeight    
IconMargin � UseLayoutRounding ��Name K� ZIndex �� 
TargetType �� Property �� Value�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      3local)clr-namespace:XIMALAYA.PCDesktop.Controls  5      %�	  &	        '   �    7   �� 5      "    64   .R�5   
   � }�.  5        5      CommonStates��. 5	        
Normal��6"     5
      	MouseOver��. 5      �� .��5      W� $ 0:0:0.2D�6.   $ Opacity�6A   $	 0.8X�6e   5      5        5      Pressed��. 5      �� .��5      W� $ 0:0:0.2D�6.   $ Opacity�6A   $ 1X�6e   5      5        5      Disabled��. 5      �� 5      5      5        5      CheckStates��. 5        Checked��. 5      �� .��5   	   W� $ 0:0:0.2D�6   $ IconDataPath��6,   $ Opacity�6Q   $ 1X�6u   W� 5    	   $ 0:0:0.2D�6   $ BackgroundGradient��6,   $ Opacity�6W   $	 0.8X�6{   t� 5!   	   $ PART_CheckBorderAnimation��6   $ 0:0:0.2D�6?   $ 
Background��6R   $ BorderThickness�6u   	 6�   �� *CheckedBorderThickness+
 �� *Self+5"   	   5#        5$      	Unchecked��. 5%      �� .��5&   	   W� $ 0:0:0.1D�6   $ IconDataPath��6,   $ Opacity�6Q   $ 0X�6u   W� 5'   	   $ 0:0:0.1D�6   $ BackgroundGradient��6,   $ Opacity�6W   $ 0X�6{   t� 5(   	   $ PART_BorderAnimation��6   $ 0:0:0.1D�6:   $ 
Background��6M   $ BorderThickness�6p   #	 z��6�   5)   	   5*      5+        5,      FocusStates��. 5-        Focused��. 5.      �� 50      51        52      	Unfocused��6"   53      .+�55      �� $ 
Background��6   #��z��56      #��z��57      ._�58      � #��z��6   .+�5;      �� $ BackgroundGradient��6    #��z��5<       $ 0Q�5=       $
 Fill=�5>       #��z 5?       #��z 5@       $	��Top=�5A       $��Right=�5B       z�5C      V� 5D      ~�5F   &   �� $	 -45Q�66   �� 5G   &   $ 2Q�65   $ 2Q�6@   5I      5K      F� 5M      $ IconDataPath��6   $	��Top=�5N      $��Right=�5O      $ 0Q�5P      #��z 5Q      #��z 5R      #��z 5S      #��z 5T      $
 Fill=�5U      #��z 5V       .  5X      �� 5Z      $ contentPresenter��6'   $ -1��5[   '   #��z��5\   '   #��z��5]   '   #��z��5^   '   #��z��5_   '   #��z��5`   '   5a      5b      5c      5d      �� 5f      "   6   .�5g   
   ��  � ��8   6%   �� 5h   
    � ��$ Center=�65   �� 5i   
    � ��$ Center=�67   �� 5j   
    � ��$ Center=�60   �� 5k   
    � ��$ Center=�6.   5l      5n      