//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VFX/VFX_Distortion" {
Properties {
_MainTex ("Distortion Texture (NM)", 2D) = "white" { }
_Mask ("Mask Texture (Grey)", 2D) = "white" { }
_MaskScale ("Mask Scale", Float) = 1
_Strength ("Strength", Float) = 1
}
SubShader {
 LOD 100
 Tags { "DisableBatching" = "true" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
 GrabPass {
  "_GrabPass"
}
 Pass {
  LOD 100
  Tags { "DisableBatching" = "true" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  GpuProgramID 6130
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}