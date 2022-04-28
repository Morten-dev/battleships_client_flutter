import '../Model/Player.dart';

class SessionService {
  static final SessionService _singleton = SessionService._internal();

  factory SessionService() {
    return _singleton;
  }

  static Player? player;
  static Player? opponent;


  SessionService._internal();
}