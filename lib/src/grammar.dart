// Copyright (c) 2019 the Rampage Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

import 'package:petitparser/petitparser.dart';

/// WebIDL grammar.
class WebIdlGrammar extends GrammarParser {
  /// Creates an instance of the [WebIdlGrammar] class.
  WebIdlGrammar() : super(WebIdlGrammarDefinition());
}

/// WebIDL grammar definition.
///
/// Implementation of the [WebIDL grammar]
/// (https://heycam.github.io/webidl/#idl-grammar).
class WebIdlGrammarDefinition extends GrammarDefinition {
  @override
  Parser start() => ref(definitions).end();

  /// Parses the [input] token.
  Parser token(Object input) {
    if (input is Parser) {
      return input.token().trim(ref(whitespace));
    } else if (input is String) {
      return token(input.length == 1 ? char(input) : string(input));
    } else if (input is Function) {
      return token(ref(input));
    }

    throw ArgumentError.value(input, 'invalid token parser');
  }

  /// The `Definitions` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Definitions).
  ///
  /// This is the root of the grammar.
  Parser definitions() => null;

  /// A `Definition` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Definition).
  Parser definition() => null;

  /// An `ArgumentNameKeyword` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ArgumentNameKeyword).

  /// A `CallbackOrInterfaceOrMixin` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-CallbackOrInterfaceOrMixin).
  Parser callbackOrInterfaceOrMixin() => null;

  /// An `InterfaceOrMixin` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-InterfaceOrMixin).
  Parser interfaceOrMixin() => null;

  /// An `InterfaceRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-InterfaceRest).
  Parser interfaceRest() => null;

  /// A `Partial` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Partial).
  Parser partial() => null;

  /// A `PartialDefinition` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-PartialDefinition).
  Parser partialDefinition() => null;

  /// A `PartialInterfaceOrPartialMixin` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-PartialInterfaceOrPartialMixin).
  Parser partialInterfaceOrPartialMixin() => null;

  /// A `PartialInterfaceRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-PartialInterfaceRest).
  Parser partialInterfaceRest() => null;

  /// An `InterfaceMembers` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-InterfaceMembers).
  Parser interfaceMembers() => null;

  /// An `InterfaceMember` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-InterfaceMember).
  Parser interfaceMember() => null;

  /// A `PartialInterfaceMembers` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-PartialInterfaceMembers).
  Parser partialInterfaceMembers() => null;

  /// A `PartialInterfaceMember` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-PartialInterfaceMember).
  Parser partialInterfaceMember() => null;

  /// An `Inheritance` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Inheritance).
  Parser inheritance() => null;

  /// A `MixinRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-MixinRest).
  Parser mixinRest() => null;

  /// A `MixinMembers` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-MixinMembers).
  Parser mixinMembers() => null;

  /// An `IncludesStatement` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-IncludesStatement).
  Parser includesStatement() => null;

  /// A `CallbackRestOrInterface` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-CallbackRestOrInterface).
  Parser callbackRestOrInterface() => null;

  /// A `CallbackInterfaceMembers` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-CallbackInterfaceMembers).
  Parser callbackInterfaceMembers() => null;

  /// A `CallbackInterfaceMember` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-CallbackInterfaceMember).
  Parser callbackInterfaceMember() => null;

  /// A `Const` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Const).
  Parser constant() => null;

  /// A `ConstValue` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ConstValue).
  Parser constantValue() => null;

  /// A `BooleanLiteral` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-BooleanLiteral).
  Parser booleanLiteral() => null;

  /// A `FloatLiteral` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-FloatLiteral).
  Parser floatLiteral() => null;

  /// A `ConstType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ConstType).
  Parser constantType() => null;

  /// A `ReadOnlyMember` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ReadOnlyMember).
  Parser readOnlyMember() => null;

  /// A `ReadOnlyMemberRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ReadOnlyMemberRest).
  Parser readOnlyMemberRest() => null;

  /// A `ReadWriteAttribute` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ReadWriteAttribute).
  Parser readWriteAttribute() => null;

  /// An `AttributeRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-AttributeRest).
  Parser attributeRest() => null;

  /// An `AttributeName` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-AttributeName).
  Parser attributeName() => null;

  /// An `AttributeNameKeyword` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-AttributeNameKeyword).
  Parser attributeNameKeyword() => null;

  /// A `ReadOnly` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ReadOnly).
  Parser readOnly() => null;

  /// A `DefaultValue` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-DefaultValue).
  Parser defaultValue() => null;

  /// An `Operation` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Operation).
  Parser operation() => null;

  /// A `RegularOperation` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-RegularOperation).
  Parser regularOperation() => null;

  /// A `SpecialOperation` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-SpecialOperation).
  Parser specialOperation() => null;

