   M S B A M L   `   `   `  ����I  EMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MahApps.Metro.ControlsMahApps.Metro.Controls  5      =#clr-namespace:MahApps.Metro.ActionsMahApps.Metro.Actions  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35  �� MergedDictionaries �� Source   HeaderTemplate ]�Name ��Name  MetroCircleButtonStyle �� RelativeSource �� AncestorType#    MahApps.Metro.Controls.Flyout �� Path �� Mode.  (System.Windows.Interactivity.Interaction   Triggers/  )System.Windows.Interactivity.EventTrigger	   	EventName.  (System.Windows.Interactivity.TriggerBase
   Actions/   )MahApps.Metro.Actions.SetFlyoutOpenAction   Value8  2System.Windows.Interactivity.TargetedTriggerAction   TargetObject J� OpacityMask j� Stretch !� Visual J� Clip � UseLayoutRounding �� Left
 �� Top �� Stretch ��Name �� Triggers �� Value �� Binding �� 
TargetName �� Property �� Value �� ScaleX �� Angle  FlyoutTemplate �� 
TargetType �Name'  !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup!   States   System.Windows.VisualState"   
Storyboard# ��Name$ g� 	BeginTime% �� TargetProperty& �� 
TargetName9	  3System.Windows.Media.Animation.EasingDoubleKeyFrame' O� KeyTime( O� Value) 	  EasingFunction.
  (System.Windows.Media.Animation.CubicEase7  1System.Windows.Media.Animation.EasingFunctionBase*   
EasingMode+ W� From	, W� To- g� Duration. ��Name/    HeaderTemplate0 �� Triggers1 �� 
TargetType-  'System.Windows.Input.KeyboardNavigation  FlyoutForegroundBrush  FlyoutBackgroundBrush�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      1Controls$clr-namespace:MahApps.Metro.Controls  5      Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      /Actions#clr-namespace:MahApps.Metro.Actions  5        5      �� 5   
   $G Apack://application:,,,/MahApps.Metro;component/Styles/Colors.xaml?�6   %i  &	       &	 B    '   �    7   7  �� 5      .R�5   
   ]� $ dpHeader��6   $��10,25,10,10q�5      $��Center=�5      ��. .+�5      �� $	 nav��6   $
��Left=�5      #���  5      $��40��5      $��40��5      $��Segoe UI Symbol)�5      $��16(�5      $��Bottom=�5      ��5      ��  �� "   $ CloseCommand�$ OneWay=���5      ��  �� "   $ 
Foreground� 5        5      $	 Click��6%   .
 5         .   66   ��  �� "   5   6   5      .��5!      �� $��20��6   $��15��5"      ��5#      ��  �� "   $ 
Foreground� 5$      !� 5%      $
 Fill=�6&    5&      �� 5'   "   $��48��6)   $��48��5(   )   4 ��        � l�    � l� l��     l��         .  .+�5+   &   F� $��25��6+   $��18��5,   +   $ 12��5-   +   $ 15��5.   +   $
 Fill=�5/   +   
���   �a���� � ��O� � ���ѐ�����@o@@������@���@�4 6n������� �@o@��� ѐ���O� � ��O51   +   52   #   54      56      57      �� 58      $ PART_BackButton��59      $��20(�5:      $��15,0,0,0q�5;      $��Center=�5<      ��58      �� 5<      5=       5>   
   �� 5?      $
 Left��5@       5?      �� *
Position+ �� "   .a�5A      �� $	 nav��6    � ��$ Right=�5C      �� 5D      $ PART_BackButton��6    �@��TextAlignment$ Right=�5F      �� 5G      $ PART_BackButton��6    � ��$ 0,0,15,0q�5I      �� 5J      $	 nav��6    �@�LayoutTransform 5L      �� 5M      $ -1Q�6)   5O      5P      �� 5Q      $	 Top��5R       5Q      �� *
Position+ �� "   .a�5S      �� $ dpHeader��6    � ��$ 10q�5U      �� 5V      $	 nav��6    �@�LayoutTransform 5X      �� 5Y      $	 -90Q�6*   5[      5\      �� 5]      $ Bottom��5^       5]      �� *
Position+ �� "   .a�5_      �� $ dpHeader��6    � ��$ 10q�5a      �� 5b      $	 nav��6    �@�LayoutTransform 5d      �� 5e      $ 90Q�6*   5g      5h      5j      �� 5l      "   5m      .R�5n   
   � $
 root��6   #��z��5o      #��z��5p      z�5q      T� 5r        5t        5u      .! 5v        Default��6"     5w      Hide��." 5x      �� $# HideStoryboard��6%   .��5y      U� $$ 00:00:00X�6<   $8% 2(UIElement.RenderTransform).(TranslateTransform.X)�5z   <   $
& root��5{   <   .\�5|   "   	  $' 00:00:00.400��67   $( 0Q�5}   7   	hideFrame��) 5   &   
  5�   *   $* EaseOut=�64   5�   #   5�      U� 5�      $$ 00:00:00X�6<   $8% 2(UIElement.RenderTransform).(TranslateTransform.Y)�5�   <   $
& root��5�   <   .\�5�   "   	  $' 00:00:00.500��67   $( 0Q�5�   7   
hideFrameY��) 5�   &   
  5�   *   $* EaseOut=�64   5�   #   5�      W� 5�      $+ 1X�6.   $, 0X�5�   .   $$ 00:00:00X�5�   .   $- 00:00:00.400D�5�   .   $% (UIElement.Opacity)�5�   .   $
& root��5�   .   5�      5�        5�      Show��." 5�      �� $# ShowStoryboard��6%   .��5�      U� $$ 00:00:00X�6<   $8% 2(UIElement.RenderTransform).(TranslateTransform.X)�5�   <   $
& root��5�   <   .\�5�   "   	  $' 00:00:00.400��67   $( 0Q�5�   7   	showFrame��) 5�   &   
  5�   *   $* EaseOut=�64   5�   #   5�      U� 5�      $$ 00:00:00X�6<   $8% 2(UIElement.RenderTransform).(TranslateTransform.Y)�5�   <   $
& root��5�   <   .\�5�   "   	  $' 00:00:00.600��67   $( 0Q�5�   7   
showFrameY��) 5�   &   
  5�   *   $* EaseOut=�64   5�   #   5�      W� 5�      $+ 0X�6.   $, 1X�5�   .   $$ 00:00:00X�5�   .   $- 00:00:00.400D�5�   .   $% (UIElement.Opacity)�5�   .   $
& root��5�   .   5�      5�      5�      .+�5�      ]� .+�5�      �� $. PART_Header��6#   $	��Top=�5�   #   $��Header��5�   #   #��z/ 5�   #   �� 5�      $. PART_Content��6#   $��Bottom=�5�   #   5�      5�      5�      0 5�   
   �� 5�      $	 Top��5�       5�      �� *
Position+ �� *Self+.a�5�      �� $ PART_Header��6    � ��$
 Left=�5�      �� 5�      $ PART_Content��6    � ��$ Right=�5�      5�      �� 5�      $ Bottom��5�       5�      �� *
Position+ �� *Self+.a�5�      �� $ PART_Header��6    � ��$
 Left=�5�      �� 5�      $ PART_Content��6    � ��$ Right=�5�      5�      5�      �� 5�      "1   6   .�5�   
   ��  � y�$ Hidden=�5�      �� 5�   
    �@ TabNavigation$ Cycle=�5�      �� 5�   
    � ��$ Stretch=�5�      �� 5�   
    � ��$ Stretch=�5�      �� 5�   
    �@  HeaderTemplate8   5�      �� 5�   
    � ��8  5�      �� 5�   
    �@�FocusVisualStyle 5�      Z� �� 5�   
    � ��# �  5�      �� 5�   
    � ��# �  5�      5�      5�      