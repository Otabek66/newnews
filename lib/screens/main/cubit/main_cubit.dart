import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsnew/screens/main/state/main_state.dart';

class MainCubit extends Cubit<MainState>{
  MainCubit(): super(HomeState());

  int currentpage = 0;

  pages(int index){
    currentpage = index;
     if (index == 0) {
      emit(HomeState());
    } else if (index == 1) {
      emit(FavoriteState());
    } 
     else {
      emit(ProfileState());
    }
  }
}