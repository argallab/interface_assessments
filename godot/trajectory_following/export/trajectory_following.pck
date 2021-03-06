GDPC                                                                                 <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�D      �      �Q!����|M�   res://Main.tscn p      �      :�.���5�rj��X�K$   res://Scripts/curved_path.gd.remap  �T      .       V�>Ϋ����P�>    res://Scripts/curved_path.gdc          �      ʛ�=�8�$B��@�    res://Scripts/godot2ros.gd.remap U      ,       kZ��9Xh#� Z�|�P   res://Scripts/godot2ros.gdc  $            \|�.�֌BLn}�Ơ:$   res://Scripts/wheelchair.gd.remap   0U      -       ��m ��Ba�Sґ�v   res://Scripts/wheelchair.gdc@*      j      ��&Y�:GJ�)�L�9�,   res://default_env.tres  �:      
      �?�թ+Ev�/h�!b�   res://icon.png  `U      �      �~dg`!����I�҃   res://icon.png.import   �R      .      y/�f�\�>w�ۨJ	   res://project.binaryc      #      ɞ�c�]�����\� �        [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/wheelchair.gd" type="Script" id=1]
[ext_resource path="res://Scripts/godot2ros.gd" type="Script" id=2]
[ext_resource path="res://Scripts/curved_path.gd" type="Script" id=3]

[node name="Main" type="Node" index="0"]

[node name="path" type="Polygon2D" parent="." index="0"]

