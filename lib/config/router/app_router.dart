import 'package:go_router/go_router.dart';
import 'package:river_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  /* initialLocation: '/', */
  routes: [
    GoRoute(
      /*
        state: podemos obtener información de la ruta, argumentos
        context: es el arbol de widget, nos dice todo lo de nuestra app
       */
      path: '/', 
      builder: (context, state) => const HomeScreen()
    ),

    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen()
    ),

    GoRoute(
      path: '/future-provider',
      builder: (context, state) => const PokemonScreen()
    ),
  ] 
);