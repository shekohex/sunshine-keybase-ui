import 'package:sunshine/models/models.dart';
import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class KeyService {
  KeyService({ClientService clientService}) : _clientService = clientService;

  final ClientService _clientService;

  Future<bool> lock() {
    return _clientService.lock();
  }

  Future<bool> unlock(String password) {
    return _clientService.unlock(password);
  }

  Future<bool> hasKey() {
    return _clientService.hasKey();
  }

  Future<Account> generate(String password) async {
    final deviceId = await _clientService.setKey(password);
    print('device ID: $deviceId');
    final amount = await _clientService.mint();
    print('Account minted with: $amount');
    final uid = await _clientService.uid();
    return Account(uid: uid);
  }

  Future<Account> restore(String password, String paperKey) async {
    final uid = await _clientService.setKey(password, paperKey: paperKey);
    if (uid == null) {
      throw NullThrownError();
    }
    return Account(
      uid: uid,
    );
  }
}
