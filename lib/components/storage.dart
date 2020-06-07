import 'dart:io' as io;
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class Storage {
  io.File dbFile;
  String filePath;
  io.Directory appDirectory;

  Storage(String filePath) {
    getApplicationDocumentsDirectory().then((value) {
      this.appDirectory = value;
      this.filePath = this.appDirectory.path + filePath;
      this.dbFile = io.File(this.filePath);
      if (!this.dbFile.existsSync()) {
        this.dbFile.createSync();
      }
    });
  }

  Map<String, dynamic> _readAll() {
    String _contentString = this.dbFile.readAsStringSync();
    if (_contentString.isEmpty) {
      return {'storageFile': filePath};
    } else {
      Map<String, dynamic> _contentMap = jsonDecode(_contentString);
      return _contentMap;
    }
  }

  bool write(String key, String value) {
    Map<String, dynamic> _contentMap = _readAll();
    _contentMap[key] = value;
    String _contentString = jsonEncode(_contentMap);
    try {
      this.dbFile.writeAsStringSync(_contentString, mode: io.FileMode.write);
      this.dbFile.writeAsStringSync('\n', mode: io.FileMode.append);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  String read(String key) {
    Map<String, dynamic> _contentMap = _readAll();
    return _contentMap[key];
  }

  String dump() {
    return jsonEncode(_readAll());
  }
}
