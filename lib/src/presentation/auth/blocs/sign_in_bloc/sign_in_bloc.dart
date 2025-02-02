import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:teeth_align_app/main.dart';
import 'package:teeth_align_app/src/core/constants/storage_keys.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/data/body/sign_in_body.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_auth_repository.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/router/app_router.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

typedef SIB = SignInBloc;

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository authRepository;
  final AppRouter router;
  final FlutterSecureStorage secureStorage;
  final SharedPreferences pref;

  SignInBloc({
    required this.authRepository,
    required this.router,
    required this.secureStorage,
    required this.pref,
  }) : super(SignInState(signInBody: SignInBody.empty())) {
    on<ChangeField>(onChangeField);
    on<SignIn>(onSignIn);
    on<SignOut>(onSignOut);
    on<CheckAuthorized>(onCheckAuthorized);
    on<Reset>(onReset);
    on<DeleteAccount>(onDeleteAccount);
  }

  void onChangeField(
    ChangeField event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(
      signInBody: switch (event.field) {
        SignInField.email => state.signInBody?.copyWith(
            email: event.value,
          ),
        SignInField.password => state.signInBody?.copyWith(
            password: event.value,
          ),
      },
    ));
  }

  Future<void> onSignIn(
    SignIn event,
    Emitter<SignInState> emit,
  ) async {
    if (state.signInBody == null) return;

    emit(state.copyWith(status: LoadStatus.loading));

    final result = await authRepository.signIn(body: state.signInBody!);

    result.fold(
      (l) => emit(state.copyWith(status: LoadStatus.failed)),
      (r) {
        router.replace(const SplashRoute());
        emit(state.copyWith(status: LoadStatus.success));
      },
    );
  }

  Future<void> onSignOut(
    SignOut event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    await getIt<FlutterSecureStorage>().delete(key: StorageKeys.token);

    await client.disconnectUser();

    router
      ..popUntilRoot()
      ..replace(const SplashRoute());

    emit(state.copyWith(status: LoadStatus.success));
  }

  Future<void> onCheckAuthorized(
    CheckAuthorized event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    var result = await authRepository.getAccount();

    AccountEntity? account;

    result.fold(
      (_) => emit(state.copyWith(status: LoadStatus.failed)),
      (r) {
        account = r;
        appData.role = r.role;
        appData.fullName = '${r.firstName}\n${r.lastName}';
        appData.userId = r.id;
      },
    );

    if (result.isLeft() || account == null) {
      await getIt<FlutterSecureStorage>().delete(key: StorageKeys.token);
      return;
    }

    if (account!.chatUserId != null &&
        account!.chatToken != null &&
        !appData.isChatAvailable) {
      await client.connectUser(
        User(id: account!.chatUserId!),
        account!.chatToken!,
      );

      appData.isChatAvailable = client.state.currentUser != null;
      appData.chaUserId = account!.chatUserId;
      appData.fullName = account!.fullName;
      appData.account = account;
    }

    final isSet = pref.getBool(StorageKeys.isAlignerSettingsSet) ?? false;

    emit(state.copyWith(
      status: LoadStatus.success,
      account: account,
      isAlignerSettingsSet: isSet,
    ));
  }

  void onReset(
    Reset event,
    Emitter<SignInState> emit,
  ) =>
      emit(state.copyWith(status: LoadStatus.initial));

  Future<void> onDeleteAccount(
    DeleteAccount event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    (await authRepository.deleteAccount()).fold(
      (l) => emit(state.copyWith(status: LoadStatus.failed)),
      (r) {
        secureStorage.delete(key: StorageKeys.token);
        router
          ..popUntilRoot()
          ..replace(const SplashRoute());
        emit(state.copyWith(status: LoadStatus.success));
      },
    );
  }
}
