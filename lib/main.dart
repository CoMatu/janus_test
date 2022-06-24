import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'Home.dart';
import 'typed_examples/audio_bridge.dart';
import 'typed_examples/screen_share_videoroom.dart';
import 'typed_examples/sip.dart';
import 'typed_examples/streaming.dart';
import 'typed_examples/text_room.dart';
import 'typed_examples/video_call.dart';
import 'typed_examples/video_room.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.camera.request();

  runApp(MaterialApp(
    initialRoute: '/',
    themeMode: ThemeMode.light,
    debugShowCheckedModeBanner: false,
    routes: {
      "/typed_video_room_v2_unified": (c) => TypedVideoRoomV2Unified(),
      "/typed_sip": (c) => TypedSipExample(),
      "/typed_streaming": (c) => TypedStreamingV2(),
      "/typed_video_call": (c) => TypedVideoCallV2Example(),
      "/typed_audio_bridge": (c) => const TypedAudioRoomV2(),
      "/typed_text_room": (c) => TypedTextRoom(),
      "/screen_share_typed_video_room_v2_unified": (c) =>
          TypedScreenShareVideoRoomV2Unified(),
      "/": (c) => Home()
    },
  ));
}
