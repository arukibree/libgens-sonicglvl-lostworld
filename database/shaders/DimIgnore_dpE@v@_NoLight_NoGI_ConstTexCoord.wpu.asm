//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampPow;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampPow                               s1       1
//   sampEmi                               s3       1
//

    ps_3_0
    def c0, 500, 5, 1, 1024
    def c1, -2, 3, 0.5, -0.5
    def c2, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5_pp v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c1.x, c1.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    mul_pp r1.xyz, c59.w, c59
    texld_pp r2, v0, s1
    mul_pp r2.xy, r2.x, c20.yzzw
    mul_pp r2.xy, r2, c0
    mul_pp r1.xyz, r1, r2.y
    max_pp r1.w, r2.x, c0.z
    mul_pp r2.xyz, r2.y, c37
    min r2.w, r1.w, c0.w
    add_pp r3.xyz, c22, -v1
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    mad_pp r0.yzw, r3.xxyz, r1.w, -r0
    mad_pp r3.xyz, r3, r1.w, -c10
    nrm_pp r4.xyz, r3
    nrm_pp r3.xyz, r0.yzww
    nrm_pp r5.xyz, v2
    dp3_sat_pp r0.y, r3, r5
    pow r1.w, r0.y, r2.w
    mul_pp r0.yzw, r1.w, r1.xxyz
    mul_pp r0.xyz, r0.yzww, r0.x
    dp3_sat_pp r0.w, r4, r5
    pow r1.x, r0.w, r2.w
    mad_pp r0.xyz, r2, r1.x, r0
    mul_pp r0.xyz, r0, c18
    texld_pp r1, v0, s0
    mul_pp r1, r1, c16
    mul_pp r1, r1, v4
    mad_pp r0.xyz, r0, v2.w, r1
    mul_pp r1.w, r1.w, c21.x
    mul r2, r5.y, c91
    mad r2, r5.x, c90, r2
    mad r2, r5.z, c92, r2
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r2.xy, r0.w, r2
    mad_pp r2.xy, r2, c1.zwzw, c1.z
    texld_pp r2, r2, s3
    add_pp r1.xyz, r0, r2
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.x
    mul_pp r0.xyz, c75, v3.y
    mad_pp oC0.xyz, r1, v3.x, r0
    mov_pp oC0.w, r1.w

// approximately 79 instruction slots used (3 texture, 76 arithmetic)
