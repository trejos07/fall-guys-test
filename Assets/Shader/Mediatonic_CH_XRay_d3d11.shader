//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Mediatonic/CH_XRay" {
Properties {
_Plop ("Flat Color", Color) = (1,1,1,1)
}
SubShader {
 Tags { "LIGHTMODE" = "ALWAYS" "QUEUE" = "Geometry" }
 Pass {
  Tags { "LIGHTMODE" = "ALWAYS" "QUEUE" = "Geometry" }
  ZTest Greater
  ZWrite Off
  GpuProgramID 21763
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