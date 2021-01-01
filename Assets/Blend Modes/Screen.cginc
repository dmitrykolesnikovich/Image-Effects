fixed4 fp(v2f f) : SV_TARGET {
    fixed4 color = tex2D(_MainTex, f.uv);
    fixed4 blendedColor = 1 - (1 - color) * (1 - color);

    return lerp(color, blendedColor, _BlendStrength);
}
