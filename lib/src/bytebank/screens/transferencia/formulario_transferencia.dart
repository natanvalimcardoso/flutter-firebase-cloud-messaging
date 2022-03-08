import 'package:flutter/material.dart';
import 'package:petize_alura/src/bytebank/model/transferencia.dart';

import '../../components/text_field_component.dart';

class FormularioTransferencias extends StatefulWidget {
  const FormularioTransferencias({Key? key}) : super(key: key);

  @override
  State<FormularioTransferencias> createState() =>
      _FormularioTransferenciasState();
}

class _FormularioTransferenciasState extends State<FormularioTransferencias> {
  final TextEditingController _controladorCampoNumeroConta =TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldComponent(
              controlador: _controladorCampoNumeroConta,
              dica: '0000',
              rotulo: 'Numero da conta',
            ),
            TextFieldComponent(
              controlador: _controladorCampoValor,
              dica: '0.00',
              rotulo: 'Valor',
              icone: Icons.monetization_on,
            ),
            //* Botão de transferência
            ElevatedButton(
              onPressed: () {
                _criaTransferencia(context);
              },
              child: const Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.parse(_controladorCampoNumeroConta.text);
    final double valor = double.parse(_controladorCampoValor.text);

    final transferencia = Transferencia(valor: valor, numeroConta: numeroConta);
    Navigator.pop(context, transferencia);
  }
}
