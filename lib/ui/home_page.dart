import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final LocalAuthentication auth;
  bool _supportState = false;

  @override
  void initState() {
    auth = LocalAuthentication();
    auth.isDeviceSupported().then((value) => setState(() {
          _supportState = true;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        (_supportState)
            ? const Text("ThisDev")
            : const Text("This device is not supported"),
        const Divider(height: 100),
        ElevatedButton(
          onPressed: () async => await _getAvailabelBiometrcs(),
          child: const Text("Biometrics"),
        ),
        ElevatedButton(
          onPressed: () async => await _authentication(),
          child: const Text("Authenticate"),
        ),
      ],
    ));
  }

  Future<void> _authentication() async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason:
            "subcribe or you will never find any stack overflow answer",
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );

      print("authenticated: $authenticated");
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> _getAvailabelBiometrcs() async {
    List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();

    print("List of availableBiometrics: $availableBiometrics");

    if (!mounted) {
      return;
    }
  }
}
