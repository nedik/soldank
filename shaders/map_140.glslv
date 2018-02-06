#version 140
in vec3 position;
in vec2 tex_coords;
in vec4 color;
uniform Transform {
    mat4 matrix;
};

out vec2 v_tex_coords;
out vec4 color_s;
void main() {
    color_s = vec4(color.rgb * color.a, color.a);
    v_tex_coords = tex_coords;
    gl_Position = matrix * vec4(position, 1.0);
}