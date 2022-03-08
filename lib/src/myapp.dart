import 'package:flutter/material.dart';

import 'bytebank/screens/transferencia/formulario_transferencia.dart';
import 'bytebank/screens/transferencia/lista_transferencia.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.green[900],
            secondary: Colors.blueAccent[700],
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const ListaTransferencia(),
          '/formularioTransferencias': (context) => const FormularioTransferencias(),
        });
  }
}