  /// A `Special` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Special).
  Parser special() => null;

  /// An `OperationRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-OperationRest).
  Parser operationRest() => null;

  /// An `OptionalOperationName` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-OptionalOperationName).
  Parser optionalOperationName() => null;

  /// An `ArgumentList` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ArgumentList).
  Parser argumentList() => null;

  /// An `Arguments` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Arguments).
  Parser arguments() => null;

  /// An `Argument` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Argument).
  Parser argument() => null;

  /// An `ArgumentRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ArgumentRest).
  Parser argumentRest() => null;

  /// An `ArgumentName` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ArgumentName).
  Parser argumentName() => null;

  /// An `Ellipsis` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Ellipsis).
  Parser ellipsis() => null;

  /// A `ReturnType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ReturnType).
  Parser returnType() => null;

  /// A `Constructor` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Constructor).
  Parser constructor() => null;

  /// A `Stringifier` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Stringifier).
  Parser stringifier() => null;

  /// A `StringifierRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-StringifierRest).
  Parser stringifierRest() => null;

  /// A `StaticMember` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-StaticMember).
  Parser staticMember() => null;

  /// A `StaticMemberRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-StaticMemberRest).
  Parser staticMemberRest() => null;

  /// An `Iterable` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Iterable).
  Parser iterable() => null;

  /// An `OptionalType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-OptionalType).
  Parser optionalType() => null;

  /// An `AsyncIterable` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-AsyncIterable).
  Parser asyncIterable() => null;

  /// A `ReadWriteMaplike` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ReadWriteMaplike).
  Parser readWriteMaplike() => null;

  /// A `MaplikeRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-MaplikeRest).
  Parser maplikeRest() => null;

  /// A `ReadWriteSetlike` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ReadWriteSetlike).
  Parser readWriteSetlike() => null;

  /// A `SetlikeRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-SetlikeRest).
  Parser setlikeRest() => null;

  /// A `Namespace` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Namespace).
  Parser namespace() => null;

  /// A `NamespaceMembers` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-NamespaceMembers).
  Parser namespaceMembers() => null;

  /// A `NamespaceMember` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-NamespaceMember).
  Parser namespaceMember() => null;

  /// A `Dictionary` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Dictionary).
  Parser dictionary() => null;

  /// A `DictionaryMembers` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-DictionaryMembers).
  Parser dictionaryMembers() => null;

  /// A `DictionaryMember` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-DictionaryMember).
  Parser dictionaryMember() => null;

  /// A `DictionaryMemberRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-DictionaryMemberRest).
  Parser dictionaryMemberRest() => null;

  /// A `PartialDictionary` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-PartialDictionary).
  Parser partialDictionary() => null;

  /// A `Default` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Default).
  Parser defaultTo() => null;

  /// An `Enum` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Enum).
  Parser enumeration() => null;

  /// An `EnumValueList` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-EnumValueList).
  Parser enumerationValueList() => null;

  /// An `EnumValueListComma` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-EnumValueListComma).
  Parser enumerationValueListComma() => null;

  /// An `EnumValueListString` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-EnumValueListString).
  Parser enumerationValueListString() => null;

  /// A `CallbackRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-CallbackRest).
  Parser callbackRest() => null;

  /// A `Typedef` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Typedef).
  Parser typedef() => null;

  /// A `Type` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Type).
  Parser type() => null;

  /// A `TypeWithExtendedAttributes` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-TypeWithExtendedAttributes).
  Parser typeWithExtendedAttributes() => null;

  /// A `SingleType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-SingleType).
  Parser singleType() => null;

  /// An `UnionType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-UnionType).
  Parser unionType() => null;

  /// An `UnionMemberType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-UnionMemberType).
  Parser unionMemberType() => null;

  /// An `UnionMemberTypes` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-UnionMemberTypes).
  Parser unionMemberTypes() => null;

  /// A `DistinguishableType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-DistinguishableType).
  Parser distinguishableType() => null;

  /// A `PrimitiveType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-PrimitiveType).
  Parser primitiveType() => null;

  /// An `UnrestrictedFloatType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-UnrestrictedFloatType).
  Parser unrestrictedFloatType() =>
      (ref(token, 'unrestricted') & ref(floatType)) | ref(floatType);

  /// A `FloatType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-FloatType).
  Parser floatType() => ref(token, 'float') | ref(token, 'double');

  /// An `UnsignedIntegerType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-UnsignedIntegerType).
  Parser unsignedIntegerType() => null;

  /// An `IntegerType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-IntegerType).
  Parser integerType() => null;

  /// A `OptionalLong` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-OptionalLong).
  Parser optionalLong() => null;

