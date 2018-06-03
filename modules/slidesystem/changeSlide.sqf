_dir = _this select 3;
_displaysurface = _this select 0;
/////////////////////////////////////////////////////////1
if (_dir == "Next" && _displaysurface == screen1) then {
	if (curSlideA2 < 13) then {
		curSlideA2 = curSlideA2 + 1;
		[board1, [0, format["slides\board1\slideA%1.jpg", curSlideA2]]] remoteExec ["setObjectTexture", 0, false];
		[screen1, [0, format["slides\board1\slideA%1.jpg", curSlideA2]]] remoteExec ["setObjectTexture", 0, false];
	} else {
		curSlideA2 = 1;
		[board1, [0,"slides\board1\slideA1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		[screen1, [0,"slides\board1\slideA1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		hint "End reached, looping to first slide";
	};
	publicVariable "curSlideA";
};

if (_dir == "Back" && _displaysurface == screen1) then {
	if (curSlideA2 > 1) then {
		curSlideA2 = curSlideA2 - 1;
		[board1, [0, format["slides\board1\slideA%1.jpg", curSlideA2]]] remoteExec ["setObjectTexture", 0, false];
		[screen1, [0, format["slides\board1\slideA%1.jpg", curSlideA2]]] remoteExec ["setObjectTexture", 0, false];
    } else {
		curSlideA2 = 13;
		[board1, [0,"slides\board1\slideA1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		[screen1, [0,"slides\board1\slideA1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		hint "Beginning reached, looping to last slide";
	};
	publicVariable "curSlideA2";
};
/////////////////////////////////////////////////////////2
if (_dir == "Next" && _displaysurface == screen2) then {
	if (curSlideB2 < 3) then {
		curSlideB2 = curSlideB2 + 1;
		[board2, [0, format["slides\board2\slideB%1.jpg", curSlideB2]]] remoteExec ["setObjectTexture", 0, false];
		[screen2, [0, format["slides\board2\slideB%1.jpg", curSlideB2]]] remoteExec ["setObjectTexture", 0, false];
	} else {
		curSlide2 = 1;
		[board2, [0,"slides\board2\slideB1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		[screen2, [0,"slides\board2\slideB1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		hint "End reached, looping to first slide";
	};
	publicVariable "curSlideB";
};

if (_dir == "Back" && _displaysurface == screen2) then {
	if (curSlideB2 > 1) then {
		curSlideB2 = curSlideB2 - 1;
		[board2, [0, format["slides\board2\slideB%1.jpg", curSlideB2]]] remoteExec ["setObjectTexture", 0, false];
		[screen2, [0, format["slides\board2\slideB%1.jpg", curSlideB2]]] remoteExec ["setObjectTexture", 0, false];
    } else {
		curSlideB2 = 3;
		[board2, [0,"slides\board2\slideB1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		[screen2, [0,"slides\board2\slideB1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		hint "Beginning reached, looping to last slide";
	};
	publicVariable "curSlideB2";
};
/////////////////////////////////////////////////////////3
if (_dir == "Next" && _displaysurface == screen3) then {
	if (curSlideC2 < 2) then {
		curSlideC2 = curSlideC2 + 1;
		[board3, [0, format["slides\board3\slideC%1.jpg", curSlideC2]]] remoteExec ["setObjectTexture", 0, false];
		[screen3, [0, format["slides\board3\slideC%1.jpg", curSlideC2]]] remoteExec ["setObjectTexture", 0, false];
	} else {
		curSlideC2 = 1;
		[board3, [0,"slides\board3\slideC1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		[screen3, [0,"slides\board3\slideC1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		hint "End reached, looping to first slide";
	};
	publicVariable "curSlideC";
};

if (_dir == "Back" && _displaysurface == screen3) then {
	if (curSlideC2 > 1) then {
		curSlideC2 = curSlideC2 - 1;
		[board3, [0, format["slides\board3\slideC%1.jpg", curSlideC2]]] remoteExec ["setObjectTexture", 0, false];
		[screen3, [0, format["slides\board3\slideC%1.jpg", curSlideC2]]] remoteExec ["setObjectTexture", 0, false];
    } else {
		curSlideC2 = 2;
		[board3, [0,"slides\board3\slideC1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		[screen3, [0,"slides\board3\slideC1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		hint "Beginning reached, looping to last slide";
	};
	publicVariable "curSlideC2";
};
/////////////////////////////////////////////////////////4
if (_dir == "Next" && _displaysurface == screen4) then {
	if (curSlideD2 < 5) then {
		curSlideD2 = curSlideD2 + 1;
		[board4, [0, format["slides\board4\slideD%1.jpg", curSlideD2]]] remoteExec ["setObjectTexture", 0, false];
		[screen4, [0, format["slides\board4\slideD%1.jpg", curSlideD2]]] remoteExec ["setObjectTexture", 0, false];
	} else {
		curSlideD2 = 1;
		[board4, [0,"slides\board4\slideD1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		[screen4, [0,"slides\board4\slideD1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		hint "End reached, looping to first slide";
	};
	publicVariable "curSlideD";
};

if (_dir == "Back" && _displaysurface == screen4) then {
	if (curSlideD2 > 1) then {
		curSlideD2 = curSlideD2 - 1;
		[board4, [0, format["slides\board4\slideD%1.jpg", curSlideD2]]] remoteExec ["setObjectTexture", 0, false];
		[screen4, [0, format["slides\board4\slideD%1.jpg", curSlideD2]]] remoteExec ["setObjectTexture", 0, false];
    } else {
		curSlideD2 = 5;
		[board4, [0,"slides\board4\slideD1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		[screen4, [0,"slides\board4\slideD1.jpg"]] remoteExec ["setObjectTexture", 0, false];
		hint "Beginning reached, looping to last slide";
	};
	publicVariable "curSlideD2";
};