polygon = PoolVector2Array( 0, 0, 600, 0, 600, 600, 500, 500, 500, 100, 100, 100 )
uv = PoolVector2Array(  )
color = Color( 1, 1, 1, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0

[node name="back_path" type="Polygon2D" parent="path" index="0"]

polygon = PoolVector2Array( 0, 0, 0, 600, 600, 600, 500, 500, 100, 500, 100, 100 )
uv = PoolVector2Array(  )
color = Color( 0.0672913, 0.164607, 0.957031, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0

[node name="turn1" type="Polygon2D" parent="path" index="1"]

position = Vector2( 550, 550 )
polygon = PoolVector2Array( 0, 0, 150, 0, 150, 150, 0, 150 )
uv = PoolVector2Array(  )
color = Color( 0.406967, 0.637572, 0.699219, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( -75, -75 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Texture", "Transform" ]

[node name="turn2" type="Polygon2D" parent="path" index="2"]

position = Vector2( 550, 50 )
polygon = PoolVector2Array( 0, 0, 150, 0, 150, 150, 0, 150 )
uv = PoolVector2Array(  )
color = Color( 0.406967, 0.637572, 0.699219, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( -75, -75 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Texture", "Transform" ]

[node name="turn3" type="Polygon2D" parent="path" index="3"]

position = Vector2( 50, 50 )
polygon = PoolVector2Array( 0, 0, 150, 0, 150, 150, 0, 150 )
uv = PoolVector2Array(  )
color = Color( 0.406967, 0.637572, 0.699219, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( -75, -75 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Texture", "Transform" ]

[node name="turn4" type="Polygon2D" parent="path" index="4"]

position = Vector2( 50, 550 )
polygon = PoolVector2Array( 0, 0, 150, 0, 150, 150, 0, 150 )
uv = PoolVector2Array(  )
color = Color( 0.406967, 0.637572, 0.699219, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( -75, -75 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Texture", "Transform" ]

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

[node name="direction_label" type="Label" parent="wheelchair/Camera2D" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 150.0
margin_top = -250.0
margin_right = 197.0
margin_bottom = -236.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "forward"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Grow Direction", "Rect", "custom_fonts" ]

[node name="direction_arrow" type="Polygon2D" parent="wheelchair" index="1"]

position = Vector2( -175, 175 )
scale = Vector2( 0.8, 0.8 )
polygon = PoolVector2Array( 20, 0, 20, 100, 50, 80, 50, 120, 0, 150, -50, 120, -50, 80, -20, 100, -20, 0 )
uv = PoolVector2Array(  )
color = Color( 0.275978, 0.953125, 0.0595703, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, -75 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Transform" ]

[node name="godot2ros" type="Node" parent="." index="2"]

script = ExtResource( 2 )

[node name="curved_path" type="Node2D" parent="." index="3"]

position = Vector2( 550, 550 )
script = ExtResource( 3 )
_sections_unfolded = [ "Transform", "Z Index" ]

[node name="curved_path2" type="Node2D" parent="curved_path" index="0"]

position = Vector2( 1664, 0 )
rotation = -3.14159
script = ExtResource( 3 )
_sections_unfolded = [ "Transform", "Z Index" ]

[node name="finish" type="Polygon2D" parent="curved_path" index="1"]

position = Vector2( 1650, 0 )
rotation = 0.261799
polygon = PoolVector2Array( 0, 0, 150, 0, 150, 150, 0, 150 )
uv = PoolVector2Array(  )
color = Color( 0.406967, 0.637572, 0.699219, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( -75, -75 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation_degrees = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Texture", "Transform" ]


           GDSC         )   L     ���ӄ�   ����������Ӷ   �����϶�   ��������   �����������ڶ���   �����������ڶ���   ���������������ڶ���   �������������ڶ�   �����������Ӷ���   �����������Ӷ���   ���������������Ӷ���   �������������Ӷ�   ����Ķ��   ��������Ŷ��   ��������������������ݶ��   �����Ķ�   �����Ŷ�   ���������۶�   �������ٶ���   ���������ն�   �����Ŷ�   �����������϶���   �������������Ŷ�   �����������ض���   ��������Ŷ��   ߶��   ����������¶   ��������ݶ��           33333�6@  ���Q��?                                      ffffff@  	                  
            �@     A     �?  d                                          	                           	      
         '      .      >      L      M      Y      `      n      t      u      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "     #   
  $     %     &     '   2  (   H  )   5TT=�  TT3�  LMR�  0TTT3�  LMRT�  =�  �  L�  N�  M�  �  =�  �  �  �  =�  �  U�  �  L�  �  M�  =�  U�  �  L�  �  M�  �  =�  �  L�  N�	  M�  �  =�	  �
  �  �  =�
  �  L�  �  MU�  �  =�  �
  �  �  =�  �  L�  N�  N�  M�  =�  �  �  �  L�  N�  N�  N�  N�  N�  M�  �  L�  N�	  N�
  N�  N�  N�  M�  T3�  L�  N�  N�  N�  N�  N�  MR�  =�  �  LM�  =�  �  LH�  IM�  �  �  P�  L�  L�  N�  �  �  N�  N�  MM�  �  P�  L�  L�  N�  �  �  N�  N�  MM�  �  L�  N�  M�  T3�  L�  N�  N�  N�  MR�  =�  �  �  =�  �  LM�  �  )�  �@  L�  �  MR�  =�  �  �  L�  �  M�  LU�  M�  �  P�  L�  �  L�  L�  MNL�  MM�  M�  1�  [  GDSC      	   0   �      ���Ӷ���   ��������බ�   ��������򶶶   ��������䶶�   ����������������   ������������涶�   ����   �������������Ҷ�   ���������Ѷ�   �����϶�   �����������Ķ���   ���������������Ŷ���   �������Ŷ���   ����׶��   ��������������������Ŷ��   �����ض�   ����   �������������������������¶�   ����������Ŷ   ���������¶�   ������������������Ў����   ����������Ӷ   ��������������Ŷ   ������Ѷ   ��ն   �����Ў�   ���������¶�   ���������Ӷ�   ����Ӷ��  �        �         	   127.0.0.1         none yet      Error listening on port:          Listening on port:                  packet count sufficient       sent message to ros                                               	      
                )      *      /      0      6      7      8      <      E      F      M      Q      R      X      g      q      t      ~            �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   TTTT5TTT=�  T=�  �  T=�  �  T=�  �  P�  LMT=�  �  P�  LMTT=�  �  TT3�	  LMR�  �  �  �
  LM�  �  P�  L�  N�  MTT3�  L�  MR�  �  LMTT3�
  LMR�  &L�  P�  L�  N�  M�  MR�  �8  L�  �6  L�  MM�  (R�  �8  L�  �6  L�  MMTT3�  LMR�  &�  P�  LM�  R�  �7  L�  M�  =�  �  P�  LM�  �  �  P�  LM�  T3�  LMR�  1�  �  T3�  L�  MR�  =�  �  P�  LM�  �  P�  L�  M�  �7  L�  MTT3�  LMR�  �  P�  LMTTT[              GDSC   .      k   �     ������؄򶶶   �����������Ҷ���   �������������Ҷ�   ������������Ҷ��   ���������������ݶ���   �����϶�   �������ض���   ζ��   ϶��   �������ض���   �������Ӷ���   ���Ӷ���   �������Ŷ���   ����׶��   ���ζ���   ����¶��   ����������������Ҷ��   ���϶���   ����Ӷ��   ������Ķ   ����������Ӷ   ��������Ҷ��   �����������Ŷ���   �۶�   ����   ������������������������Ŷ��   ���������������Ŷ���   �������Ķ���   ��������������Ŷ   ����϶��   ������ζ   �����ζ�   ����϶��   ������ڶ   ������ڶ   ���������Ѷ�   �����������Ѷ���   ������������Ѷ��   �����������Ѷ���   ��¶   ������߶   ����������������   �����ׄ򶶶�   ��������������ڶ   ���¶���   ��������         {�G�z�?     �?  &            ../curved_path        ui_right      ui_left       ui_down       ui_up                  ../godot2ros      none yet      ,                        2         (         
         �                   Left      Forward       Right         Backward      Follow path       ../path   �            Done                                                    	   $   
   *      .      7      8      ?      C      \      u      ~      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $     %     &   	  '   
  (     )   *  *   4  +   5  ,   ;  -   @  .   E  /   J  0   O  1   T  2   ]  3   b  4   i  5   q  6   v  7   ~  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B     C     D   	  E   *  F   3  G   <  H   `  I   h  J   q  K   r  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T     U     V     W   9  X   @  Y   I  Z   R  [   [  \   \  ]   ]  ^   ^  _   _  `   w  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   5TT=�  T=�  �  T=�  �  T=�  TT3�  LMR�  �  P�  �  �  �  P�  �  �  �	  U�  �
  L�  MP�  LMTT3�  L�  MR�  &�  R�  =�  L�  L�  P�  L�  MM�  L�  P�  L�  MMM�  =�  L�  L�  P�  L�  MM�  L�  P�  L�  MMM�  =�  �	  U�	  �  �  P�  �  �  �  L�  M�  �  P�  �  �  L�  M�  �	  �  �  �  0�  (R�  =�  �
  L�
  MP�  LM�  �7  L�  M�  &�  �  R�  0�  (R�  =�  �  P�  L�  M�  �  =�  �  �  H�  I�  =�  �  H�  I�  �	  �  �  =�  �	  U�	  �  �  P�  �  �  L�  M�  �  P�  �  L�  M�  �  LM�  �  LMTT3�  LMR�  =�  �6  L�  P�  M�  �6  L�  P�  M�  �6  L�	  M�  �
  L�
  MP�  L�  M�  T3�  LMR�  =�  �  �  =�  �  �  =�  �  �  =�   �  �  =�!  �  �  =�"  �  U�  �  =�#  U�  =�$  U�	  �  =�%  U�	  �  =�&  �  �  =�'  �(  L�	  M�  �7  L�  P�  M�  �7  L�  P�  M�  �  &�  P�  	L�  �  M�	  R�  �  �  �  &�  L�  P�  �  M	�!  �  L�  P�  �   M	�!  �  L�#  �  L�'  MM	�"  R�  S�)  P�	  U�	  �  S�*  �+  P�,  �  �  &�  L�  P�  �  M	�!  �  L�  P�  �   M	�!  �  L�$  �'  M	�"  R�  S�)  P�	  �  �  S�*  �+  P�,  �  �  �  �  &�  L�  P�  �  M	�!  �  L�  P�  �   M	�!  �  L�$  �'  M	�"  R�  S�)  P�	  U�	  �  S�*  �+  P�,  �  �  &�  L�  P�  �  M	�!  �  L�  P�  �   M	�!  �  L�#  �  L�'  MM	�"  R�  S�)  P�	  U�  S�*  �+  P�,  �  �  �  &�  L�  P�  �  M	�!  �  L�  P�  �  M	�!  �  L�#  �  L�'  MM	�"  R�  S�)  P�	  U�	  �  S�*  �+  P�,  �  �  &�  L�  P�  �  M	�!  �  L�  P�  �  M	�!  �  L�$  �'  M	�"  R�  S�)  P�	  U�  S�*  �+  P�,  �  �  �  &�  L�  P�  �  M	�!  �  L�  P�  �  M	�!  �  L�$  �'  M	�"  R�  S�)  P�	  U�	  �  S�*  �+  P�,  �  �  &L�  MR�  &�  L�  P�  �  M	�!  �  L�  P�  �  M	�!  �  L�#  �  L�'  MM	�"  R�  S�)  P�  LM�  S�*  �+  P�,  �  �  �
  L�  MP�-  LM�  �
  L�  MP�  LMTTT�  �  &�  L�  P�  �  M	�!  �  L�  P�  �  M	�!  R�  S�*  �+  P�,  �  TT3�(  L�  MR�  +�  	UR�  �  �	  U�  �  +�  UR�  �  �	  U�  1�  �  T[      [gd_resource type="Environment" load_steps=2 format=2]

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