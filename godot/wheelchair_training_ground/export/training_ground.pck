GDPC                                                                                 @   res://.import/block.png-b7fed0a755ada244f74f9622a987e81f.stex   �D      K      �}~>�j&�w��v���]<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�Y      �      �Q!����|M�   res://Main.tscn       �+      ]��l���0'�|$   res://Scripts/curved_path.gd.remap  �i      .       V�>Ϋ����P�>    res://Scripts/curved_path.gdc   �/      �      ʛ�=�8�$B��@�    res://Scripts/godot2ros.gd.remap�i      ,       kZ��9Xh#� Z�|�P   res://Scripts/godot2ros.gdc �6            \|�.�֌BLn}�Ơ:$   res://Scripts/wheelchair.gd.remap    j      -       ��m ��Ba�Sґ�v   res://Scripts/wheelchair.gdc =      �      �8P�)w(�;w�>�_   res://block.png.import  @M      1      x[�|��Bc�D\�;�   res://default_env.tres  �O      
      �?�թ+Ev�/h�!b�   res://icon.png  0j      �      �~dg`!����I�҃   res://icon.png.import   pg      .      y/�f�\�>w�ۨJ	   res://project.binary�w      #      ɞ�c�]�����\� �        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scripts/wheelchair.gd" type="Script" id=1]
[ext_resource path="res://Scripts/godot2ros.gd" type="Script" id=2]
[ext_resource path="res://block.png" type="Texture" id=3]

[sub_resource type="ConvexPolygonShape2D" id=1]

custom_solver_bias = 0.0
points = PoolVector2Array( 0, -10, 8.66025, 5, -8.66025, 5 )

[node name="Main" type="Node" index="0"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="." index="0"]

shape = SubResource( 1 )

[node name="wheelchair" type="Polygon2D" parent="." index="1"]

