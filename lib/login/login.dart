import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String routeName = '/login';

  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset('assets/images/image-login.png'),
            const Text("Silahkan masuk dengan nomor Telkomsel kamu",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Text("Nomor HP",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            const SizedBox(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    hintText: 'Cth. 0813842....',
                  ),
                )),
            // LabeledCheckbox(
            //   label: 'Saya menyetujui syarat, ketentuan, dan privasi Telkomsel',
            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //   value: false,
            //   onChanged: (bool newValue) {},
            // ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.only(left: 10, top: 10),
              controlAffinity: ListTileControlAffinity.leading,
              title: RichText(
                text: const TextSpan(
                    text: "Saya menyetujui ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: "syarat, ketentuan, ",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: "dan ", style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "privasi ",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: "Telkomsel",
                          style: TextStyle(color: Colors.black))
                    ]),
              ),
              value: false,
              onChanged: (value) {},
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 80,
              child: ElevatedButton(
                onPressed: (() {}),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: const Text("LANJUT"),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text("Atau masuk menggunakan")],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/facebook.png'),
                  Image.asset('assets/images/twitter.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
