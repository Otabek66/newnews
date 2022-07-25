import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsnew/screens/main/cubit/main_cubit.dart';
import 'package:newsnew/screens/main/state/main_state.dart';
import 'package:newsnew/widgets/bottom_navigation_bar_widge/bottom_navigation_bar_widget.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=> MainCubit(),
     
      child: scofold(context));
  }

  Scaffold scofold(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget() , 
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is HomeState) {
              return const Center(child: Text('Home page'),);
            } else if (state is FavoriteState) {
              return const Center(child: Text('Explore page'),);
            }
             else if (state is ProfileState) {
              return const 
              Scaffold(body: Center(child: Text('Explore page'),),);
            } else {
              return Container();
            }
          }),
    );
  }
}