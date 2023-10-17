import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payingsproject/model/payingsmodel.dart';
import 'package:payingsproject/view%20model/bloc/cubit/paystates.dart';

class PayCubit extends Cubit<PayStates>{
  PayCubit():super(InitialPayState());
  static PayCubit get(context)=>BlocProvider.of<PayCubit>(context);

}