class Usuario{
  final String idUsuario;
  final String identificacion;
  final String nombreUsuario;
  final String telefono;
  final String correo;
  final String pass;
  final String foto;
  final String idRol;
  
  Usuario( {
    this.idUsuario, 
    this.identificacion, 
    this.nombreUsuario, 
    this.telefono, 
    this.correo, 
    this.pass, 
    this.foto,
    this.idRol,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      idUsuario: json['idUsuario'],
      identificacion: json['identificacion'],
      nombreUsuario: json['nombreUsuario'],
      telefono: json['telefono'],
      correo: json['correo'],
      pass: json['pass'],
      foto: json['foto'],
      idRol: json['idRol']
    );
  }
}