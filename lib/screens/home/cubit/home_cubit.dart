import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsnew/screens/home/state/home_state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit(): super(HealthState());


  List<String> category = [
    'Health',"Technology","Finance","Arts","Sports"
  ];
}