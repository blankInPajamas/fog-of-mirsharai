shader_type canvas_item;

// Use this to grab the tiles inside the CanvasGroup
uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;
uniform sampler2D noise_texture : repeat_enable;

uniform float speed : hint_range(0.0, 0.2) = 0.03;
uniform float sparkle_intensity : hint_range(0.0, 1.0) = 0.2;
uniform vec4 water_tint : source_color = vec4(1.0, 1.0, 1.0, 1.0);

void fragment() {
	// 1. Get the base color of your tiles (Static, no movement)
	vec4 base_color = texture(screen_texture, SCREEN_UV);
    
    vec2 moving_uv = SCREEN_UV + (TIME * speed);
    vec4 noise = texture(noise_texture, moving_uv);
    
    // ADJUSTMENT: Invert and sharpen the cellular noise
    // This turns the "black" areas into bright white highlights
    float shimmer = pow(noise.r, 3.0) * sparkle_intensity; 
    
    // Add the white shimmer on top of the blue
    vec3 final_rgb = base_color.rgb + vec3(shimmer);
    
    COLOR = vec4(final_rgb, base_color.a);
	
	COLOR = vec4(final_rgb, base_color.a);
}