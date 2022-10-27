import 'package:features/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  // Stateless yerine ConsumerWidget dan extend edersek bize WidgetRef adında bir parametre verir
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
          child: Text(
        ref.read<String>(
            merhabaMesaji), // ref dan read et diyip, generic olarak type ını belirtiyorum ve içine veriyi veriyorum.
      )),
    );
  }
}
