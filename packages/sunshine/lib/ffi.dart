/// bindings for `libsunshine`

import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart' as ffi;

// ignore_for_file: unused_import, camel_case_types, non_constant_identifier_names
final DynamicLibrary _dl = _open();
/// Reference to the Dynamic Library, it should be only used for low-level access
final DynamicLibrary dl = _dl;
DynamicLibrary _open() {
  if (Platform.isAndroid) return DynamicLibrary.open('libsunshine.so');
  if (Platform.isIOS) return DynamicLibrary.executable();
  throw UnsupportedError('This platform is not supported.');
}

/// <p class="para-brief"> Changes Current Account Password. returns `true` if it got updated.</p>
int client_account_change_password(
  int port,
  Pointer<ffi.Utf8> to,
) {
  return _client_account_change_password(port, to);
}
final _client_account_change_password_Dart _client_account_change_password = _dl.lookupFunction<_client_account_change_password_C, _client_account_change_password_Dart>('client_account_change_password');
typedef _client_account_change_password_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> to,
);
typedef _client_account_change_password_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> to,
);

/// <p class="para-brief"> Creates Account for that device id. returns `true` if it got created.</p>
int client_account_create(
  int port,
  Pointer<ffi.Utf8> device,
) {
  return _client_account_create(port, device);
}
final _client_account_create_Dart _client_account_create = _dl.lookupFunction<_client_account_create_C, _client_account_create_Dart>('client_account_create');
typedef _client_account_create_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> device,
);
typedef _client_account_create_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> device,
);

/// <p class="para-brief"> add a new device to your account the `device` should be in the `ss58` format</p>
int client_device_add(
  int port,
  Pointer<ffi.Utf8> device,
) {
  return _client_device_add(port, device);
}
final _client_device_add_Dart _client_device_add = _dl.lookupFunction<_client_device_add_C, _client_device_add_Dart>('client_device_add');
typedef _client_device_add_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> device,
);
typedef _client_device_add_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> device,
);

/// <p class="para-brief"> Get current Device ID as string (if any) otherwise null returned</p>
int client_device_current(
  int port,
) {
  return _client_device_current(port);
}
final _client_device_current_Dart _client_device_current = _dl.lookupFunction<_client_device_current_C, _client_device_current_Dart>('client_device_current');
typedef _client_device_current_C = Int32 Function(
  Int64 port,
);
typedef _client_device_current_Dart = int Function(
  int port,
);

/// <p class="para-brief"> Check if the current client has a device key already or not</p>
int client_device_has_key(
  int port,
) {
  return _client_device_has_key(port);
}
final _client_device_has_key_Dart _client_device_has_key = _dl.lookupFunction<_client_device_has_key_C, _client_device_has_key_Dart>('client_device_has_key');
typedef _client_device_has_key_C = Int32 Function(
  Int64 port,
);
typedef _client_device_has_key_Dart = int Function(
  int port,
);

/// <p class="para-brief"> get a list of devices that linked to that identifier returns list of devices ids in `ss58` fromat (as strings) or an error message</p>
int client_device_list(
  int port,
  Pointer<ffi.Utf8> identifier,
) {
  return _client_device_list(port, identifier);
}
final _client_device_list_Dart _client_device_list = _dl.lookupFunction<_client_device_list_C, _client_device_list_Dart>('client_device_list');
typedef _client_device_list_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> identifier,
);
typedef _client_device_list_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> identifier,
);

/// <p class="para-brief"> Generate a new backup paper key that can be used to recover your account returns a string that contains the phrase, otherwise null if there is an error</p>
int client_device_paperkey(
  int port,
) {
  return _client_device_paperkey(port);
}
final _client_device_paperkey_Dart _client_device_paperkey = _dl.lookupFunction<_client_device_paperkey_C, _client_device_paperkey_Dart>('client_device_paperkey');
typedef _client_device_paperkey_C = Int32 Function(
  Int64 port,
);
typedef _client_device_paperkey_Dart = int Function(
  int port,
);

/// <p class="para-brief"> remove a device from your account the `device` should be in the `ss58` fromat</p>
int client_device_remove(
  int port,
  Pointer<ffi.Utf8> device,
) {
  return _client_device_remove(port, device);
}
final _client_device_remove_Dart _client_device_remove = _dl.lookupFunction<_client_device_remove_C, _client_device_remove_Dart>('client_device_remove');
typedef _client_device_remove_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> device,
);
typedef _client_device_remove_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> device,
);

