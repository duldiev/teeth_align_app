import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';

@RoutePage()
class MentorProfileScreen extends StatelessWidget {
  const MentorProfileScreen({
    super.key,
    required this.mentor,
  });

  final MentorEntity mentor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Mentor'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
