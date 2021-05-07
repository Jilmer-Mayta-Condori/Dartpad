void main() {
  //Intanciando clase con variables publicas
  Employe emp = Employe();
  emp.id = 1;
  emp.name = 'Andy';
  
  //Intanciando clase con variables privadas
  Empleado empleado = Empleado();
  empleado.id = 1;
  print(emp.id);
  
  //Herencia de Objetos
  Chofer chofer = Chofer();
  //Asignamos valores al objeto Chofer
  chofer.id = 1;
  chofer.name = 'Andy';
  chofer.vehiculoAsignado = 'Toyota Supra';
  chofer.manejar();
  
}

//Clase Employe
class Employe {
  //Variable publicas
  var id;
  var name;
  
  //funcion que nos retorna un valor
  bool cumplioHorario() {
    return true;
  }
  
  //Ponemos void para funciones que no retornan valores
  void work() {
    print('El empleado $name ya realizo su trabajo');
  }
}

//Clase empleado
class Empleado{
  //Variables privadas, estas necesitan un getter y setter para ser accedidas
  var _id;
  var _name;

  bool cumplioHorario(){
    return true;
  }

  void work(){
    print('El empleado $_name ya realizo su trabajo');
  }
  
  //Getter and Setter de ID
  void set id(int id) => _id = id;
  int get id => _id;
  
  //Getter and Setter de NAME
  void set name(String name) => _name = name;
  String get name => _name;
}

//Herencia
class Chofer extends Empleado{
  String? _vehiculoAsignado;
  void manejar(){
    print('Manejando vehiculo');
  }
  //Getter and Setter de VehiculoAsignado
  void set vehiculoAsignado(String vehiculoAsignado) => _vehiculoAsignado = vehiculoAsignado;
  String get vehiculoAsignado => _vehiculoAsignado!;
}
