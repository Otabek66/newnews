import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsnew/screens/main/state/main_state.dart';


class HomeCubit extends Cubit<HomeState>{
  HomeCubit(): super(HomeState());


  int categorynum = 0;

  List<String> category = [
    'Health',"Technology","Finance","Arts","Sports"
  ];

   changeCatogs(int index) {
    categorynum = index;
    if (categorynum == 5) {
      categorynum= 0;
    }
    emit(HomeState());
  }
}