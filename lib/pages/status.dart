import 'package:band_names/services/sockect_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sockectService = Provider.of<SockectService>(context);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('ServerStatus: ${sockectService.serverStatus}')
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          onPressed: () {
            sockectService.emit('emitir-mensaje',
                {'nombre': 'Flutter', 'mensaje': 'Hola desde Flutter'});
          }),
    );
  }
}
