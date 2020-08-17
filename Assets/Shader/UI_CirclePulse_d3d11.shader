//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "UI/CirclePulse" {
Properties {
_MainTex ("Sprite Texture", 2D) = "white" { }
_OriginOffset ("Origin offset", Vector) = (0.5,0.5,0,0)
_CircleColorR ("Circle color R", Color) = (0.98,0.78,0,1)
_CircleColorG ("Circle color G", Color) = (0.9,0.7,0,1)
_CircleColorB ("Circle color B", Color) = (0.9,0,0.9,1)
_TimeFactorR ("Time factor R", Float) = 10
_TimeFactorG ("Time factor G", Float) = 10
_TimeFactorB ("Time factor B", Float) = 10
_Pattern ("Pattern", 2D) = "white" { }
_TextureScale ("Texture scale", Float) = 1
_Color ("Tint", Color) = (1,1,1,1)
_GradientColor ("Gradient Color", Color) = (1,1,1,1)
_GradientContrast ("Gradient Contrast", Float) = 0
_GradientOffset ("Gradient Offset", Float) = 0
}
SubShader {
 Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Name "Default"
  Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Cull Off
  GpuProgramID 5663
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