/// <p class="para-brief"> Try to mint the current account, this only enabled in testnet and behind a feature flag returned the minted amount or null if there is any errors</p>
int client_faucet_mint(
  int port,
) {
  return _client_faucet_mint(port);
}
final _client_faucet_mint_Dart _client_faucet_mint = _dl.lookupFunction<_client_faucet_mint_C, _client_faucet_mint_Dart>('client_faucet_mint');
typedef _client_faucet_mint_C = Int32 Function(
  Int64 port,
);
typedef _client_faucet_mint_Dart = int Function(
  int port,
);

/// <p class="para-brief"> get a list of identities of the provided identifier.</p>
int client_id_list(
  int port,
  Pointer<ffi.Utf8> identifier,
) {
  return _client_id_list(port, identifier);
}
final _client_id_list_Dart _client_id_list = _dl.lookupFunction<_client_id_list_C, _client_id_list_Dart>('client_id_list');
typedef _client_id_list_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> identifier,
);
typedef _client_id_list_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> identifier,
);

/// <p class="para-brief"> prove the current account identity to a service. the service string should be in the format of `username` for example `shekohex` returns a pair (list of two values) the first element is the `instructions` of how to prove the identity the second element is the `proof` itself where you should follow the instructions and post it somewhere. otherwise and error returned as string.</p>
int client_id_prove(
  int port,
  Pointer<ffi.Utf8> service,
) {
  return _client_id_prove(port, service);
}
final _client_id_prove_Dart _client_id_prove = _dl.lookupFunction<_client_id_prove_C, _client_id_prove_Dart>('client_id_prove');
typedef _client_id_prove_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> service,
);
typedef _client_id_prove_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> service,
);

/// <p class="para-brief"> Get the `UID` of the provided identifier</p>
int client_id_resolve(
  int port,
  Pointer<ffi.Utf8> identifier,
) {
  return _client_id_resolve(port, identifier);
}
final _client_id_resolve_Dart _client_id_resolve = _dl.lookupFunction<_client_id_resolve_C, _client_id_resolve_Dart>('client_id_resolve');
typedef _client_id_resolve_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> identifier,
);
typedef _client_id_resolve_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> identifier,
);

/// <p class="para-brief"> revoke your identity from the provided service see `client_id_prove` for more information. returns `true` if the identity revoked.</p>
int client_id_revoke(
  int port,
  Pointer<ffi.Utf8> service,
) {
  return _client_id_revoke(port, service);
}
final _client_id_revoke_Dart _client_id_revoke = _dl.lookupFunction<_client_id_revoke_C, _client_id_revoke_Dart>('client_id_revoke');
typedef _client_id_revoke_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> service,
);
typedef _client_id_revoke_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> service,
);

/// <p class="para-brief"> Setup the Sunshine Client using the provided path as the base path and with chainspec.</p><p> ### Safety This assumes that the path non-null c string. chain_spec non-null c string.</p>
int client_init(
  int port,
  Pointer<ffi.Utf8> path,
  Pointer<ffi.Utf8> chain_spec,
) {
  return _client_init(port, path, chain_spec);
}
final _client_init_Dart _client_init = _dl.lookupFunction<_client_init_C, _client_init_Dart>('client_init');
typedef _client_init_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> path,
  Pointer<ffi.Utf8> chain_spec,
);
typedef _client_init_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> path,
  Pointer<ffi.Utf8> chain_spec,
);

/// <p class="para-brief"> Check if the Keystore is exist and initialized.</p><p> this is useful if you want to check if there is an already created account or not.</p>
int client_key_exists(
  int port,
) {
  return _client_key_exists(port);
}
final _client_key_exists_Dart _client_key_exists = _dl.lookupFunction<_client_key_exists_C, _client_key_exists_Dart>('client_key_exists');
typedef _client_key_exists_C = Int32 Function(
  Int64 port,
);
typedef _client_key_exists_Dart = int Function(
  int port,
);

/// <p class="para-brief"> Lock your account return `true` if locked, and return an error message if something went wrong</p>
int client_key_lock(
  int port,
) {
  return _client_key_lock(port);
}
final _client_key_lock_Dart _client_key_lock = _dl.lookupFunction<_client_key_lock_C, _client_key_lock_Dart>('client_key_lock');
typedef _client_key_lock_C = Int32 Function(
  Int64 port,
);
typedef _client_key_lock_Dart = int Function(
  int port,
);

