varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_vPosition;

uniform float windowResW;
uniform float xFade;
uniform float xFade2;
//uniform float yFade;		// not in use rn
uniform float fntAlpha;

 
void main(){
	vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// Convert coordinates:
    vec4 vPos = v_vPosition;
    vPos.xy /= vPos.w;					// Division that goes on behind the scenes with gl_FragCoord
    vPos.xy = (vPos.xy + 1.) / 2.;		// Convert from [-1..1] to [0..1]
	
	vec2 winC = vec2(0.0);
	winC.x = vPos.x * windowResW;
	
	col.a *= fntAlpha * (step(winC.x, xFade) * step(xFade2, winC.x));
    gl_FragColor = col;
	
	//gl_FragColor = vec4(vPos.x, 0.0, vPos.y, 1.0);
}

    

    