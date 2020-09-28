import 'package:sunshine/models/models.dart';

abstract class ClientService {
  Future<bool> get ready;
  Future<bool> lock();
  Future<bool> unlock(String password);
  Future<String> setKey(String password, {String suri, String paperKey});
  Future<String> uid();
  Future<bool> hasKey();
  Future<String> balance();
  Future<String> transfer(String id, BigInt amount);
  Future<BigInt> mint();
  Future<String> deviceId();
  Future<bool> revokeDevice(String id);
  Future<bool> addDevice(String id);
  Future<List<String>> devices();
  Future<String> addPaperKey();
  Future<List<String>> identities(String uid);
  Future<String> uidOf(String id);
  Future<ProveIdentityResult> proveIdentity(SocialIdentityService service);
  Future<bool> revokeIdentity(SocialIdentityService service);
}

class ProveIdentityResult {
  const ProveIdentityResult(this.instructions, this.proof);
  final String instructions;
  final String proof;
}
