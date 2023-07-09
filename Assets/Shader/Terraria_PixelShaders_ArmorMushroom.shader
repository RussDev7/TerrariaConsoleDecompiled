Shader "Terraria/PixelShaders/ArmorMushroom" {
	Properties {
		uImage0 ("Base (RGB) Trans (A)", 2D) = "white" {}
		uColor ("Color", Vector) = (0.05,0.2,1,1)
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