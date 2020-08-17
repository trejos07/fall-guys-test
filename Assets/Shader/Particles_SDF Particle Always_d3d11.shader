//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Particles/SDF Particle Always" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_edge ("Cutoff min/max, Fade min/max", Vector) = (0.5,0.5,0.5,0.5)
_distance ("distance max", Float) = 10
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Overlay" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "QUEUE" = "Overlay" "RenderType" = "Transparent" }
  ZTest Always
  ZWrite Off
  GpuProgramID 361
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}