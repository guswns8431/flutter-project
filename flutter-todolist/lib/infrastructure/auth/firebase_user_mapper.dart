import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_todolist/domain/auth/user.dart';
import 'package:flutter_todolist/domain/auth/value_objects.dart';
import 'package:flutter_todolist/domain/core/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(FirebaseUser _) {
    return _ == null
        ? null
        : User(
            id: UniqueId.fromUniqueString(_.uid),
            name: StringSingleLine(_.displayName ?? _.email.split('@').first),
            emailAddress: EmailAddress(_.email),
          );
  }
}
