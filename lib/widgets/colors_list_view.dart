import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive ;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 21,
        backgroundColor: color,
      ),
    ): CircleAvatar(
      radius: 25,
      backgroundColor: color,
    );
  }
}



class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex = 0 ;
  List<Color> colors = [
    Color(0xffe5a9a9),
    Color(0xff9df7e5),
    Color(0xff0D9276),
    Color(0xff57A6A1),
    Color(0xffFFC436),
    Color(0xffE88D67),
    Color(0xff3b7080),
    Color(0xffFF6969),
    Color(0xff554971),
    Color(0xffF2C18D),
    Color(0xff006989),
    Color(0xff948979),
    Color(0xffD0A2F7),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                    setState(() {

                    });
                  },
                  child: ColorItem(
                      isActive: currentIndex == index,
                      color: colors[index],
                      )
              ),
            );
          }
      ),
    );
  }
}