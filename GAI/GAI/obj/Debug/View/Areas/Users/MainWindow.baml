   M S B A M L   `   `   `  ����>  :GAI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:GAI.View.Areas.UsersGAI.View.Areas.Users  5   	   %    GAI.View.Areas.Users.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:GAI.View.Areas.Users     5   	     � Title$  Главное меню��5   	   $	��550��6   $	��800��6+   .��5	      �  � RowDefinitions 5
   
   �� 5      $��0.11* �6   �� 5      .+�5   
   � ���	#FF219BDA � ColumnDefinitions 5      �� 5      $
��0.2* �6#   �� 5      �� 5      $
��0.3* �6#   �� 5      $
��0.2* �6#   .+�5      �� $-��'/GAI;component/Resource/Images/icon.png��6   6G   �� 5      $��1��6   
���������67   ��  �� Path$ NameOfficer�6^   �� 5      $��2��6   ���	#FF219BDA
���������6O   �� $ SettingsAccountCommand�.��6   %#Настройки аккаунта6�   �� 5      $��3��6   ���	#FF219BDA
���������6O   �� $ ExitCommand�.��6t   
Выход6{   5       � 5   
     � NavigationUIVisibility$ Hidden=�6   $��1��60   ��6=   �� $ CurrentPage�5      5      5      