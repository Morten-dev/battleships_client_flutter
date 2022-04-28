// Import the library.
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:signalr_netcore/signalr_client.dart';

import 'GameRoom.dart';

class Api {
  static var hubConnection;


  static Future<void> connect() async {
    var host = "http://battleships-web-app.azurewebsites.net/hubs/battleship";
    //var host = "http://127.0.0.1:5137/hubs/battleship";
    //var host = "http://10.176.132.151:5137/hubs/battleship";
    final httpOptions = HttpConnectionOptions(
        transport: HttpTransportType.WebSockets);
    hubConnection = HubConnectionBuilder().withUrl(host, options: httpOptions).build();
    await hubConnection.start();
  }


  static Future<bool> register(String username) async {
    await connect();
    return await hubConnection.invoke("Register", args: <Object>[username]);
  }

  static Future<bool> createRoom(String roomName) async {
    return await hubConnection.invoke(
        "CreateGameRoom", args: <Object>[roomName]);
  }

  static Future<bool> joinRoom(String roomName) async {
    return await hubConnection.invoke("JoinGameRoom", args: <Object>[roomName]);
  }

  static Future<dynamic> getGameRooms() async {
    return await hubConnection.invoke("GetGameRooms");
  }
}