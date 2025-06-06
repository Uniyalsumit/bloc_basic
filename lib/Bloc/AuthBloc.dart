import 'package:flutter_bloc/flutter_bloc.dart';
part 'AuthEvent.dart';
part 'AuthState.dart';

class AuthBloc extends Bloc<AuthState, AuthEvent> {
  AuthBloc:super(AuthInitial()){
   on<AuthEvent>((event,emit)
  {
        
  }
 );
}
}
