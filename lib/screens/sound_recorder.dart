import 'package:gsos/screens/audio_record.dart';
import 'package:flutter_sound_lite/public/flutter_sound_recorder.dart';
import 'package:permission_handler/permission_handler.dart';

final pathToSaveAudio = '';

class SoundRecorder {
  FlutterSoundRecorder? _audioRecorder;
  Future _record() async {
    await _audioRecorder!.startRecorder(toFile: pathToSaveAudio);
  }
}

Future _stop
