import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screens_from_food_application/order_screen/_states.dart';

class OrderCubit extends Cubit<OrderStates> {
  OrderCubit() : super(CounterInitialState());

  int counter = 0;
  // to be more easily when use this cubit in many places

  static OrderCubit get(context) => BlocProvider.of(context);

  void plus() {
    counter++;
    emit(CounterPlusState(counter));
  }

  void minus() {
    counter--;
    emit(CounterMinusState(counter));
  }
}
