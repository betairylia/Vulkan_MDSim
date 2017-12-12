#version 400
#extension GL_ARB_separate_shader_objects : enable
#extension GL_ARB_shading_language_420pack : enable

layout (location = 0) in vec4 color;
layout (location = 1) in vec3 position;
layout (location = 0) out vec4 outColor;

void main()
{
	/*vec3 lightPos = vec3(1, 1, 0);
	vec3 camPos = vec3(0, 3, 10);
	vec3 toCam = camPos - position;*/
    /*outColor = dot(lightPos, toCam) * color * 0.3 + color * 0.7;*/
    outColor = color;
}
