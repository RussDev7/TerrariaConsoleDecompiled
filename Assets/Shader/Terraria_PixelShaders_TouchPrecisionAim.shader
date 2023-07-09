Shader "Terraria/PixelShaders/TouchPrecisionAim" {
	Properties {
		uImage0 ("Base (RGB) Trans (A)", 2D) = "white" {}
		uWorldImage ("World Image", 2D) = "black" {}
		uWorldUvBounds ("World UV Bounds", Vector) = (0,0,1,1)
		uWorldFrameInset ("World Frame Inset", Vector) = (0.05,0.05,0.95,0.95)
		uAlpha ("Alpha Value", Range(0, 1)) = 1
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