//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "UI/ZigZagUI" {
Properties {
[Header(Zig Zag Pattern)] [Space(10)] [PerRenderData] _MainTex ("MainTexture", 2D) = "white" { }
_Color1 ("Color 1", Color) = (0,0,0,1)
_Color2 ("Color 2", Color) = (1,1,1,1)
_ColorRange ("ColorRange", Range(0, 1)) = 0.8
_Tiling ("Tiling", Range(1, 500)) = 10
_Direction ("Direction", Range(-1, 1)) = 0
_Deformation ("Deformation", Float) = 1
[Header(Gradient)] [Space(10)] _GradientColor ("Gradient Color", Color) = (1,1,1,1)
_GradientContrast ("Gradient Contrast", Float) = 0
_GradientOffset ("Gradient Offset", Float) = 0
_ScrollX ("ScrollX", Range(0, 10)) = 2
_ScrollY ("ScrollY", Range(0, 10)) = 3
}
SubShader {
 Pass {
  GpuProgramID 17661
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