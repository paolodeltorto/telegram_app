import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class DependencyInjector extends StatelessWidget {
  final Widget child;

  const DependencyInjector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => child;

  Widget _providers({required Widget child}) => MultiProvider(
        providers: [],
        child: child,
      );
  Widget _mappers({required Widget child}) => MultiProvider(
        providers: [],
        child: child,
      );
  Widget _repositories({required Widget child}) => MultiRepositoryProvider(
        providers: [],
        child: child,
      );
  Widget _blocs({required Widget child}) => MultiBlocProvider(
        providers: [],
        child: child,
      );
}
