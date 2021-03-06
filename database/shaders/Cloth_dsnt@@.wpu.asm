//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_TransColorMask;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampSpec;
//   sampler2D sampTrans;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_Specular                 c18      1
//   g_PowerGlossLevel          c20      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgTexcoordIndex           c26      2
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgLocalLight0_Position    c38      1
//   mrgLocalLight0_Color       c39      1
//   mrgLocalLight0_Range       c40      1
//   mrgLocalLight1_Position    c42      1
//   mrgLocalLight1_Color       c43      1
//   mrgLocalLight1_Range       c44      1
//   mrgLocalLight2_Position    c46      1
//   mrgLocalLight2_Color       c47      1
//   mrgLocalLight2_Range       c48      1
//   mrgLocalLight3_Position    c50      1
//   mrgLocalLight3_Color       c51      1
//   mrgLocalLight3_Range       c52      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   g_TransColorMask           c150     1
//   sampDif                    s0       1
//   sampSpec                   s1       1
//   sampNrm                    s3       1
//   sampTrans                  s4       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.5, -2, 3, 4
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 2, -1, 500, 5
    def c3, 0.800000012, 0.0500000007, 0, 0
    def c4, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl vFace
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s7
    dcl_2d s10
    dcl_2d s13
    frc r0.xy, c27
    cmp r0.zw, -r0.xyxy, c4.x, c4.y
    add r0.xy, -r0, c27
    mov r1.xy, c4
    cmp r0.zw, c27.xyxy, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c4
    add r0, r0.y, -c4
    cmp r1.zw, -r2_abs.x, v0.xyxy, c4.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    texld_pp r2, r1.zwzw, s3
    mul_pp r2.x, r2.w, r2.x
    mad_pp r1.zw, r2.xyxy, c2.x, c2.y
    nrm_pp r2.xyz, v8
    mul_pp r2.xyz, r1.w, r2
    nrm_pp r3.xyz, v7
    mad_pp r2.xyz, r1.z, r3, r2
    dp2add_pp r1.z, r1.zwzw, -r1.zwzw, c4.y
    rsq_pp r1.z, r1.z
    rcp_pp r1.z, r1.z
    cmp r3.xyz, vFace, v3, -v3
    nrm_pp r4.xyz, r3
    mad_pp r2.xyz, r1.z, r4, r2
    dp3_pp r1.z, r2, -c10
    mov_sat r1.w, r1.z
    max r2.w, v4.z, c4.x
    add r3.x, r2.w, -v4.w
    cmp r3.z, r3.x, c4.x, r2.w
    mov r3.xyw, v4
    texldp_pp r3, r3, s13
    max r2.w, v5.z, c4.x
    add r3.y, r2.w, -v5.w
    cmp r4.z, r3.y, c4.x, r2.w
    mov r4.xyw, v5
    texldp_pp r4, r4, s7
    min_pp r2.w, r4.x, r3.x
    lrp_pp r3.x, v6.z, c4.y, r2.w
    rcp r2.w, v4.w
    mul r3.yz, r2.w, v4.xxyw
    mad r3.yz, r3, c2.x, c2.y
    abs_sat r3.yz, r3
    add_sat r3.yz, r3, -c65.x
    mul r3.yz, r3, c65.y
    max r2.w, r3.y, r3.z
    lrp_pp r4.x, r2.w, c4.y, r3.x
    texld_pp r3, v0.zwzw, s10
    mul r2.w, r4.x, r3.w
    mul_pp r4.xyz, r2.w, c37
    add_pp r5.xyz, c22, -v2
    dp3_pp r3.w, r5, r5
    rsq_pp r3.w, r3.w
    mad_pp r6.xyz, r5, r3.w, -c10
    nrm_pp r7.xyz, r6
    dp3_sat_pp r4.w, r7, r2
    mov r6.zw, c2
    mul_pp r6.xy, r6.zwzw, c20.yzzw
    max_pp r5.w, r6.x, c4.y
    min r6.x, r5.w, c1.w
    pow_pp r5.w, r4.w, r6.x
    mul_pp r4.xyz, r4, r5.w
    mul r4.xyz, r1.w, r4
    add r7.xyz, -c38, v2
    dp3 r1.w, r7, r7
    rsq r1.w, r1.w
    mul_pp r7.xyz, r1.w, r7
    rcp r1.w, r1.w
    add r1.w, r1.w, -c40.z
    dp3_pp r4.w, r2, -r7
    mad_pp r7.xyz, r5, r3.w, -r7
    nrm_pp r8.xyz, r7
    dp3_sat_pp r5.w, r8, r2
    pow_pp r7.x, r5.w, r6.x
    mov_sat r5.w, r4.w
    add r6.z, -c40.z, c40.w
    rcp r6.z, r6.z
    mul_sat r1.w, r1.w, r6.z
    add_pp r1.w, -r1.w, c4.y
    mul_pp r7.yzw, r1.w, c39.xxyz
    mul_pp r8.xyz, r7.x, r7.yzww
    mul r8.xyz, r5.w, r8
    mul r8.xyz, r6.y, r8
    mad_pp r4.xyz, r4, r6.y, r8
    add r8.xyz, -c42, v2
    dp3 r1.w, r8, r8
    rsq r1.w, r1.w
    mul_pp r8.xyz, r1.w, r8
    rcp r1.w, r1.w
    add r1.w, r1.w, -c44.z
    dp3_pp r5.w, r2, -r8
    mad_pp r8.xyz, r5, r3.w, -r8
    nrm_pp r9.xyz, r8
    dp3_sat_pp r6.z, r9, r2
    pow_pp r7.x, r6.z, r6.x
    mov_sat r6.z, r5.w
    add r6.w, -c44.z, c44.w
    rcp r6.w, r6.w
    mul_sat r1.w, r1.w, r6.w
    add_pp r1.w, -r1.w, c4.y
    mul_pp r8.xyz, r1.w, c43
    mul_pp r9.xyz, r7.x, r8
    mul r9.xyz, r6.z, r9
    mad_pp r4.xyz, r9, r6.y, r4
    add r9.xyz, -c46, v2
    dp3 r1.w, r9, r9
    rsq r1.w, r1.w
    mul_pp r9.xyz, r1.w, r9
    rcp r1.w, r1.w
    add r1.w, r1.w, -c48.z
    dp3_pp r6.z, r2, -r9
    mad_pp r9.xyz, r5, r3.w, -r9
    nrm_pp r10.xyz, r9
    dp3_sat_pp r6.w, r10, r2
    pow_pp r7.x, r6.w, r6.x
    mov_sat r6.w, r6.z
    add r8.w, -c48.z, c48.w
    rcp r8.w, r8.w
    mul_sat r1.w, r1.w, r8.w
    add_pp r1.w, -r1.w, c4.y
    mul_pp r9.xyz, r1.w, c47
    mul_pp r10.xyz, r7.x, r9
    mul r10.xyz, r6.w, r10
    mad_pp r4.xyz, r10, r6.y, r4
    add r10.xyz, -c50, v2
    dp3 r1.w, r10, r10
    rsq r1.w, r1.w
    mul_pp r10.xyz, r1.w, r10
    rcp r1.w, r1.w
    add r1.w, r1.w, -c52.z
    dp3_pp r6.w, r2, -r10
    mad_pp r10.xyz, r5, r3.w, -r10
    nrm_pp r11.xyz, r10
    dp3_sat_pp r7.x, r11, r2
    pow_pp r8.w, r7.x, r6.x
    mov_sat r7.x, r6.w
    add r9.w, -c52.z, c52.w
    rcp r9.w, r9.w
    mul_sat r1.w, r1.w, r9.w
    add_pp r1.w, -r1.w, c4.y
    mul_pp r10.xyz, r1.w, c51
    mul_pp r11.xyz, r8.w, r10
    mul r11.xyz, r7.x, r11
    mad_pp r4.xyz, r11, r6.y, r4
    add_pp r1.w, -c61.z, c61.y
    rcp_pp r1.w, r1.w
    add r11.xyz, -c22, v2
    dp3 r7.x, r11, r11
    rsq r7.x, r7.x
    mul_pp r11.xyz, r7.x, r11
    rcp r7.x, r7.x
    add r7.x, r7.x, -c60.z
    dp3_pp r8.w, r11, c23
    add_pp r8.w, r8.w, -c61.z
    mul_sat_pp r1.w, r1.w, r8.w
    mad_pp r8.w, r1.w, c0.y, c0.z
    mul_pp r1.w, r1.w, r1.w
    mul_pp r1.w, r1.w, r8.w
    pow_sat_pp r8.w, r1.w, c61.w
    add r1.w, r1.y, -c61.x
    cmp_pp r1.w, r1.w, c4.y, r8.w
    add r8.w, -c60.z, c60.w
    rcp r8.w, r8.w
    mul_sat r7.x, r7.x, r8.w
    add_pp r7.x, -r7.x, c4.y
    cmp_pp r1.y, -c61.x, r1.y, r7.x
    mul_pp r1.y, r1.w, r1.y
    mul_pp r12.xyz, c59.w, c59
    mul_pp r12.xyz, r1.y, r12
    mad_pp r13.xyz, r5, r3.w, -r11
    dp3_pp r1.w, r2, -r11
    mul_pp r5.xyz, r3.w, r5
    dp3_sat_pp r3.w, r5, c10
    mul_pp r3.w, r2.w, r3.w
    mul_pp r5.xyz, r2.w, c36
    nrm_pp r11.xyz, r13
    dp3_sat_pp r2.x, r11, r2
    pow_pp r7.x, r2.x, r6.x
    pow r2.x, r3.w, r6.x
    mad_pp r2.y, r3.w, c3.x, c3.y
    mul_pp r2.yzw, r2.y, c36.xxyz
    mul_pp r2.yzw, r2, c16.xxyz
    mad r2.x, r2.x, c3.x, c3.y
    mul_pp r11.xyz, r2.x, c37
    mul_pp r12.xyz, r7.x, r12
    mov_sat r2.x, r1.w
    mul r12.xyz, r2.x, r12
    mad_pp r4.xyz, r12, r6.y, r4
    mul_pp r12.xyz, r6.y, c18
    mul_pp r11.xyz, r11, r12
    cmp r6.xy, -r0_abs.x, v0, c4.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r6
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s4
    mul_pp r2.x, v6.w, v6.w
    mul_pp r3.w, r2.x, r2.x
    mul_pp r2.xyz, r2.x, r2.yzww
    mul_pp r2.xyz, r0.w, r2
    mul_pp r11.xyz, r3.w, r11
    mul_pp r11.xyz, r0.w, r11
    mad_pp r4.xyz, r4, c18, r11
    frc r6.xy, c26.xzzw
    cmp r11.xy, -r6, c4.x, c4.y
    add r6.xy, -r6, c26.xzzw
    cmp r11.xy, c26.xzzw, r1.x, r11
    add r6.xy, r6, r11
    add r11, r6.y, -c4
    add r12, r6.x, -c4
    cmp r6.xy, -r11_abs.x, v0, c4.x
    cmp r6.xy, -r11_abs.y, v0.zwzw, r6
    cmp r6.xy, -r11_abs.z, v1, r6
    cmp r6.xy, -r11_abs.w, v1.zwzw, r6
    texld_pp r11, r6, s1
    cmp r6.xy, -r12_abs.x, v0, c4.x
    cmp r6.xy, -r12_abs.y, v0.zwzw, r6
    cmp r6.xy, -r12_abs.z, v1, r6
    cmp r6.xy, -r12_abs.w, v1.zwzw, r6
    texld_pp r12, r6, s0
    mul_pp r13.xyz, r3, r3
    dp3_pp r0.w, r13, c1
    mad_pp r3.xyz, r3, r3, -r0.w
    mad_sat_pp r3.xyz, r3, c71.w, r0.w
    mul_pp r3.xyz, r3, c70
    mad_pp r0.w, r4.w, c0.x, c0.x
    mad_pp r1.x, r4.w, -c0.x, c0.x
    mul_pp r1.x, r1.x, r1.x
    mul_pp r13.xyz, r7.yzww, r1.x
    mul_pp r0.w, r0.w, r0.w
    mul_pp r7.xyz, r7.yzww, r0.w
    mad_pp r0.w, r1.z, c0.x, c0.x
    mad_pp r1.x, r1.z, -c0.x, c0.x
    mul_pp r1.x, r1.x, r1.x
    mad_pp r13.xyz, r1.x, r5, r13
    mul_pp r0.w, r0.w, r0.w
    mad_pp r5.xyz, r0.w, r5, r7
    mad_pp r0.w, r5.w, c0.x, c0.x
    mad_pp r1.x, r5.w, -c0.x, c0.x
    mul_pp r1.x, r1.x, r1.x
    mad_pp r7.xyz, r1.x, r8, r13
    mul_pp r0.w, r0.w, r0.w
    mad_pp r5.xyz, r0.w, r8, r5
    mad_pp r0.w, r6.z, c0.x, c0.x
    mad_pp r1.x, r6.z, -c0.x, c0.x
    mul_pp r1.x, r1.x, r1.x
    mad_pp r6.xyz, r1.x, r9, r7
    mul_pp r0.w, r0.w, r0.w
    mad_pp r5.xyz, r0.w, r9, r5
    mad_pp r0.w, r6.w, c0.x, c0.x
    mad_pp r1.x, r6.w, -c0.x, c0.x
    mul_pp r1.x, r1.x, r1.x
    mad_pp r6.xyz, r1.x, r10, r6
    mul_pp r0.w, r0.w, r0.w
    mad_pp r5.xyz, r0.w, r10, r5
    mad_pp r0.w, r1.w, c0.x, c0.x
    mad_pp r1.x, r1.w, -c0.x, c0.x
    mul_pp r1.x, r1.x, r1.x
    mul_pp r0.w, r0.w, r0.w
    mul_pp r7.xyz, c58.w, c58
    mul_pp r1.yzw, r1.y, r7.xxyz
    mad_pp r5.xyz, r0.w, r1.yzww, r5
    mad_pp r1.xyz, r1.x, r1.yzww, r6
    mul_pp r1.xyz, r1, c16
    mul_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c150
    mad_pp r1.xyz, r5, c16, r2
    mad_pp r1.xyz, r3, c17, r1
    mad_pp r0.xyz, r1, r12, r0
    mul_pp r1.w, r12.w, c16.w
    mad_pp r1.xyz, r4, r11, r0
    mul_pp r0, r1, c89
    min_pp r1, r0, c0.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 310 instruction slots used (7 texture, 303 arithmetic)
