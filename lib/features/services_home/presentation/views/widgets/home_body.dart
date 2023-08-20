
import 'package:facility/features/services_home/presentation/views/widgets/search.dart';
import 'package:facility/features/services_home/presentation/views/widgets/service_list.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/sponsers_list.dart';
import '../../../../../core/utilies/styles.dart';
import 'image_stack.dart';
import 'list_myflat.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
       child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Search(
                text: 'Search for service, offer',
              ),
              SizedBox(
                height: 10,
              ),
              ImageStack(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'My Flats',
                  style: Styles.textStyle15.copyWith(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListFlat(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Our Services',
                  style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ServiceList(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Our Sponsors',
                  style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: AspectRatio(
                  aspectRatio: 2.3/1,
                  child: SponsersList(
                  ),
                ),
              ),
              // SponsersList(),
            ],
          ),
        ),
        ),
      ],
    );
  }
}
