// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String password) signup,
    required TResult Function(String mobileNumber, String otp) verifyOTP,
    required TResult Function(String mobileNumber, String password) login,
    required TResult Function(String mobileNumber) forgotPassword,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String password)? signup,
    TResult? Function(String mobileNumber, String otp)? verifyOTP,
    TResult? Function(String mobileNumber, String password)? login,
    TResult? Function(String mobileNumber)? forgotPassword,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? signup,
    TResult Function(String mobileNumber, String otp)? verifyOTP,
    TResult Function(String mobileNumber, String password)? login,
    TResult Function(String mobileNumber)? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthIntentCopyWith<$Res> {
  factory $AuthIntentCopyWith(
          AuthIntent value, $Res Function(AuthIntent) then) =
      _$AuthIntentCopyWithImpl<$Res, AuthIntent>;
}

/// @nodoc
class _$AuthIntentCopyWithImpl<$Res, $Val extends AuthIntent>
    implements $AuthIntentCopyWith<$Res> {
  _$AuthIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignupImplCopyWith<$Res> {
  factory _$$SignupImplCopyWith(
          _$SignupImpl value, $Res Function(_$SignupImpl) then) =
      __$$SignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNumber, String password});
}

/// @nodoc
class __$$SignupImplCopyWithImpl<$Res>
    extends _$AuthIntentCopyWithImpl<$Res, _$SignupImpl>
    implements _$$SignupImplCopyWith<$Res> {
  __$$SignupImplCopyWithImpl(
      _$SignupImpl _value, $Res Function(_$SignupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? password = null,
  }) {
    return _then(_$SignupImpl(
      null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupImpl implements _Signup {
  const _$SignupImpl(this.mobileNumber, this.password);

  @override
  final String mobileNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthIntent.signup(mobileNumber: $mobileNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, password);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      __$$SignupImplCopyWithImpl<_$SignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String password) signup,
    required TResult Function(String mobileNumber, String otp) verifyOTP,
    required TResult Function(String mobileNumber, String password) login,
    required TResult Function(String mobileNumber) forgotPassword,
    required TResult Function() logout,
  }) {
    return signup(mobileNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String password)? signup,
    TResult? Function(String mobileNumber, String otp)? verifyOTP,
    TResult? Function(String mobileNumber, String password)? login,
    TResult? Function(String mobileNumber)? forgotPassword,
    TResult? Function()? logout,
  }) {
    return signup?.call(mobileNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? signup,
    TResult Function(String mobileNumber, String otp)? verifyOTP,
    TResult Function(String mobileNumber, String password)? login,
    TResult Function(String mobileNumber)? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(mobileNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _Signup implements AuthIntent {
  const factory _Signup(final String mobileNumber, final String password) =
      _$SignupImpl;

  String get mobileNumber;
  String get password;

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPImplCopyWith<$Res> {
  factory _$$VerifyOTPImplCopyWith(
          _$VerifyOTPImpl value, $Res Function(_$VerifyOTPImpl) then) =
      __$$VerifyOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNumber, String otp});
}

/// @nodoc
class __$$VerifyOTPImplCopyWithImpl<$Res>
    extends _$AuthIntentCopyWithImpl<$Res, _$VerifyOTPImpl>
    implements _$$VerifyOTPImplCopyWith<$Res> {
  __$$VerifyOTPImplCopyWithImpl(
      _$VerifyOTPImpl _value, $Res Function(_$VerifyOTPImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? otp = null,
  }) {
    return _then(_$VerifyOTPImpl(
      null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOTPImpl implements _VerifyOTP {
  const _$VerifyOTPImpl(this.mobileNumber, this.otp);

  @override
  final String mobileNumber;
  @override
  final String otp;

  @override
  String toString() {
    return 'AuthIntent.verifyOTP(mobileNumber: $mobileNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, otp);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      __$$VerifyOTPImplCopyWithImpl<_$VerifyOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String password) signup,
    required TResult Function(String mobileNumber, String otp) verifyOTP,
    required TResult Function(String mobileNumber, String password) login,
    required TResult Function(String mobileNumber) forgotPassword,
    required TResult Function() logout,
  }) {
    return verifyOTP(mobileNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String password)? signup,
    TResult? Function(String mobileNumber, String otp)? verifyOTP,
    TResult? Function(String mobileNumber, String password)? login,
    TResult? Function(String mobileNumber)? forgotPassword,
    TResult? Function()? logout,
  }) {
    return verifyOTP?.call(mobileNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? signup,
    TResult Function(String mobileNumber, String otp)? verifyOTP,
    TResult Function(String mobileNumber, String password)? login,
    TResult Function(String mobileNumber)? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(mobileNumber, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTP implements AuthIntent {
  const factory _VerifyOTP(final String mobileNumber, final String otp) =
      _$VerifyOTPImpl;

  String get mobileNumber;
  String get otp;

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNumber, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthIntentCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.mobileNumber, this.password);

  @override
  final String mobileNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthIntent.login(mobileNumber: $mobileNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, password);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String password) signup,
    required TResult Function(String mobileNumber, String otp) verifyOTP,
    required TResult Function(String mobileNumber, String password) login,
    required TResult Function(String mobileNumber) forgotPassword,
    required TResult Function() logout,
  }) {
    return login(mobileNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String password)? signup,
    TResult? Function(String mobileNumber, String otp)? verifyOTP,
    TResult? Function(String mobileNumber, String password)? login,
    TResult? Function(String mobileNumber)? forgotPassword,
    TResult? Function()? logout,
  }) {
    return login?.call(mobileNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? signup,
    TResult Function(String mobileNumber, String otp)? verifyOTP,
    TResult Function(String mobileNumber, String password)? login,
    TResult Function(String mobileNumber)? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(mobileNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthIntent {
  const factory _Login(final String mobileNumber, final String password) =
      _$LoginImpl;

  String get mobileNumber;
  String get password;

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNumber});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthIntentCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
  }) {
    return _then(_$ForgotPasswordImpl(
      null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements _ForgotPassword {
  const _$ForgotPasswordImpl(this.mobileNumber);

  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'AuthIntent.forgotPassword(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String password) signup,
    required TResult Function(String mobileNumber, String otp) verifyOTP,
    required TResult Function(String mobileNumber, String password) login,
    required TResult Function(String mobileNumber) forgotPassword,
    required TResult Function() logout,
  }) {
    return forgotPassword(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String password)? signup,
    TResult? Function(String mobileNumber, String otp)? verifyOTP,
    TResult? Function(String mobileNumber, String password)? login,
    TResult? Function(String mobileNumber)? forgotPassword,
    TResult? Function()? logout,
  }) {
    return forgotPassword?.call(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? signup,
    TResult Function(String mobileNumber, String otp)? verifyOTP,
    TResult Function(String mobileNumber, String password)? login,
    TResult Function(String mobileNumber)? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthIntent {
  const factory _ForgotPassword(final String mobileNumber) =
      _$ForgotPasswordImpl;

  String get mobileNumber;

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthIntentCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthIntent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String password) signup,
    required TResult Function(String mobileNumber, String otp) verifyOTP,
    required TResult Function(String mobileNumber, String password) login,
    required TResult Function(String mobileNumber) forgotPassword,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String password)? signup,
    TResult? Function(String mobileNumber, String otp)? verifyOTP,
    TResult? Function(String mobileNumber, String password)? login,
    TResult? Function(String mobileNumber)? forgotPassword,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? signup,
    TResult Function(String mobileNumber, String otp)? verifyOTP,
    TResult Function(String mobileNumber, String password)? login,
    TResult Function(String mobileNumber)? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthIntent {
  const factory _Logout() = _$LogoutImpl;
}
