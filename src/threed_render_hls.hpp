#include "ap_fixed.h"

#define triangle_number_max 110
#define screen_height_max 100
#define screen_width_max 100

using fixed = ap_fixed<40, 7>;

void matrix_mutiply(fixed *input_vector, fixed (*mutiply_matrix)[4], fixed *output_vector);

void threed_render_hls(float *mesh_transmission, unsigned char triangle_number, float *screen_transmission, unsigned char screen_height, unsigned char screen_width, float rotation_x_theta, float rotation_y_theta, float rotation_z_theta, float distance_transmission);
