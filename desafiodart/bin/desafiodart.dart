import 'package:desafiodart/buscar.dart';
import 'package:desafiodart/cadastro.dart';
import 'package:desafiodart/empresa.dart';
import 'package:desafiodart/endereco.dart';
import 'package:desafiodart/fisico.dart';
import 'package:desafiodart/input.dart';
import 'package:desafiodart/juridico.dart';
import 'package:desafiodart/removerporid.dart';
import 'package:desafiodart/socio.dart';

import 'dart:io';

void main() {
  List<Empresa> cadastroEmpresa = [];
  bool rodando = true;

  while (rodando) {
    print("============== SISTEMA - EMPRESAS ==============");
    print("1 - Cadastrar uma nova empresa.");
    print("2 - Buscar Empresa cadastrada por CNPJ.");
    print("3 - Buscar Empresa por CPF/CNPJ do Sócio.");
    print("4 - Listar Empresas cadastradas.");
    print("5 - Excluir uma empresa (por ID).");
    print("6 - Sair");
    print("================================================");
    stdout.write("Escolha uma opção: ");
    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        cadastroEmpresa = readEmpresa(cadastroEmpresa);

        break;
      case 2:
        procurarCnpjemp(cadastroEmpresa);
        break;
      case 3:
        procurarDocsocio(cadastroEmpresa);
        break;
      case 4:
        print("\n\t=== REGISTRO DE EMPRESAS ===");
        //cadastroEmpresa.forEach(print);
        cadastroEmpresa.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial));
        cadastroEmpresa.forEach(print);
        break;
      case 5:
        removerporid(cadastroEmpresa);
        break;
      case 6:
        sleep(Duration(seconds: 1));
        print("Obrigado por utilizar nossos serviços!");
        sleep(Duration(milliseconds: 50));
        print("Encerrando aplicação...");
        sleep(Duration(seconds: 1));
        print(".");
        sleep(Duration(seconds: 1));
        print(".");
        sleep(Duration(seconds: 1));
        print("Até a próxima!");
        sleep(Duration(milliseconds: 20));
        rodando = false;
        break;

      default:
        sleep(Duration(seconds: 1));
        print("Ops, algo deu errado!");
        sleep(Duration(seconds: 1));
        print("Arrumando a casa...");
        sleep(Duration(seconds: 2));
        print("Tente novamente!");
        sleep(Duration(seconds: 1));
    }
  }
}
