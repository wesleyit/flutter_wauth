import 'package:encrypt/encrypt.dart';

class Crypto {
  Encrypter _enc;
  IV _iv;

  Crypto(String key) {
    this._enc = Encrypter(AES(Key.fromUtf8(key)));
    this._iv = IV.fromLength(16);
  }

  String encrypt(String text) {
    Encrypted _encrypted = this._enc.encrypt(text, iv: this._iv);
    return _encrypted.base64;
  }

  String decrypt(String encryptedBase64) {
    return this._enc.decrypt64(encryptedBase64, iv: this._iv);
  }
}
