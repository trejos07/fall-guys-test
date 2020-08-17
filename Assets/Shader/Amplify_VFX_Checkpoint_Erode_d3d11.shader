//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Amplify/VFX_Checkpoint_Erode" {
Properties {
_Texture ("Texture", 2D) = "white" { }
[Enum(UnityEngine.Rendering.BlendMode)] _BlendDst ("Blend Dst", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _BlendSrc ("Blend Src", Float) = 1
_ScrollU ("Scroll U", Float) = 0
_ScroillV ("Scroill V", Float) = 0
_Texture0 ("Texture 0", 2D) = "white" { }
_texcoord ("", 2D) = "white" { }
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
  GpuProgramID 64679
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