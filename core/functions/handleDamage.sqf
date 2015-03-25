//MX Rubberbullets
//rubber bullets
if(!isNull _source) then {
	if(_source != _unit) then {
		_curMag = currentMagazine _source;
		if (_curMag in ["30Rnd_65x39_caseless_mag_Tracer"] && _projectile in ["B_65x39_Caseless"]) then {
			if((side _source == west && playerSide != west)) then {
				private["_isVehicle","_isQuad"];
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf(vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				_damage = false;	
				
				if(_isVehicle || _isQuad) then {
					player action ["Eject",vehicle player];
					[_unit,_source] spawn life_fnc_handleDowned;
				} else {
					[_unit,_source] spawn life_fnc_handleDowned;
				};
			};
			
			if(side _source == west && playerSide == west) then {
				_damage = false;
			};
		};
	};
};

//Katiba Rubberbullets
//rubber bullets
if(!isNull _source) then {
	if(_source != _unit) then {
		_curMag = currentMagazine _source;
		if (_curMag in ["30Rnd_65x39_caseless_green_mag_Tracer"] && _projectile in ["B_65x39_Caseless_green"]) then {
			if((side _source == civilian && playerSide != civilian)) then {
				private["_isVehicle","_isQuad"];
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf(vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				_damage = false;	
				
				if(_isVehicle || _isQuad) then {
					player action ["Eject",vehicle player];
					[_unit,_source] spawn life_fnc_handleDowned;
				} else {
					[_unit,_source] spawn life_fnc_handleDowned;
				};
			};
			
			if(side _source == civilian && playerSide == civilian) then {
				_damage = false;
			};
		};
	};
};
