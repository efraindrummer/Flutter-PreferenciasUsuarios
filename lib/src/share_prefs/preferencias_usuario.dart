import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {

  static final PreferenciasUsuario _instacia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instacia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async{
    this._prefs = await SharedPreferences.getInstance();
  }

  //Getter y Setters

  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value){
    _prefs.setInt('genero', value);
  }

  //Ninguna de estas propiedades se van a usar
  /* bool _colorSecundario;
  int _genero;
  String _nombre; */
}