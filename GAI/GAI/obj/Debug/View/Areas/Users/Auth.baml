   M S B A M L   `   `   `  ����>  :GAI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:GAI.View.Areas.UsersGAI.View.Areas.Users  5   	       GAI.View.Areas.Users.Auth   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:GAI.View.Areas.Users     5   	     � Title$  Авторизация��5   	   $	��450��6   $	��400��6*   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      $��2* �6   �� 5      $
��0.7* �6   .+�5   
   � $��1��6    5      �� 5      �� 5      .+�5      ��    StyleGroupBoxText#��[  6   $��
Почта��6B   .��5      �� ��6   ��  �� Path$ 
User.Email�6=   5      �� 5      $��1��6   #��[  6%   $��Пароль��6P   .��5      �� ��6   �� $ User.Password�6@   5      5      � 5   
    � ColumnDefinitions 5      �� 5      $
��0.5* �6#   �� 5      .+�5       �� $-��'/GAI;component/Resource/Images/icon.png��6   $��10q�6E   6S   �� 5!      $��1��6   .��6$   
ГИБДД6+   5"      � 5#   
   $��2��6    5$      �� 5%      �� 5&      .+�5(      ��   StyleButton#��[ 6   $��1��6;   ��6K   �� $ SingInCommand�.��6r   
Войти6y   �� 5)      #��[ 6   ��6:   �� $ CancelCommand�.��6a   Отмена6i   5+      5,      5-      