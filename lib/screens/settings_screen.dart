import 'package:flutter/material.dart';
import 'package:prefereciasusuario/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const routeName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool mode = false;
  int gender = 1;
  String name = 'pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                title: const Text('DarkMode'),
                value: mode,
                onChanged: (value) {
                  mode = value;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile(
                title: const Text('Masculino'),
                value: 1,
                groupValue: gender,
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile(
                title: const Text('Femenino'),
                value: 2,
                groupValue: gender,
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  initialValue: 'Pablito',
                  decoration: const InputDecoration(
                      labelText: 'Nombre', helperText: 'Nombre del usuaurio'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
