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

  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value){
    _prefs.setBool('colorSecundario', value);
  }

  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value){
    _prefs.setString('nombreUsuario', value);
  }

  //estos getters y setter seran para la ultim apagina abierta del dispositivo
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value){
    _prefs.setString('ultimaPagina', value);
  }
  //Ninguna de estas propiedades se van a usar
  /* bool _colorSecundario;
  int _genero;
  String _nombre; */
}