  /// A `StringType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-StringType).
  Parser stringType() =>
      ref(token, 'ByteString') |
      ref(token, 'DOMString') |
      ref(token, 'USVString');

  /// A `PromiseType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-PromiseType).
  Parser promiseType() => null;

  /// A `RecordType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-RecordType).
  Parser recordType() => null;

  /// A `Null` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Null).
  Parser nullable() => null;

  /// A `BufferRelatedType` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-BufferRelatedType).
  Parser bufferRelatedType() => null;

  /// An `ExtendedAttributeList` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributeList).
  Parser extendedAttributeList() => null;

  /// An `ExtendedAttributes` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributes).
  Parser extendedAttributes() => null;

  /// An `ExtendedAttribute` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttribute).
  Parser extendedAttribute() => null;

  /// An `ExtendedAttributeRest` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributeRest).
  Parser extendedAttributeRest() => null;

  /// An `ExtendedAttributeInner` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributeInner).
  Parser extendedAttributeInner() => null;

  /// An `Other` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Other).
  Parser other() => null;

  /// An `OtherOrComma` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-OtherOrComma).
  Parser otherOrComma() => null;

  /// An `IdentifierList` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-IdentifierList).
  Parser identifierList() => null;

  /// An `Identifiers` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-Identifiers).
  Parser identifiers() => null;

  /// An `ExtendedAttributeNoArgs` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributeNoArgs).
  Parser extendedAttributeNoArgs() => null;

  /// An `ExtendedAttributeArgList` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributeArgList).
  Parser extendedAttributeArgList() => null;

  /// An `ExtendedAttributeIdent` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributeIdent).
  Parser extendedAttributeIdent() => null;

  /// An `ExtendedAttributeIdentList` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributeIdentList).
  Parser extendedAttributeIdentList() => null;

  /// An `ExtendedAttributeNamedArgList` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#index-prod-ExtendedAttributeNamedArgList).
  Parser extendedAttributeNamedArgList() => null;

  //------------------------------------------------------------------
  // Lexical tokens.
  //------------------------------------------------------------------

  /// An `Identifier` within the [WebIDL grammar]
  /// (https://heycam.github.io/webidl/#prod-identifier).
  Parser identifier() => pattern('a-zA-Z_').seq(word().star());

  //------------------------------------------------------------------
  // Keyword definitions.
  //------------------------------------------------------------------

  /// The `async` keyword.
  Parser asyncKeyword() => ref(token, 'async');

  /// The `attribute` keyword.
  Parser attributeKeyword() => ref(token, 'attribute');

  /// The `callback` keyword.
  Parser callbackKeyword() => ref(token, 'callback');

  /// The `const` keyword.
  Parser constKeyword() => ref(token, 'const');

  /// The `constructor` keyword.
  Parser constructorKeyword() => ref(token, 'constructor');

  /// The `deleter` keyword.
  Parser deleterKeyword() => ref(token, 'deleter');

  /// The `dictionary` keyword.
  Parser dictionaryKeyword() => ref(token, 'dictionary');

  /// The `enum` keyword.
  Parser enumKeyword() => ref(token, 'enum');

  /// The `getter` keyword.
  Parser getterKeyword() => ref(token, 'getter');

  /// The `includes` keyword.
  Parser includesKeyword() => ref(token, 'includes');

  /// The `inherit` keyword.
  Parser inheritKeyword() => ref(token, 'inherit');

  /// The `interface` keyword.
  Parser interfaceKeyword() => ref(token, 'interface');

  /// The `iterable` keyword.
  Parser iterableKeyword() => ref(token, 'iterable');

  /// The `maplike` keyword.
  Parser maplikeKeyword() => ref(token, 'maplike');

  /// The `mixin` keyword.
  Parser mixinKeyword() => ref(token, 'mixin');

  /// The `namespace` keyword.
  Parser namespaceKeyword() => ref(token, 'namespace');

  /// The `partial` keyword.
  Parser partialKeyword() => ref(token, 'partial');

  /// The `readonly` keyword.
  Parser readonlyKeyword() => ref(token, 'readonly');

  /// The `required` keyword.
  Parser requiredKeyword() => ref(token, 'required');

  /// The `setlike` keyword.
  Parser setlikeKeyword() => ref(token, 'setlike');

  /// The `setter` keyword.
  Parser setterKeyword() => ref(token, 'setter');

  /// The `static` keyword.
  Parser staticKeyword() => ref(token, 'static');

  /// The `stringifier` keyword.
  Parser stringifierKeyword() => ref(token, 'stringifier');

  /// The `typedef` keyword.
  Parser typedefKeyword() => ref(token, 'typedef');

  /// The `unrestricted` keyword.
  Parser unrestrictedKeyword() => ref(token, 'unrestricted');
}
