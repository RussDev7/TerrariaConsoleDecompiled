Shader "Terraria/Viewport Zoom And Overscan Shader" {
	Properties {
		uWorldImage ("World Image", 2D) = "black" {}
		uWorldUvBounds ("World UV Bounds", Vector) = (0,0,1,1)
		uUiUvBounds ("UI UV Bounds", Vector) = (0,0,1,1)
		uZoom ("Zoom", Range(1, 2)) = 1
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