z_index = 1
polygon = PoolVector2Array( 0, 0, 80, 0, 80, 80, 40, 100, 0, 80 )
uv = PoolVector2Array(  )
color = Color( 0.842583, 0.886719, 0.0796661, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( -40, -50 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
script = ExtResource( 1 )
_sections_unfolded = [ "Transform", "Z Index" ]

[node name="Camera2D" type="Camera2D" parent="wheelchair" index="0"]

rotation = 3.14159
anchor_mode = 1
rotating = true
current = true
zoom = Vector2( 0.5, 0.5 )
limit_left = -10000000
limit_top = -10000000
limit_right = 10000000
limit_bottom = 10000000
limit_smoothed = false
drag_margin_h_enabled = false
drag_margin_v_enabled = false
smoothing_enabled = false
smoothing_speed = 5.0
offset_v = 0.0
offset_h = 0.0
drag_margin_left = 0.2
drag_margin_top = 0.2
drag_margin_right = 0.2
drag_margin_bottom = 0.2
editor_draw_screen = true
editor_draw_limits = false
editor_draw_drag_margin = false
_sections_unfolded = [ "Offset", "Transform" ]

[node name="godot2ros" type="Node" parent="." index="2"]

script = ExtResource( 2 )

[node name="block_row1" type="Sprite" parent="." index="3"]

editor/display_folded = true
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row1" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row1/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row1/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block5" type="Sprite" parent="block_row1/block2/block3/block4" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block_row2" type="Sprite" parent="." index="4"]

position = Vector2( 125, 125 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row2/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row2/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block_row3" type="Sprite" parent="." index="5"]

editor/display_folded = true
position = Vector2( 0, 250 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row3/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row3/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block5" type="Sprite" parent="block_row3/block2/block3/block4" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block_row4" type="Sprite" parent="." index="6"]

position = Vector2( 125, 375 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row4" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row4/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row4/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block_row5" type="Sprite" parent="." index="7"]

editor/display_folded = true
position = Vector2( 0, 500 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row5" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row5/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row5/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block5" type="Sprite" parent="block_row5/block2/block3/block4" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block_row6" type="Sprite" parent="." index="8"]

position = Vector2( 125, 625 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row6" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row6/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row6/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block_row7" type="Sprite" parent="." index="9"]

editor/display_folded = true
position = Vector2( 0, 750 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row7" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row7/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row7/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block5" type="Sprite" parent="block_row7/block2/block3/block4" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block_row8" type="Sprite" parent="." index="10"]

position = Vector2( 125, 875 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row8" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row8/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row8/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block_row9" type="Sprite" parent="." index="11"]

editor/display_folded = true
position = Vector2( 0, 1000 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block2" type="Sprite" parent="block_row9" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block3" type="Sprite" parent="block_row9/block2" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block4" type="Sprite" parent="block_row9/block2/block3" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="block5" type="Sprite" parent="block_row9/block2/block3/block4" index="0"]

position = Vector2( 1000, 0 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform" ]

[node name="Polygon2D" type="Polygon2D" parent="." index="12"]

position = Vector2( -150, -75 )
scale = Vector2( 1, 1.113 )
polygon = PoolVector2Array( 0, 0, 100, 0, 100, 1028, 0, 1028 )
uv = PoolVector2Array(  )
color = Color( 0.488281, 0.0114441, 0.0114441, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Transform" ]

[node name="Polygon2D3" type="Polygon2D" parent="." index="13"]

position = Vector2( 1062.76, -98.575 )
scale = Vector2( 1.1158, 1.22276 )
polygon = PoolVector2Array( 0, 0, 100, 0, 100, 1028, 0, 1028 )
uv = PoolVector2Array(  )
color = Color( 0.488281, 0.0114441, 0.0114441, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Transform" ]

[node name="Polygon2D2" type="Polygon2D" parent="." index="14"]

position = Vector2( -150, 1162.28 )
scale = Vector2( 12.6018, -0.097687 )
polygon = PoolVector2Array( 0, 0, 100, 0, 100, 1028, 0, 1028 )
uv = PoolVector2Array(  )
color = Color( 0.488281, 0.0114441, 0.0114441, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Transform" ]

[node name="Polygon2D4" type="Polygon2D" parent="." index="15"]

position = Vector2( -150.615, -48.4765 )
scale = Vector2( 13.239, -0.111145 )
polygon = PoolVector2Array( 0, 0, 100, 0, 100, 1028, 0, 1028 )
uv = PoolVector2Array(  )
color = Color( 0.488281, 0.0114441, 0.0114441, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Transform" ]


         GDSC         )   L     ���ӄ�   ����������Ӷ   �����϶�   ��������   �����������ڶ���   �����������ڶ���   ���������������ڶ���   �������������ڶ�   �����������Ӷ���   �����������Ӷ���   ���������������Ӷ���   �������������Ӷ�   ����Ķ��   ��������Ŷ��   ��������������������ݶ��   �����Ķ�   �����Ŷ�   ���������۶�   �������ٶ���   ���������ն�   �����Ŷ�   �����������϶���   �������������Ŷ�   �����������ض���   ��������Ŷ��   ߶��   ����������¶   ��������ݶ��           33333�6@  ���Q��?                                      ffffff@  	                  
            �@     A     �?  d                                          	                           	      
         '      .      >      L      M      Y      `      n      t      u      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "     #   
  $     %     &     '   2  (   H  )   5TT=�  TT3�  LMR�  0TTT3�  LMRT�  =�  �  L�  N�  M�  �  =�  �  �  �  =�  �  U�  �  L�  �  M�  =�  U�  �  L�  �  M�  �  =�  �  L�  N�	  M�  �  =�	  �
  �  �  =�
  �  L�  �  MU�  �  =�  �
  �  �  =�  �  L�  N�  N�  M�  =�  �  �  �  L�  N�  N�  N�  N�  N�  M�  �  L�  N�	  N�
  N�  N�  N�  M�  T3�  L�  N�  N�  N�  N�  N�  MR�  =�  �  LM�  =�  �  LH�  IM�  �  �  P�  L�  L�  N�  �  �  N�  N�  MM�  �  P�  L�  L�  N�  �  �  N�  N�  MM�  �  L�  N�  M�  T3�  L�  N�  N�  N�  MR�  =�  �  �  =�  �  LM�  �  )�  �@  L�  �  MR�  =�  �  �  L�  �  M�  LU�  M�  �  P�  L�  �  L�  L�  MNL�  MM�  M�  1�  [  GDSC      	   0   �      ���Ӷ���   ��������බ�   ��������򶶶   ��������䶶�   ����������������   ������������涶�   ����   �������������Ҷ�   ���������Ѷ�   �����϶�   �����������Ķ���   ���������������Ŷ���   �������Ŷ���   ����׶��   ��������������������Ŷ��   �����ض�   ����   �������������������������¶�   ����������Ŷ   ���������¶�   ������������������Ў����   ����������Ӷ   ��������������Ŷ   ������Ѷ   ��ն   �����Ў�   ���������¶�   ���������Ӷ�   ����Ӷ��  �        �         	   127.0.0.1         none yet      Error listening on port:          Listening on port:                  packet count sufficient       sent message to ros                                               	      
                )      *      /      0      6      7      8      <      E      F      M      Q      R      X      g      q      t      ~            �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   TTTT5TTT=�  T=�  �  T=�  �  T=�  �  P�  LMT=�  �  P�  LMTT=�  �  TT3�	  LMR�  �  �  �
  LM�  �  P�  L�  N�  MTT3�  L�  MR�  �  LMTT3�
  LMR�  &L�  P�  L�  N�  M�  MR�  �8  L�  �6  L�  MM�  (R�  �8  L�  �6  L�  MMTT3�  LMR�  &�  P�  LM�  R�  �7  L�  M�  =�  �  P�  LM�  �  �  P�  LM�  T3�  LMR�  1�  �  T3�  L�  MR�  =�  �  P�  LM�  �  P�  L�  M�  �7  L�  MTT3�  LMR�  �  P�  LMTTT[              GDSC         :   x     ������؄򶶶   �����������Ҷ���   �������������Ҷ�   ������������Ҷ��   ���������������ݶ���   �����϶�   �������ض���   ζ��   ϶��   �������ض���   �������Ŷ���   ����׶��   ���ζ���   ����¶��   ����������������Ҷ��   ���϶���   ����Ӷ��   ����������ζ   ����������϶   ������Ķ   �������Ӷ���   ����������Ӷ   ��������Ҷ��   �����������Ŷ���   �۶�   ����   ���������������Ŷ���   �������Ķ���   ��������������Ŷ   ������߶         {�G�z�?     �?  &            ui_right      ui_left       ui_down       ui_up              �                      ../godot2ros      none yet      ,                                                                	   $   
   *      .      /      6      :      S      l      u      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '     (   
  )     *      +   $  ,   %  -   +  .   E  /   O  0   P  1   Q  2   X  3   _  4   e  5   f  6   l  7   r  8   u  9   v  :   5TT=�  T=�  �  T=�  �  T=�  TT3�  LMR�  �  P�  �  �  �  P�  �  �  �	  UTT3�
  L�  MR�  &�  R�  =�  L�  L�  P�  L�  MM�  L�  P�  L�  MMM�  =�  L�  L�  P�  L�  MM�  L�  P�  L�  MMM�  =�  �	  U�  �  =�  �  P�  �  �  �  L�  M�  =�  �  P�  �  �  L�  M�  &�  	�	  �  �
  �  	�	  �  �
  R�  �  P�  �  T�  �  P�  �  TTT�  �	  �  �  �  0�  (R�  =�  �  L�  MP�  LM�  �7  L�  M�  &�  �  R�  0�  (R�  =�  �  P�  L�  M�  �  =�  �  �  H�
  I�  =�  �  H�  I�  �	  �  �  =�  �	  U�  �  �  P�  �  �  L�  M�  �  P�  �  L�  M�  �  LMTT3�  LMR�  =�  �6  L�  P�  M�  �6  L�  P�  M�  �6  L�	  M�  �  L�  MP�  L�  M�  TT3�  L�  MR�  +�  	UR�  �  �  U�  �  +�  UR�  �  �  U�  1�  �  T[          GDST�  �          /  PNG �PNG

   IHDR  �  �   ��ߊ  �IDATx���A�0�������U#A~yf�] ����  �?C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C��Nq�aO��    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/block.png-b7fed0a755ada244f74f9622a987e81f.stex"

[deps]

source_file="res://block.png"
dest_files=[ "res://.import/block.png-b7fed0a755ada244f74f9622a987e81f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
sky_energy = 1.0
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

            GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [remap]

path="res://Scripts/curved_path.gdc"
  [remap]

path="res://Scripts/godot2ros.gdc"
    [remap]

path="res://Scripts/wheelchair.gdc"
   �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG
      application/config/name         trajectory_following   application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     debug/settings/fps/force_fps     (          debug/settings/stdout/print_fps            display/window/size/height               display/window/stretch/mode         2d     display/window/stretch/aspect         keep   display/window/stretch/shrink         1   )   rendering/environment/default_environment          res://default_env.tres               GDPC