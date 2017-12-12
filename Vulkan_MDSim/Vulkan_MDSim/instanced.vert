#version 450
#extension GL_ARB_separate_shader_objects: enable
#extension GL_ARB_shading_language_420pack: enable

layout (std140, binding = 0) uniform bufferVals
{
    mat4 mvp;
} myBufferVals;

layout (location = 0) in vec4 pos;
layout (location = 1) in vec4 inColor;
layout (location = 2) in vec4 instancePos;
layout (location = 3) in vec4 instanceColor;
layout (location = 0) out vec4 outColor;
layout (location = 1) out vec3 position;

out gl_PerVertex
{
    vec4 gl_Position;
};

void main()
{
    outColor = inColor;
    position = (myBufferVals.mvp * (pos + instancePos)).xyz;
    /*position = (myBufferVals.mvp * pos).xyz;*/
    gl_Position = myBufferVals.mvp * (pos + instancePos);
}
