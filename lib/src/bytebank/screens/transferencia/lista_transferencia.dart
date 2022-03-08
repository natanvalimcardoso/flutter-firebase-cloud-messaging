// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:petize_alura/src/bytebank/components/card_item_transferencia.dart';
import 'package:petize_alura/src/bytebank/model/transferencia.dart';

import 'formulario_transferencia.dart';

class ListaTransferencia extends StatefulWidget {
  const ListaTransferencia({Key? key}) : super(key: key);

  @override
  State<ListaTransferencia> createState() => _ListaTransferenciaState();
}

class _ListaTransferenciaState extends State<ListaTransferencia> {
  final List<Transferencia> _transferencias = [];

  @override
  Widget build(BuildContext context) {
    setState(() {});
//   _transferencias.add(Transferencia(valor: 100, numeroConta: 12222)); //Testar se está adicionando
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferência'),
      ),
      body: ListView.builder(
          itemCount: _transferencias.length,
          itemBuilder: (context, indice) {
            final transferencia = _transferencias[indice];
            return ItemTransferencia(transferencia);
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => FormularioTransferencias(),
            ),
          ).then(
            (transferenciaRecebida) {
              setState(() {
                _transferencias.add(transferenciaRecebida!);
              });
            },
          );
        },
      ),
    );
  }
}
