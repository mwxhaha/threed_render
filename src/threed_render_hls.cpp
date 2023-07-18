#include "ap_fixed.h"
#include "hls_math.h"
#include "threed_render_hls.hpp"
// #include <cmath>
// #include <iostream>

void matrix_mutiply(fixed *input_vector, fixed (*mutiply_matrix)[4], fixed *output_vector)
{
#pragma HLS INLINE off
    // #pragma HLS ALLOCATION operation instances = mul limit = 1
    // #pragma HLS ALLOCATION operation instances = sdiv limit = 1
    output_vector[0] = input_vector[0] * mutiply_matrix[0][0] + input_vector[1] * mutiply_matrix[1][0] + input_vector[2] * mutiply_matrix[2][0] + mutiply_matrix[3][0];
    output_vector[1] = input_vector[0] * mutiply_matrix[0][1] + input_vector[1] * mutiply_matrix[1][1] + input_vector[2] * mutiply_matrix[2][1] + mutiply_matrix[3][1];
    output_vector[2] = input_vector[0] * mutiply_matrix[0][2] + input_vector[1] * mutiply_matrix[1][2] + input_vector[2] * mutiply_matrix[2][2] + mutiply_matrix[3][2];
    fixed w = input_vector[0] * mutiply_matrix[0][3] + input_vector[1] * mutiply_matrix[1][3] + input_vector[2] * mutiply_matrix[2][3] + mutiply_matrix[3][3];
    output_vector[0] = output_vector[0] / w;
    output_vector[1] = output_vector[1] / w;
    output_vector[2] = output_vector[2] / w;
}

float rotation_matrix_initial(float rotation_theta, bool add_or_sub, bool sin_or_cos)
{
#pragma HLS INLINE off
#pragma HLS ALLOCATION operation instances = fmul limit = 1
#pragma HLS ALLOCATION operation instances = fdiv limit = 1
    float pi = 3.1415926535;
    if (add_or_sub && !sin_or_cos)
        return hls::cos(rotation_theta / 180 * pi);
    else if (add_or_sub && sin_or_cos)
        return hls::sin(rotation_theta / 180 * pi);
    else
        return -hls::sin(rotation_theta / 180 * pi);
}

