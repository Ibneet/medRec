import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

class UserModel extends ChangeNotifier {
  final String _rpcUrl = 'http://127.0.0.1:7545';
  final String _wsUrl = 'ws://127.0.0.1:7545/';

  final String _privateKey =
      'd4b957e8a5a6aa094b5a2ed9647faf7cac863751278f20cc8f987bb9a818c4bc';

  Web3Client _client;

  UserModel() {
    initiateSetup();
  }

  initiateSetup() async {
    _client = Web3Client(_rpcUrl, Client(), socketConnector: () {
      return IOWebSocketChannel.connect(_wsUrl).cast<String>();
    });

    getAbi();
  }

  Future<void> getAbi() async {
    String abiStringFile =
        await rootBundle.loadString('src/abis/Patients.json');

    print(abiStringFile);
  }
}

class Reports {
  String patientId;

  Reports({this.patientId});
}