/// <p class="para-brief"> Set a new Key for this device if not already exist. you should call `client_has_device_key` first to see if you have already a key.</p><p> suri is used for testing only. phrase is used to restore a backup returns a string that is the current device id</p>
int client_key_set(
  int port,
  Pointer<ffi.Utf8> password,
  Pointer<ffi.Utf8> suri,
  Pointer<ffi.Utf8> paperkey,
) {
  return _client_key_set(port, password, suri, paperkey);
}
final _client_key_set_Dart _client_key_set = _dl.lookupFunction<_client_key_set_C, _client_key_set_Dart>('client_key_set');
typedef _client_key_set_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> password,
  Pointer<ffi.Utf8> suri,
  Pointer<ffi.Utf8> paperkey,
);
typedef _client_key_set_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> password,
  Pointer<ffi.Utf8> suri,
  Pointer<ffi.Utf8> paperkey,
);

/// <p class="para-brief"> Get current UID as string (if any) otherwise null returned</p>
int client_key_uid(
  int port,
) {
  return _client_key_uid(port);
}
final _client_key_uid_Dart _client_key_uid = _dl.lookupFunction<_client_key_uid_C, _client_key_uid_Dart>('client_key_uid');
typedef _client_key_uid_C = Int32 Function(
  Int64 port,
);
typedef _client_key_uid_Dart = int Function(
  int port,
);

/// <p class="para-brief"> Unlock your account using the password return `true` when the account get unlocked, otherwise an error message returned</p>
int client_key_unlock(
  int port,
  Pointer<ffi.Utf8> password,
) {
  return _client_key_unlock(port, password);
}
final _client_key_unlock_Dart _client_key_unlock = _dl.lookupFunction<_client_key_unlock_C, _client_key_unlock_Dart>('client_key_unlock');
typedef _client_key_unlock_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> password,
);
typedef _client_key_unlock_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> password,
);

/// <p class="para-brief"> Get the balance of an identifier. returns and string but normally it&#39;s a `u128` encoded as string.</p>
int client_wallet_balance(
  int port,
  Pointer<ffi.Utf8> identifier,
) {
  return _client_wallet_balance(port, identifier);
}
final _client_wallet_balance_Dart _client_wallet_balance = _dl.lookupFunction<_client_wallet_balance_C, _client_wallet_balance_Dart>('client_wallet_balance');
typedef _client_wallet_balance_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> identifier,
);
typedef _client_wallet_balance_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> identifier,
);

/// <p class="para-brief"> Transfer tokens to another account using there `identifier` returns current account balance after the transaction.</p>
int client_wallet_transfer(
  int port,
  Pointer<ffi.Utf8> to,
  int amount,
) {
  return _client_wallet_transfer(port, to, amount);
}
final _client_wallet_transfer_Dart _client_wallet_transfer = _dl.lookupFunction<_client_wallet_transfer_C, _client_wallet_transfer_Dart>('client_wallet_transfer');
typedef _client_wallet_transfer_C = Int32 Function(
  Int64 port,
  Pointer<ffi.Utf8> to,
  Uint64 amount,
);
typedef _client_wallet_transfer_Dart = int Function(
  int port,
  Pointer<ffi.Utf8> to,
  int amount,
);

/// <p class="para-brief"> Check if the Logger is already initialized to prevent any errors of calling init again. return 1 if initialized before, 0 otherwise.</p>
int frusty_logger_is_initialized() {
  return _frusty_logger_is_initialized();
}
final _frusty_logger_is_initialized_Dart _frusty_logger_is_initialized = _dl.lookupFunction<_frusty_logger_is_initialized_C, _frusty_logger_is_initialized_Dart>('frusty_logger_is_initialized');
typedef _frusty_logger_is_initialized_C = Int32 Function();
typedef _frusty_logger_is_initialized_Dart = int Function();

/// <p class="para-brief"> a hack to make iOS link to this lib no need to call it from the FFI.</p>
void link_me_please() {
  _link_me_please();
}
final _link_me_please_Dart _link_me_please = _dl.lookupFunction<_link_me_please_C, _link_me_please_Dart>('link_me_please');
typedef _link_me_please_C = Void Function();
typedef _link_me_please_Dart = void Function();

/// Binding to `allo-isolate` crate
void store_dart_post_cobject(
  Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>> ptr,
) {
  _store_dart_post_cobject(ptr);
}
final _store_dart_post_cobject_Dart _store_dart_post_cobject = _dl.lookupFunction<_store_dart_post_cobject_C, _store_dart_post_cobject_Dart>('store_dart_post_cobject');
typedef _store_dart_post_cobject_C = Void Function(
  Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>> ptr,
);
typedef _store_dart_post_cobject_Dart = void Function(
  Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>> ptr,
);
