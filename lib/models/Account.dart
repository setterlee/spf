/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Account type in your schema. */
@immutable
class Account extends Model {
  static const classType = const _AccountModelType();
  final String id;
  final List<Transaction>? _Transactions;
  final String? _name;
  final AccountType? _type;
  final double? _balance;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<Transaction>? get Transactions {
    return _Transactions;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  AccountType get type {
    try {
      return _type!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double? get balance {
    return _balance;
  }
  
  const Account._internal({required this.id, Transactions, required name, required type, balance}): _Transactions = Transactions, _name = name, _type = type, _balance = balance;
  
  factory Account({String? id, List<Transaction>? Transactions, required String name, required AccountType type, double? balance}) {
    return Account._internal(
      id: id == null ? UUID.getUUID() : id,
      Transactions: Transactions != null ? List<Transaction>.unmodifiable(Transactions) : Transactions,
      name: name,
      type: type,
      balance: balance);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
      id == other.id &&
      DeepCollectionEquality().equals(_Transactions, other._Transactions) &&
      _name == other._name &&
      _type == other._type &&
      _balance == other._balance;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Account {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("type=" + (_type != null ? enumToString(_type)! : "null") + ", ");
    buffer.write("balance=" + (_balance != null ? _balance!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Account copyWith({String? id, List<Transaction>? Transactions, String? name, AccountType? type, double? balance}) {
    return Account(
      id: id ?? this.id,
      Transactions: Transactions ?? this.Transactions,
      name: name ?? this.name,
      type: type ?? this.type,
      balance: balance ?? this.balance);
  }
  
  Account.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Transactions = json['Transactions'] is List
        ? (json['Transactions'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Transaction.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _name = json['name'],
      _type = enumFromString<AccountType>(json['type'], AccountType.values),
      _balance = (json['balance'] as num?)?.toDouble();
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Transactions': _Transactions?.map((Transaction? e) => e?.toJson()).toList(), 'name': _name, 'type': enumToString(_type), 'balance': _balance
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Transactions': _Transactions, 'name': _name, 'type': _type, 'balance': _balance
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TRANSACTIONS = QueryField(
    fieldName: "Transactions",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Transaction).toString()));
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField BALANCE = QueryField(fieldName: "balance");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Account";
    modelSchemaDefinition.pluralName = "Accounts";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Account.TRANSACTIONS,
      isRequired: false,
      ofModelName: (Transaction).toString(),
      associatedKey: Transaction.ACCOUNTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.TYPE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.BALANCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
  });
}

class _AccountModelType extends ModelType<Account> {
  const _AccountModelType();
  
  @override
  Account fromJson(Map<String, dynamic> jsonData) {
    return Account.fromJson(jsonData);
  }
}