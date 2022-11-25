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


/** This is an auto generated class representing the Budget type in your schema. */
@immutable
class Budget extends Model {
  static const classType = const _BudgetModelType();
  final String id;
  final List<BudgetDetail>? _BudgetDetails;
  final List<BudgetDetail>? _Transactions;
  final String? _name;
  final bool? _isDebt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<BudgetDetail>? get BudgetDetails {
    return _BudgetDetails;
  }
  
  List<BudgetDetail>? get Transactions {
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
  
  bool? get isDebt {
    return _isDebt;
  }
  
  const Budget._internal({required this.id, BudgetDetails, Transactions, required name, isDebt}): _BudgetDetails = BudgetDetails, _Transactions = Transactions, _name = name, _isDebt = isDebt;
  
  factory Budget({String? id, List<BudgetDetail>? BudgetDetails, List<BudgetDetail>? Transactions, required String name, bool? isDebt}) {
    return Budget._internal(
      id: id == null ? UUID.getUUID() : id,
      BudgetDetails: BudgetDetails != null ? List<BudgetDetail>.unmodifiable(BudgetDetails) : BudgetDetails,
      Transactions: Transactions != null ? List<BudgetDetail>.unmodifiable(Transactions) : Transactions,
      name: name,
      isDebt: isDebt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Budget &&
      id == other.id &&
      DeepCollectionEquality().equals(_BudgetDetails, other._BudgetDetails) &&
      DeepCollectionEquality().equals(_Transactions, other._Transactions) &&
      _name == other._name &&
      _isDebt == other._isDebt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Budget {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("isDebt=" + (_isDebt != null ? _isDebt!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Budget copyWith({String? id, List<BudgetDetail>? BudgetDetails, List<BudgetDetail>? Transactions, String? name, bool? isDebt}) {
    return Budget(
      id: id ?? this.id,
      BudgetDetails: BudgetDetails ?? this.BudgetDetails,
      Transactions: Transactions ?? this.Transactions,
      name: name ?? this.name,
      isDebt: isDebt ?? this.isDebt);
  }
  
  Budget.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _BudgetDetails = json['BudgetDetails'] is List
        ? (json['BudgetDetails'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => BudgetDetail.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _Transactions = json['Transactions'] is List
        ? (json['Transactions'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => BudgetDetail.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _name = json['name'],
      _isDebt = json['isDebt'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'BudgetDetails': _BudgetDetails?.map((BudgetDetail? e) => e?.toJson()).toList(), 'Transactions': _Transactions?.map((BudgetDetail? e) => e?.toJson()).toList(), 'name': _name, 'isDebt': _isDebt
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'BudgetDetails': _BudgetDetails, 'Transactions': _Transactions, 'name': _name, 'isDebt': _isDebt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField BUDGETDETAILS = QueryField(
    fieldName: "BudgetDetails",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (BudgetDetail).toString()));
  static final QueryField TRANSACTIONS = QueryField(
    fieldName: "Transactions",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (BudgetDetail).toString()));
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField ISDEBT = QueryField(fieldName: "isDebt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Budget";
    modelSchemaDefinition.pluralName = "Budgets";
    
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
      key: Budget.BUDGETDETAILS,
      isRequired: false,
      ofModelName: (BudgetDetail).toString(),
      associatedKey: BudgetDetail.BUDGETID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Budget.TRANSACTIONS,
      isRequired: false,
      ofModelName: (BudgetDetail).toString(),
      associatedKey: BudgetDetail.BUDGETID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Budget.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Budget.ISDEBT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _BudgetModelType extends ModelType<Budget> {
  const _BudgetModelType();
  
  @override
  Budget fromJson(Map<String, dynamic> jsonData) {
    return Budget.fromJson(jsonData);
  }
}