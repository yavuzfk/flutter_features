import 'package:features/qr_creator_reader/finfo.dart';
import 'package:features/qr_creator_reader/qr_create.dart';
import 'package:features/qr_creator_reader/qr_read.dart';
import 'package:flutter/material.dart';
import 'dio_service.dart';

class QrMenu extends StatefulWidget {
  const QrMenu({Key? key}) : super(key: key);

  @override
  _QrMenuState createState() => _QrMenuState();
}

class _QrMenuState extends State<QrMenu> {
  FlightInformation response = FlightInformation();

  Future<void> getJson() async {
    response = await DioService().getFlightData();
    setState(() {
      response;
    });
    print(response);
  }

  @override
  void initState() {
    getJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                // String json = jsonEncode(response);
                // List<int> encoded = utf8.encode(json);
                // var gzipBytes = GZipEncoder().encode(encoded);
                // String baseencoded = base64.encode(gzipBytes!);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QrCreate(
                            data: response.flightProducts.toString())));
              },
              child: const Text("Create QR")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const QrRead()));
              },
              child: const Text("Read QR")),
        ]),
      ),
    );
  }
}
