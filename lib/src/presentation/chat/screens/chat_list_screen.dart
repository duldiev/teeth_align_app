import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:teeth_align_app/src/core/constants/chat.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';

@RoutePage()
class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key, this.channel});

  final Channel? channel;

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  late final StreamChannelListController _listController;

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    _listController = StreamChannelListController(
      client: StreamChat.of(context).client,
      filter: Filter.in_(
        'members',
        [StreamChat.of(context).currentUser!.id],
      ),
      limit: 20,
    )..addListener(() async {
        context.router.push(ChatRoute(
          channel: await _listController.getChannel(
            id: widget.channel!.id!,
            type: ChatConstants.messageType,
          ),
        ));
      });
    super.initState();
  }

  @override
  void dispose() {
    _listController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Чат'),
      ),
      body: StreamChannelListView(
        controller: _listController,
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        onChannelTap: (channel) => context.router.push(
          ChatRoute(channel: channel),
        ),
      ),
    );
  }
}
