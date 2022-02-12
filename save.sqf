/*
  Filename: save.sqf
  Use: To save the position of a unit by replacing it with an invisible item
  Maker: StevioUK
*/
private _maxDistance = 25;

{
  private _pos = getPosATL _x; 
  private _distance = player distance _x; 
  if!(isPlayer _x) then {
    if(_x isKindOf "Man") then {   
      if(_distance > _maxDistance) then {  
        _mark = createVehicle ["Land_Tableware_01_cup_F", AGLtoASL _pos]; 
        _mark setPos (_pos);
        _mark hideObject true;
        _mark enableSimulationGlobal false;
        
        deleteVehicle _x; 
      };
    };
  }; 
} forEach allUnits;