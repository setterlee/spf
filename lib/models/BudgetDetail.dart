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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the BudgetDetail type in your schema. */
@immutable
class BudgetDetail extends Model {
  static const classType = const _BudgetDetailModelType();
  final String id;
  final String? _budgetID;
  final String? _description;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get budgetID {
    try {
      return _budgetID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const BudgetDetail._internal({required this.id, required budgetID, required description}): _budgetID = budgetID, _description = description;
  
  factory BudgetDetail({String? id, required String budgetID, required String description}) {
    return BudgetDetail._internal(
      id: id == null ? UUID.getUUID() : id,
      budgetID: budgetID,
      description: description);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BudgetDetail &&
      id == other.id &&
      _budgetID == other._budgetID &&
      _description == other._description;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("BudgetDetail {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("budgetID=" + "$_budgetID" + ", ");
    buffer.write("description=" + "$_description");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  BudgetDetail copyWith({String? id, String? budgetID, String? description}) {
    return BudgetDetail(
      id: id ?? this.id,
      budgetID: budgetID ?? this.budgetID,
      description: description ?? this.description);
  }
  
  BudgetDetail.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _budgetID = json['budgetID'],
      _description = json['description'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'budgetID': _budgetID, 'description': _description
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'budgetID': _budgetID, 'description': _description
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField BUDGETID = QueryField(fieldName: "budgetID");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BudgetDetail";
    modelSchemaDefinition.pluralName = "BudgetDetails";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["budgetID"], name: "byBudget")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BudgetDetail.BUDGETID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BudgetDetail.DESCRIPTION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _BudgetDetailModelType extends ModelType<BudgetDetail> {
  const _BudgetDetailModelType();
  
  @override
  BudgetDetail fromJson(Map<String, dynamic> jsonData) {
    return BudgetDetail.fromJson(jsonData);
  }
}