# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
mesh_transmission { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
screen_transmission { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
}
dict set axilite_register_dict control $port_control


set port_threed_render_hls_io {
triangle_number { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
screen_height { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
screen_width { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
rotation_x_theta { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
rotation_y_theta { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
rotation_z_theta { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
distance_transmission { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict threed_render_hls_io $port_threed_render_hls_io


