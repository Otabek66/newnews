import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsnew/core/extension/context_extension.dart';
import 'package:newsnew/screens/home/cubit/home_cubit.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            sizedBox(16, context),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: context.w * 15, right: context.w * 16),
                  child: SizedBox(
                    width: context.w * 296,
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          suffixIcon: Icon((Icons.search_sharp)),
                          hintText: "Dogecoin to the Moon...",
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: context.w * 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                SizedBox(
                    child: SvgPicture.asset(
                  'assets/icons/notification.svg',
                ))
              ],
            ),
            sizedBox(24, context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Latest News",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    InkWell(
                      child: SizedBox(
                        child: Row(
                          children: [
                            const Text(
                              "See all",
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(
                              width: context.w * 16,
                            ),
                            SvgPicture.asset("assets/icons/right_arrow.svg")
                          ],
                        ),
                      ),
                      onTap: () {},
                    )
                  ]),
            ),
            sizedBox(16, context),
           Padding(padding: EdgeInsets.only(left: context.w*15,bottom: context.h*16),
           child:SizedBox(
            height: context.h * 241,
            width: context.width,
            child:  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (con,ind){
              return Container(
                margin: EdgeInsets.only(left: 10),
                height: con.h * 241,
                width: con.w * 321,
                decoration: BoxDecoration(
                  color: Colors.red,borderRadius: BorderRadius.circular(8),),
              );
            },
            itemCount: 4,
            ),)
           ),
            Padding(
              padding:EdgeInsets.only(left: context.w*15.0),
              child: SizedBox(
                width: context.width,
                height: 32,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx,ind){
                  return Padding(
                    padding: EdgeInsets.only( left: 8.0),
                    child: Chip(
                      
                      label: Text(context.watch<HomeCubit>().category[ind])),
                  );
                }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(),
    );
  }

  SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.h * size,
      );
}
