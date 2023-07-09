Shader "Terraria/PixelShaders/ArmorPhase" {
	Properties {
		uImage0 ("Base (RGB) Trans (A)", 2D) = "white" {}
		uImageSize0 ("Image Size", Vector) = (256,256,0,0)
		uImage1 ("Noise", 2D) = "noise" {}
		uImageSize1 ("Image Size", Vector) = (256,256,0,0)
		uColor ("Color", Vector) = (0.4,0.2,1.5,1)
		uSourceRect ("Src Rect", Vector) = (0,0,256,256)
		uRotation ("Saturation", Range(-6.28, 6.28)) = 0
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