import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/provider/provider.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    /* No devuelve un provider, devuelve el valor */
    final name = ref.watch( randomNameProvider ); 

    return Scaffold(
      appBar: AppBar(
        title: const Text('State provider'),
      ),

      body: Center(
        child: Text(name, style: titleStyle),
      ),
       floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.refresh),
        onPressed: () {
          /* Cuando estamos adentro de una funcion o metodos no se aconseja usar watch, mejor utilizar read porque solo queremos leer ese provider */
          /* ref.read( randomNameProvider.notifier).update((state) => 'Otro nombre'); */
          ref.invalidate( randomNameProvider );/* Invalidate nos permite volver a ejecutar el provider*/
        },
       ),
    );
  }
}