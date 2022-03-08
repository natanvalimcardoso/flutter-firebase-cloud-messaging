// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../model/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

   const ItemTransferencia(this._transferencia, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('R\$ ${_transferencia.valor.toString()}'),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}
