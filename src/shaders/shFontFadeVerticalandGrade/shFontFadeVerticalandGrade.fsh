varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_vPosition;

uniform float windowResH;		// window height
uniform float yFade;			// top
uniform float yFade2;			// bottom
uniform float fntAlpha;			// text alpha
uniform float gradeB;
uniform float time;

 
void main(){
	vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// Convert coordinates:
    vec4 vPos = v_vPosition;
    vPos.xy /= vPos.w;					// Division that goes on behind the scenes with gl_FragCoord
    vPos.xy = (vPos.xy + 1.) / 2.;		// Convert from [-1..1] to [0..1]
	
	vec2 winC;
	winC.y = vPos.y * windowResH;
	
	col.a *= fntAlpha * (step(yFade, winC.y) * step( winC.y, yFade2));
	
	vec3 grade = vec3(0);
	if(gradeB == 1.0) {
		grade = 0.5 + 0.5 * cos(vec3(vPos.x + time, 0.4, vPos.y + time) + vec3(2.0, 4.0, 5.0));		// shadertoy (:   -_-   :)
	}
	else{
		grade = vec3(col.rgb);
	}
    gl_FragColor = vec4(grade, col.a);
}

    