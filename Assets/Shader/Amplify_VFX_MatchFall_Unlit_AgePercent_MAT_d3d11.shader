//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Amplify/VFX_MatchFall_Unlit_AgePercent_MAT" {
Properties {
_Texture ("Texture", 2D) = "white" { }
[Enum(UnityEngine.Rendering.BlendMode)] _BlendDst ("Blend Dst", Float) = 1
_ScrollSpeedU1 ("Scroll Speed U", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _BlendSrc ("Blend Src", Float) = 1
_ScrollSpeedV1 ("Scroll Speed V", Float) = 1
_TextureOffsetU1 ("Texture Offset U", Float) = 0
_TextureOffsetV1 ("Texture Offset V", Float) = 0
_TileX1 ("Tile X", Float) = 1
_TileY1 ("Tile Y", Float) = 1
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Transparent" }
 Pass {
  Name "Unlit"
  LOD 100
  Tags { "LIGHTMODE" = "FORWARDBASE" "RenderType" = "Transparent" }
  ZWrite Off
  Cull Off
  GpuProgramID 64690
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
CustomEditor "ASEMaterialInspector"
}