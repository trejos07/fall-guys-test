//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Camera Transitions/Flip" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_SecondTex ("Second (RGB)", 2D) = "white" { }
_T ("Amount", Range(0, 1)) = 1
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 23633
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COMPRESS_IMAGE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "MODE_HORIZONTAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COMPRESS_IMAGE" "MODE_HORIZONTAL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COMPRESS_IMAGE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "MODE_HORIZONTAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COMPRESS_IMAGE" "MODE_HORIZONTAL" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Transition Fallback"
}