void threed_render_hls(float *mesh_transmission, unsigned char triangle_number, float *screen_transmission, unsigned char screen_height, unsigned char screen_width, float rotation_x_theta, float rotation_y_theta, float rotation_z_theta, float distance_transmission)
{
// #pragma HLS ALLOCATION function instances = matrix_mutiply limit = 1
#pragma HLS ALLOCATION function instances = rotation_matrix_initial limit = 1
#pragma HLS INTERFACE mode = m_axi depth = triangle_number_max * 3 * 3 port = mesh_transmission offset = slave
#pragma HLS INTERFACE mode = m_axi depth = screen_height_max *screen_width_max port = screen_transmission offset = slave
#pragma HLS INTERFACE mode = s_axilite bundle = threed_render_hls_io port = return
#pragma HLS INTERFACE mode = s_axilite bundle = threed_render_hls_io port = triangle_number
#pragma HLS INTERFACE mode = s_axilite bundle = threed_render_hls_io port = screen_height
#pragma HLS INTERFACE mode = s_axilite bundle = threed_render_hls_io port = screen_width
#pragma HLS INTERFACE mode = s_axilite bundle = threed_render_hls_io port = rotation_x_theta
#pragma HLS INTERFACE mode = s_axilite bundle = threed_render_hls_io port = rotation_y_theta
#pragma HLS INTERFACE mode = s_axilite bundle = threed_render_hls_io port = rotation_z_theta
#pragma HLS INTERFACE mode = s_axilite bundle = threed_render_hls_io port = distance_transmission

    fixed distance = distance_transmission;
    static fixed mesh[triangle_number_max][3][3];
threed_render_mesh_i:
    for (unsigned char i = 0; i < triangle_number; ++i)
#pragma HLS LOOP_TRIPCOUNT max = triangle_number_max min = 0
#pragma HLS PIPELINE off
    threed_render_mesh_j:
        for (unsigned char j = 0; j < 3; ++j)
        threed_render_mesh_k:
            for (unsigned char k = 0; k < 3; ++k)
                mesh[i][j][k] = mesh_transmission[i * 9 + j * 3 + k];

    float pi = 3.1415926535;
    fixed rotation_x_matrix[4][4] = {{1, 0, 0, 0},
                                     {0, rotation_matrix_initial(rotation_x_theta, 1, 0), rotation_matrix_initial(rotation_x_theta, 1, 1), 0},
                                     {0, rotation_matrix_initial(rotation_x_theta, 0, 1), rotation_matrix_initial(rotation_x_theta, 1, 0), 0},
                                     {0, 0, 0, 1}};
    fixed rotation_y_matrix[4][4] = {{rotation_matrix_initial(rotation_y_theta, 1, 0), 0, rotation_matrix_initial(rotation_y_theta, 0, 1), 0},
                                     {0, 1, 0, 0},
                                     {rotation_matrix_initial(rotation_y_theta, 1, 1), 0, rotation_matrix_initial(rotation_y_theta, 1, 0), 0},
                                     {0, 0, 0, 1}};
    fixed rotation_z_matrix[4][4] = {{rotation_matrix_initial(rotation_z_theta, 1, 0), rotation_matrix_initial(rotation_z_theta, 1, 1), 0, 0},
                                     {rotation_matrix_initial(rotation_z_theta, 0, 1), rotation_matrix_initial(rotation_z_theta, 1, 0), 0, 0},
                                     {0, 0, 1, 0},
                                     {0, 0, 0, 1}};
    // fixed rotation_x_matrix[4][4] = {{1, 0, 0, 0},
    //                                  {0, hls::cos(rotation_x_theta / 180 * pi), hls::sin(rotation_x_theta / 180 * pi), 0},
    //                                  {0, -hls::sin(rotation_x_theta / 180 * pi), hls::cos(rotation_x_theta / 180 * pi), 0},
    //                                  {0, 0, 0, 1}};
    // fixed rotation_y_matrix[4][4] = {{hls::cos(rotation_y_theta / 180 * pi), 0, -hls::sin(rotation_y_theta / 180 * pi), 0},
    //                                  {0, 1, 0, 0},
    //                                  {hls::sin(rotation_y_theta / 180 * pi), 0, hls::cos(rotation_y_theta / 180 * pi), 0},
    //                                  {0, 0, 0, 1}};
    // fixed rotation_z_matrix[4][4] = {{hls::cos(rotation_z_theta / 180 * pi), hls::sin(rotation_z_theta / 180 * pi), 0, 0},
    //                                  {-hls::sin(rotation_z_theta / 180 * pi), hls::cos(rotation_z_theta / 180 * pi), 0, 0},
    //                                  {0, 0, 1, 0},
    //                                  {0, 0, 0, 1}};
    // fixed rotation_x_matrix[4][4] = {{1, 0, 0, 0},
    //                                  {0, std::cos(rotation_x_theta / 180 * pi), std::sin(rotation_x_theta / 180 * pi), 0},
    //                                  {0, -std::sin(rotation_x_theta / 180 * pi), std::cos(rotation_x_theta / 180 * pi), 0},
    //                                  {0, 0, 0, 1}};
    // fixed rotation_y_matrix[4][4] = {{std::cos(rotation_y_theta / 180 * pi), 0, -std::sin(rotation_y_theta / 180 * pi), 0},
    //                                  {0, 1, 0, 0},
    //                                  {std::sin(rotation_y_theta / 180 * pi), 0, std::cos(rotation_y_theta / 180 * pi), 0},
    //                                  {0, 0, 0, 1}};
    // fixed rotation_z_matrix[4][4] = {{std::cos(rotation_z_theta / 180 * pi), std::sin(rotation_z_theta / 180 * pi), 0, 0},
    //                                  {-std::sin(rotation_z_theta / 180 * pi), std::cos(rotation_z_theta / 180 * pi), 0, 0},
    //                                  {0, 0, 1, 0},
    //                                  {0, 0, 0, 1}};

    fixed f_near = 0.1;
    fixed f_far = 50;
    float f_fov = 90;
    fixed f_aspect_ratio = screen_height / screen_width;
    fixed f_fov_rad = 1.0 / hls::tan(f_fov * 0.5 / 180 * pi);
    // fixed f_fov_rad = 1.0 / std::tan(f_fov * 0.5 / 180 * pi);
    fixed project_matrix[4][4] = {{f_aspect_ratio * f_fov_rad, 0, 0, 0},
                                  {0, f_fov_rad, 0, 0},
                                  {0, 0, f_far / (f_far - f_near), 1},
                                  {0, 0, (-f_far * f_near) / (f_far - f_near), 0}};
    fixed light_direction[3] = {0, 0, 1};
    static fixed mesh_after_projection[triangle_number_max][3][3];
    static fixed normal[triangle_number_max][3];
    static fixed color[triangle_number_max];
    static fixed deep[triangle_number_max];

threed_render_mesh_after_projection_i:
    for (unsigned char i = 0; i < triangle_number; ++i)
    {
#pragma HLS LOOP_TRIPCOUNT max = triangle_number_max min = 0
#pragma HLS PIPELINE off
        // std::cout << "i\n";
        // std::cout << (int)i << "\n";
        // std::cout << "mesh\n";
        // std::cout << mesh[i][0][0] << " " << mesh[i][0][1] << " " << mesh[i][0][2] << "\n";
        // std::cout << mesh[i][1][0] << " " << mesh[i][1][1] << " " << mesh[i][1][2] << "\n";
        // std::cout << mesh[i][2][0] << " " << mesh[i][2][1] << " " << mesh[i][2][2] << "\n";
        fixed mesh_after_rotation_x[3][3];
        matrix_mutiply(mesh[i][0], rotation_x_matrix, mesh_after_rotation_x[0]);
        matrix_mutiply(mesh[i][1], rotation_x_matrix, mesh_after_rotation_x[1]);
        matrix_mutiply(mesh[i][2], rotation_x_matrix, mesh_after_rotation_x[2]);
        fixed mesh_after_rotation_y[3][3];
        matrix_mutiply(mesh_after_rotation_x[0], rotation_y_matrix, mesh_after_rotation_y[0]);
        matrix_mutiply(mesh_after_rotation_x[1], rotation_y_matrix, mesh_after_rotation_y[1]);
        matrix_mutiply(mesh_after_rotation_x[2], rotation_y_matrix, mesh_after_rotation_y[2]);
        fixed mesh_after_rotation_z[3][3];
        matrix_mutiply(mesh_after_rotation_y[0], rotation_z_matrix, mesh_after_rotation_z[0]);
        matrix_mutiply(mesh_after_rotation_y[1], rotation_z_matrix, mesh_after_rotation_z[1]);
        matrix_mutiply(mesh_after_rotation_y[2], rotation_z_matrix, mesh_after_rotation_z[2]);
        mesh_after_rotation_z[0][2] += distance;
        mesh_after_rotation_z[1][2] += distance;
        mesh_after_rotation_z[2][2] += distance;
        // std::cout << "mesh_after_rotation_z\n";
        // std::cout << mesh_after_rotation_z[0][0] << " " << mesh_after_rotation_z[0][1] << " " << mesh_after_rotation_z[0][2] << "\n";
        // std::cout << mesh_after_rotation_z[1][0] << " " << mesh_after_rotation_z[1][1] << " " << mesh_after_rotation_z[1][2] << "\n";
        // std::cout << mesh_after_rotation_z[2][0] << " " << mesh_after_rotation_z[2][1] << " " << mesh_after_rotation_z[2][2] << "\n";

        fixed vector0to1[3] = {mesh_after_rotation_z[1][0] - mesh_after_rotation_z[0][0], mesh_after_rotation_z[1][1] - mesh_after_rotation_z[0][1], mesh_after_rotation_z[1][2] - mesh_after_rotation_z[0][2]};
        fixed vector0to2[3] = {mesh_after_rotation_z[2][0] - mesh_after_rotation_z[0][0], mesh_after_rotation_z[2][1] - mesh_after_rotation_z[0][1], mesh_after_rotation_z[2][2] - mesh_after_rotation_z[0][2]};
        // std::cout << "vector0to1 vector0to2\n";
        // std::cout << vector0to1[0] << " " << vector0to1[1] << " " << vector0to1[2] << "\n";
        // std::cout << vector0to2[0] << " " << vector0to2[1] << " " << vector0to2[2] << "\n";
        normal[i][0] = vector0to1[1] * vector0to2[2] - vector0to1[2] * vector0to2[1];
        normal[i][1] = vector0to1[2] * vector0to2[0] - vector0to1[0] * vector0to2[2];
        normal[i][2] = vector0to1[0] * vector0to2[1] - vector0to1[1] * vector0to2[0];
        // std::cout << "normal\n";
        // std::cout << normal[i][0] << " " << normal[i][1] << " " << normal[i][2] << "\n";
        fixed l = hls::sqrt((normal[i][0] * normal[i][0] + normal[i][1] * normal[i][1] + normal[i][2] * normal[i][2]).to_float());
        // fixed l = std::sqrt((normal[i][0] * normal[i][0] + normal[i][1] * normal[i][1] + normal[i][2] * normal[i][2]).to_float());
        // std::cout << "l\n";
        // std::cout << l << "\n";
        normal[i][0] /= l;
        normal[i][1] /= l;
        normal[i][2] /= l;
        // std::cout << "normal\n";
        // std::cout << normal[i][0] << " " << normal[i][1] << " " << normal[i][2] << "\n";

        color[i] = 1 - (normal[i][0] * light_direction[0] + normal[i][1] * light_direction[1] + normal[i][2] * light_direction[2]);
        // std::cout << "color\n";
        // std::cout << color[i] << "\n\n";

        deep[i] = (mesh_after_rotation_z[0][2] + mesh_after_rotation_z[1][2] + mesh_after_rotation_z[2][2]) / 3;

        matrix_mutiply(mesh_after_rotation_z[0], project_matrix, mesh_after_projection[i][0]);
        matrix_mutiply(mesh_after_rotation_z[1], project_matrix, mesh_after_projection[i][1]);
        matrix_mutiply(mesh_after_rotation_z[2], project_matrix, mesh_after_projection[i][2]);
    }

    static fixed screen[screen_height_max][100];
    static fixed deep_min[screen_height_max][100];
threed_render_screen_0_j:
    for (unsigned char j = 0; j < screen_height; ++j)
#pragma HLS LOOP_TRIPCOUNT max = screen_height_max min = 0
#pragma HLS PIPELINE off
    threed_render_screen_0_k:
        for (unsigned char k = 0; k < screen_width; ++k)
        {
#pragma HLS LOOP_TRIPCOUNT max = screen_width_max min = 0
            screen[j][k] = 0;
            deep_min[j][k] = f_far;
        }

threed_render_screen_1_i:
    for (unsigned char i = 0; i < triangle_number; ++i)
#pragma HLS LOOP_TRIPCOUNT max = triangle_number_max min = 0
#pragma HLS PIPELINE off
    threed_render_screen_1_j:
        for (unsigned char j = 0; j < screen_height; ++j)
#pragma HLS LOOP_TRIPCOUNT max = screen_height_max min = 0
        threed_render_screen_1_k:
            for (unsigned char k = 0; k < screen_width; ++k)
            {
#pragma HLS LOOP_TRIPCOUNT max = screen_width_max min = 0
                fixed pixel_center_x = fixed(2) / screen_width * k - fixed(1) + fixed(2) / screen_width / 2;
                fixed pixel_center_y = fixed(2) / screen_height * j - fixed(1) + fixed(2) / screen_height / 2;
                fixed inorout0to1 = (pixel_center_x - mesh_after_projection[i][0][0]) * (mesh_after_projection[i][1][1] - mesh_after_projection[i][0][1]) - (pixel_center_y - mesh_after_projection[i][0][1]) * (mesh_after_projection[i][1][0] - mesh_after_projection[i][0][0]);
                fixed inorout1to2 = (pixel_center_x - mesh_after_projection[i][1][0]) * (mesh_after_projection[i][2][1] - mesh_after_projection[i][1][1]) - (pixel_center_y - mesh_after_projection[i][1][1]) * (mesh_after_projection[i][2][0] - mesh_after_projection[i][1][0]);
                fixed inorout2to0 = (pixel_center_x - mesh_after_projection[i][2][0]) * (mesh_after_projection[i][0][1] - mesh_after_projection[i][2][1]) - (pixel_center_y - mesh_after_projection[i][2][1]) * (mesh_after_projection[i][0][0] - mesh_after_projection[i][2][0]);
                if (inorout0to1 >= 0 && inorout1to2 >= 0 && inorout2to0 >= 0 && deep_min[j][k] > deep[i])
                {
                    deep_min[j][k] = deep[i];
                    screen[j][k] = color[i];
                }
            }

threed_render_screen_transmission_j:
    for (unsigned char j = 0; j < screen_height; ++j)
#pragma HLS LOOP_TRIPCOUNT max = screen_height_max min = 0
#pragma HLS PIPELINE off
    threed_render_screen_transmission_k:
        for (unsigned char k = 0; k < screen_width; ++k)
#pragma HLS LOOP_TRIPCOUNT max = screen_width_max min = 0
            screen_transmission[j * screen_width + k] = screen[j][k].to_float();
}
