Shader "Terraria/ScreenShaders/FilterTower" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		uColor ("Color", Vector) = (0.5,1,0.3,1)
		uSecondaryColor ("Secondary Color", Vector) = (0.5,1,0.3,1)
		uOpacity ("Opacity", Range(0, 1)) = 1
		uIntensity ("Intensity", Range(0, 1)) = 1
		uProgress ("Progress", Range(0, 1)) = 1
		uScreenResolution ("Screen Resolution", Vector) = (800,600,0,1)
		uScreenPosition ("Screen Position", Vector) = (0,0,0,1)
		uTargetPosition ("Target Position", Vector) = (0,0,0,1)
		uFlipScreenSpace ("Flip Screen Space", Float) = 0
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
}