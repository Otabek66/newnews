import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsnew/core/constants/color_cons.dart';
import 'package:newsnew/screens/main/cubit/main_cubit.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentPage = context.watch<MainCubit>().currentpage;
    return BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        onTap: (v) => context.read<MainCubit>().pages(v),
        // fixedColor: ColorConst.kPrimaryColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg',
                color: currentPage == 0
                    ? ColorConst.knavigationPressed
                    : ColorConst.knavigationUnpressed),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/favorite.svg',
                  color: currentPage == 1
                      ? ColorConst.knavigationPressed
                      : ColorConst.knavigationUnpressed),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/profile.svg',
                  color: currentPage == 2
                      ? ColorConst.knavigationPressed
                      : ColorConst.knavigationUnpressed),
              label: 'Profile'),
        ]);
  }
}
