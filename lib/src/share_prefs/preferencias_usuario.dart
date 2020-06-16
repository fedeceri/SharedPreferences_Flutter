import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {

  //singleton
  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();
  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs()async{
    this._prefs = await SharedPreferences.getInstance();

  }

  //GET y SET del Genero
  get genero{
    return _prefs.get('genero') ?? 1; //si no encuentra nada, guarda por defecto un 1
  }

  set genero(int value){
    _prefs.setInt('genero', value);
  }

  //GET y SET del Color Secundario
  get colorSecundario{
    return _prefs.getBool('colorSecundario') ?? false; //si no encuentra nada, guarda por defecto un 1
  }

  set colorSecundario(bool value){
    _prefs.setBool('colorSecundario', value);
  }

  //GET y SET del nombreUsuario
  get nombreUsuario{
    return _prefs.getString('nombreUsuario') ?? ''; //si no encuentra nada, guarda por defecto un 1
  }

  set nombreUsuario(String value){
    _prefs.setString('nombreUsuario', value);
  }

  //GET y SET de la Ultima pagina
  get ultimaPagina{
    return _prefs.getString('ultimaPagina') ?? 'home'; //si no encuentra nada, guarda por defecto un 1
  }

  set ultimaPagina(String value){
    _prefs.setString('ultimaPagina', value);
  }
}