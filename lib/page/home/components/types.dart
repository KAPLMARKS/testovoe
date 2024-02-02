import 'package:flutter/material.dart';

class Types extends StatelessWidget {
  const Types({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Card(
        color: Color.fromARGB(255, 239, 244, 248),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: SizedBox(
          height: 172,
          child: Column(
            children: [
              _Buttons(),
              _Menu(),
              _Checkbox(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Buttons extends StatefulWidget {
  const _Buttons();

  @override
  State<_Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<_Buttons> {
  bool isSMS = false;
  bool isMMS = false;
  bool isVoice = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: isSMS ? Colors.limeAccent.shade400 : null,
            ),
            onPressed: () {
              setState(() {
                isSMS = !isSMS;
                isMMS = false;
                isVoice = false;
              });
            },
            child: isSMS
                ? const Text('SMS', style: TextStyle(color: Colors.black))
                : const Text(
                    'SMS',
                    style: TextStyle(color: Colors.grey),
                  ),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: isMMS ? Colors.limeAccent.shade400 : null,
            ),
            onPressed: () {
              setState(() {
                isMMS = !isMMS;
                isSMS = false;
                isVoice = false;
              });
            },
            child: isMMS
                ? const Text('MMS', style: TextStyle(color: Colors.black))
                : const Text(
                    'MMS',
                    style: TextStyle(color: Colors.grey),
                  ),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: isVoice ? Colors.limeAccent.shade400 : null,
            ),
            onPressed: () {
              setState(() {
                isVoice = !isVoice;
                isSMS = false;
                isMMS = false;
              });
            },
            child: isVoice
                ? const Text('Voice', style: TextStyle(color: Colors.black))
                : const Text(
                    'Voice',
                    style: TextStyle(color: Colors.grey),
                  ),
          ),
        ],
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  const _Menu();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      expandedInsets: const EdgeInsets.all(32),
      trailingIcon: const Icon(Icons.keyboard_arrow_down_rounded),
      hintText: 'Landline or Mobile',
      textStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 239, 244, 248),
              ))),
      dropdownMenuEntries: const [
        DropdownMenuEntry<String>(
          value: 'Landline or Mobile',
          labelWidget: Text(
            'Landline or Modile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          label: 'Landline or Modile',
        ),
        DropdownMenuEntry<String>(
          value: 'Landline',
          labelWidget: Text(
            'Landline',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          label: 'Landline',
        ),
        DropdownMenuEntry<String>(
          value: 'Mobile',
          labelWidget: Text(
            'Mobile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          label: 'Mobile',
        ),
      ],
    );
  }
}

class _Checkbox extends StatelessWidget {
  const _Checkbox();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          Checkbox(
            activeColor: Colors.limeAccent.shade400,
            shape: const CircleBorder(),
            value: true,
            onChanged: (bool? value) {},
          ),
          const Text('Show number without verification'),
        ],
      ),
    );
  }
}
