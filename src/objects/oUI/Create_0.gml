

uiElements[0] = oSettings;
uiElements[1] = oMusicIc;
uiElements[2] = oSaveIc;

uiElementsInd[0] = noone;
for(var i = 0; i < array_length(uiElements); i++){
	uiElementsInd[i] = instance_create_layer(x, y, layer, uiElements[i]);	
}

// Time UI
timeStrXBuff = 49;
timeStrPosX = global.camWidth - timeStrXBuff;
timeObj = instance_create_layer(x, y, layer, oTime);
with(timeObj){
	timeStrXBuff = other.timeStrXBuff;
	timeStrPosX = other.timeStrPosX;
}

uiElementsXPosBuf = 15;
uiElementsXPos = timeStrPosX - uiElementsXPosBuf;
uiElementsYPos = 8;
