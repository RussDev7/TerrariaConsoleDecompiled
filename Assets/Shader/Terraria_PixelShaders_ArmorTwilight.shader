Shader "Terraria/PixelShaders/ArmorTwilight" {
	Properties {
		uImage0 ("Base (RGB) Trans (A)", 2D) = "white" {}
		uImageSize0 ("Image Size", Vector) = (256,256,0,0)
		uImage1 ("Noise", 2D) = "noise" {}
		uImageSize1 ("Image Size", Vector) = (256,256,0,0)
		uColor ("Color", Vector) = (0.5,0.1,1,1)
		uWorldPosition ("World Position", Vector) = (1000,1000,0,0)
		uViewportRect ("Viewport Rect", Vector) = (1000,1000,0,0)
		uRenderToTexture ("Render to Texture", Range(0, 1)) = 0
		uSourceRect ("Src Rect", Vector) = (0,0,256,256)
		uImageInset ("Image Inset", Vector) = (0,0,0,0)
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
}