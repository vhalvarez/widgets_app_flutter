import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackback = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Proident nisimagna tempor mollit laboris in Lorem. Ad do anim sit dolore cupidatat ullamco ad. Ea nulla minim laboris esse do occaecat exercitation nisi sunt proident exercitation ea reprehenderit. Anim est consectetur veniam incididunt. Eu sint dolor aliquip in cupidatat cupidatat id duis veniam nostrud sunt laboris dolore duis. Quis deserunt in consequat nisi in quis ex ullamco nostrud ut cupidatat.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Officia dolor consequat anim elit consequat mollit. Qui consequat et labore pariatur irure exercitation aliquip elit. Veniam est nostrud ex ea Lorem magna tempor culpa. Laboris occaecat ipsum duis adipisicing non velit magna sunt. Nulla mollit laboris cillum adipisicing. Laboris consequat in reprehenderit esse.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
