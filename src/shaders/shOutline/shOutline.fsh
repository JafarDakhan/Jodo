varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;
uniform float outlinewidth;
 
void main()
{
	vec2 offsetx;
    offsetx.x = pixelW * outlinewidth;
    vec2 offsety;
    offsety.y = pixelH * outlinewidth;
 
	float sRight = texture2D( gm_BaseTexture, v_vTexcoord + offsetx ).a;
	float sDown = texture2D( gm_BaseTexture, v_vTexcoord + offsety ).a;
	float sLeft = texture2D( gm_BaseTexture, v_vTexcoord - offsetx ).a;
	float sUp = texture2D( gm_BaseTexture, v_vTexcoord - offsety ).a;
 
	float result = sRight + sDown + sLeft + sUp;
	result *= (1.0 - texture2D( gm_BaseTexture, v_vTexcoord ).a);
    gl_FragColor = v_vColour;
	gl_FragColor.a = result;
}