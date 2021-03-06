//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ViewportSize;
//   float4 mrgToneMapWeightParam;
//   sampler2D sampDif0;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   g_ViewportSize        c24      1
//   mrgToneMapWeightParam c152     1
//   sampDif0              s0       1
//

    ps_3_0
    def c0, 15.9998999, -9.99999975e-005, 16, -9.21033955
    def c1, 1.44269502, 0, 0, 0
    def c2, -1, 1, 0, -0
    def c3, -0.375, -0.125, 0.125, 0.375
    dcl_texcoord v0.xy
    dcl_2d s0
    mov r0.zw, c24
    mad r1, r0.zwzw, c3.xxyx, v0.xyxy
    texld r2, r1.zwzw, s0
    texld r1, r1, s0
    mad r0.xy, r2.z, c2, c2.yzzw
    mul r0.xy, r0, r2
    add r1.w, r2.z, r1.z
    mad r2.xy, r1.z, c2, c2.yzzw
    mad r0.xy, r1, r2, r0
    mad r2, r0.zwzw, c3.zxwx, v0.xyxy
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    mad r1.xy, r3.z, c2, c2.yzzw
    mad r0.xy, r3, r1, r0
    add r1.x, r1.w, r3.z
    add r1.x, r2.z, r1.x
    mad r1.yz, r2.z, c2.xxyw, c2
    mad r0.xy, r2, r1.yzzw, r0
    mad r2, r0.zwzw, c3.xyyy, v0.xyxy
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    mad r1.yz, r3.z, c2.xxyw, c2
    mad r0.xy, r3, r1.yzzw, r0
    add r1.x, r1.x, r3.z
    add r1.x, r2.z, r1.x
    mad r1.yz, r2.z, c2.xxyw, c2
    mad r0.xy, r2, r1.yzzw, r0
    mad r2, r0.zwzw, c3.zywy, v0.xyxy
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    mad r1.yz, r3.z, c2.xxyw, c2
    mad r0.xy, r3, r1.yzzw, r0
    add r1.x, r1.x, r3.z
    add r1.x, r2.z, r1.x
    mad r1.yz, r2.z, c2.xxyw, c2
    mad r0.xy, r2, r1.yzzw, r0
    mad r2, r0.zwzw, c3.xzyz, v0.xyxy
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    mad r1.yz, r3.z, c2.xxyw, c2
    mad r0.xy, r3, r1.yzzw, r0
    add r1.x, r1.x, r3.z
    add r1.x, r2.z, r1.x
    mad r1.yz, r2.z, c2.xxyw, c2
    mad r0.xy, r2, r1.yzzw, r0
    mad r2, r0.zwzw, c3.zzwz, v0.xyxy
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    mad r1.yz, r3.z, c2.xxyw, c2
    mad r0.xy, r3, r1.yzzw, r0
    add r1.x, r1.x, r3.z
    add r1.x, r2.z, r1.x
    mad r1.yz, r2.z, c2.xxyw, c2
    mad r0.xy, r2, r1.yzzw, r0
    mad r2, r0.zwzw, c3.xwyw, v0.xyxy
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    mad r1.yz, r3.z, c2.xxyw, c2
    mad r0.xy, r3, r1.yzzw, r0
    add r1.x, r1.x, r3.z
    add r1.x, r2.z, r1.x
    mad r1.yz, r2.z, c2.xxyw, c2
    mad r0.xy, r2, r1.yzzw, r0
    mad r2, r0.zwzw, c3.zwww, v0.xyxy
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    mad r0.zw, r3.z, c2.xyxy, c2.xyyz
    mad r0.xy, r3, r0.zwzw, r0
    add r0.z, r1.x, r3.z
    add r1.x, r2.z, r0.z
    mad r0.zw, r2.z, c2.xyxy, c2.xyyz
    mad r0.xy, r2, r0.zwzw, r0
    mov r1.yw, -r1.x
    add r0.zw, r1.xyyx, c0.xyxy
    add r1.z, r1.w, c0.z
    cmp r0.zw, r0, c2.x, c2.w
    add r0.zw, r0, r1.xyzx
    add r0.zw, r0, c2.y
    rcp r1.x, r0.z
    rcp r1.y, r0.w
    mad r0.xy, r0, r1, c0.w
    mul r0.xy, r0, c1.x
    exp r0.y, r0.y
    exp r0.x, r0.x
    add r0.y, -r0.x, r0.y
    mad_pp oC0.xy, c152.x, r0.y, r0.x
    mov_pp oC0.zw, c2.xyzy

// approximately 87 instruction slots used (16 texture, 71 arithmetic)
