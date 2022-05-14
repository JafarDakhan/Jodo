
if(key_press(vk_down)){
	elementPnt++;
	elementPnt = min(elementPnt, arraySz - 1);
}
else if(key_press(vk_up)){
	elementPnt--;
	elementPnt = max(elementPnt, 0);
}