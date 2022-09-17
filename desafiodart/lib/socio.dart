import 'package:desafiodart/endereco.dart';

abstract class Socio {
  String nome;
  String documento;
  Endereco enderecoSocio;

  Socio(this.nome, this.documento, this.enderecoSocio);
}
