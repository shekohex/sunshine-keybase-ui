import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sunshine/models/models.dart';
import 'package:sunshine/sunshine.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _accountService = GetIt.I.get<AccountService>();

  final _walletService = GetIt.I.get<WalletService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Account', elevation: 1),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
          return true;
        },
        child: ListView(
          children: [
            const HeaderText('Your Information'),
            SizedBox(height: 15.w.toDouble()),
            const HintText('Tip: long press to copy to clipboard'),
            SizedBox(height: 10.w.toDouble()),
            ListCell(
              title: 'UID',
              trailing: SizedBox(
                width: 60.w.toDouble(),
                child: FutureBuilder<String>(
                  initialData: '...',
                  future: _accountService.uid(),
                  builder: (context, snapshot) {
                    return HintText(
                      snapshot.data ?? 'N/A',
                    );
                  },
                ),
              ),
              onLongPress: () async {
                await Clipboard.setData(
                  ClipboardData(
                    text: await _accountService.uid(),
                  ),
                );
              },
            ),
            const Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
              color: AppColors.disabled,
            ),
            ListCell(
              title: 'Device ID',
              trailing: SizedBox(
                width: 120.w.toDouble(),
                child: FutureBuilder<Device>(
                  initialData: const Device(
                    id: '...',
                    currentDevice: true,
                  ),
                  future: _accountService.currentDevice(),
                  builder: (context, snapshot) => HintText(
                    snapshot.data?.id ?? 'N/A',
                  ),
                ),
              ),
              onLongPress: () async {
                await Clipboard.setData(
                  ClipboardData(
                    text: (await _accountService.currentDevice()).id,
                  ),
                );
              },
            ),
            const Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
              color: AppColors.disabled,
            ),
            ListCell(
              title: 'Balance',
              trailing: SizedBox(
                width: 120.w.toDouble(),
                child: FutureBuilder<String>(
                  initialData: '...',
                  future: _walletService.balance(),
                  builder: (context, snapshot) {
                    return HintText(
                      '☼${snapshot.data}' ?? 'N/A',
                    );
                  },
                ),
              ),
              onTap: () async {
                try {
                  await _walletService.mint();
                } catch (_) {
                  // don't do anything, it is only for testing ..
                }
              },
              onLongPress: () async {
                await Clipboard.setData(
                  ClipboardData(
                    text: await _walletService.balance(),
                  ),
                );
              },
            ),
            const Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
              color: AppColors.disabled,
            ),
            SizedBox(height: 20.w.toDouble()),
            const HeaderText('Profile'),
            SizedBox(height: 10.w.toDouble()),
            ListCell(
              title: 'Devices',
              trailing: const Icon(
                Icons.chevron_right,
                size: 32,
                color: Colors.white,
              ),
              onTap: () {
                ExtendedNavigator.root.push(Routes.devicesScreen);
              },
            ),
            const Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
              color: AppColors.disabled,
            ),
            ListCell(
              title: 'Identities',
              trailing: const Icon(
                Icons.chevron_right,
                size: 32,
                color: Colors.white,
              ),
              onTap: () {
                ExtendedNavigator.root.push(Routes.identitiesScreen);
              },
            ),
            const Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
              color: AppColors.disabled,
            ),
            ListCell(
              title: 'Update Password',
              trailing: const Icon(
                Icons.chevron_right,
                size: 32,
                color: Colors.white,
              ),
              onTap: () {
                ExtendedNavigator.root.push(Routes.updatePasswordScreen);
              },
            ),
            const Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
              color: AppColors.disabled,
            ),
            SizedBox(height: 20.w.toDouble()),
            const HeaderText('Legal'),
            SizedBox(height: 10.w.toDouble()),
            ListCell(
              title: 'About',
              trailing: const Icon(
                Icons.share,
                size: 22,
                color: Colors.white,
              ),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Sunshine Keybase',
                  applicationVersion: 'v0.1.0',
                  applicationIcon: Image.asset('assets/logo.png'),
                  useRootNavigator: true,
                  applicationLegalese: 'Powered by Substrate',
                  children: [
                    const SizedBox(height: 10),
                    FlatButton(
                      child: const Text('Website'),
                      onPressed: () {
                        launch('https://sunshine.foundation/');
                      },
                    ),
                  ],
                );
              },
            ),
            const Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
              color: AppColors.disabled,
            ),
          ],
        ),
      ),
    );
  }
}
