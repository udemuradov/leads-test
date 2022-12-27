import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:leads_test/src/presentation/bloc/home/home_bloc.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    ////////////////////////////////////////////////////////////////////////////
    /////////////////////            ACCOUNT         ///////////////////////////
    BlocProvider<HomeBloc>(
      // lazy: false,
      create: (context) => HomeBloc()..add(GetRedirectUrl()),
    ),
  ];
}
