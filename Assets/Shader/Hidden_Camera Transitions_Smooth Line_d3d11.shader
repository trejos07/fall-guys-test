//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Camera Transitions/Smooth Line" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_SecondTex ("Second (RGB)", 2D) = "white" { }
_Anglex ("X", Range(0, 1)) = 1
_Angley ("y", Range(0, 1)) = 1
_T ("Amount", Range(0, 1)) = 1
_MinPos ("MinPosX", Range(-10, 10)) = 0
_MaxPos ("MaxPosX", Range(-10, 10)) = 0
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 51852
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "MODE_REVERSE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "MODE_REVERSE" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Transition Fallback"
}