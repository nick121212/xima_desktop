   M S B A M L   `   `   `  ����I  EMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MahApps.Metro.ControlsMahApps.Metro.Controls  5   	   '    !MahApps.Metro.Controls.GlowWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6metro$clr-namespace:MahApps.Metro.Controls     5   	   -   5          �Name$  
glowWindow��5   	    � Title$ 
GlowWindow��5   	   $	��300��5   	   $	��300��5   	    � WindowStyle$
 None=�5   	   
������  � ShowActivated .   � 
ResizeMode$ NoResize=�5   	    J� SnapsToDevicePixels .  J� Opacity$ 0Q�5   	    � 	Resources 5         OpacityStoryboard g� 	BeginTime	 �� TargetProperty
 �� 
TargetName O� KeyTime O� Value9  3System.Windows.Media.Animation.EasingDoubleKeyFrame   EasingFunction.  (System.Windows.Media.Animation.CubicEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode��%/  &	        �� 5   
   .��5      U� $ 00:00:00X�6,   $	 (UIElement.Opacity)�5   ,   $
 
glowWindow��5   ,   .\�5      �� $ 00:00:00��6'   $ 0Q�5   '     5      $ 00:00:00.600��6'   $ 1Q�5   '    5        5      $ EaseIn=�6$   5      5      5      5      .��5       !   MahApps.Metro.Controls.Glow  -   5          Name$
 glow��5       5!      5"      