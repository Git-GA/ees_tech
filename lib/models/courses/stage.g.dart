// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetStageCollection on Isar {
  IsarCollection<Stage> get stages => this.collection();
}

const StageSchema = CollectionSchema(
  name: r'Stage',
  id: -7840862827543848208,
  properties: {
    r'currentIndex': PropertySchema(
      id: 0,
      name: r'currentIndex',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'expAmount': PropertySchema(
      id: 2,
      name: r'expAmount',
      type: IsarType.long,
    ),
    r'pageIds': PropertySchema(
      id: 3,
      name: r'pageIds',
      type: IsarType.longList,
    ),
    r'title': PropertySchema(
      id: 4,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _stageEstimateSize,
  serialize: _stageSerialize,
  deserialize: _stageDeserialize,
  deserializeProp: _stageDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _stageGetId,
  getLinks: _stageGetLinks,
  attach: _stageAttach,
  version: '3.0.5',
);

int _stageEstimateSize(
  Stage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pageIds;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _stageSerialize(
  Stage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.currentIndex);
  writer.writeString(offsets[1], object.description);
  writer.writeLong(offsets[2], object.expAmount);
  writer.writeLongList(offsets[3], object.pageIds);
  writer.writeString(offsets[4], object.title);
}

Stage _stageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Stage();
  object.currentIndex = reader.readLongOrNull(offsets[0]);
  object.description = reader.readStringOrNull(offsets[1]);
  object.expAmount = reader.readLongOrNull(offsets[2]);
  object.id = id;
  object.pageIds = reader.readLongList(offsets[3]);
  object.title = reader.readStringOrNull(offsets[4]);
  return object;
}

P _stageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongList(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _stageGetId(Stage object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _stageGetLinks(Stage object) {
  return [];
}

void _stageAttach(IsarCollection<dynamic> col, Id id, Stage object) {
  object.id = id;
}

extension StageQueryWhereSort on QueryBuilder<Stage, Stage, QWhere> {
  QueryBuilder<Stage, Stage, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StageQueryWhere on QueryBuilder<Stage, Stage, QWhereClause> {
  QueryBuilder<Stage, Stage, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Stage, Stage, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Stage, Stage, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Stage, Stage, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StageQueryFilter on QueryBuilder<Stage, Stage, QFilterCondition> {
  QueryBuilder<Stage, Stage, QAfterFilterCondition> currentIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentIndex',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> currentIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentIndex',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> currentIndexEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> currentIndexGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> currentIndexLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> currentIndexBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> expAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expAmount',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> expAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expAmount',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> expAmountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> expAmountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> expAmountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> expAmountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pageIds',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pageIds',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pageIds',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pageIds',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pageIds',
        value: value,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pageIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pageIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pageIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pageIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pageIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pageIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> pageIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pageIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Stage, Stage, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension StageQueryObject on QueryBuilder<Stage, Stage, QFilterCondition> {}

extension StageQueryLinks on QueryBuilder<Stage, Stage, QFilterCondition> {}

extension StageQuerySortBy on QueryBuilder<Stage, Stage, QSortBy> {
  QueryBuilder<Stage, Stage, QAfterSortBy> sortByCurrentIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentIndex', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> sortByCurrentIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentIndex', Sort.desc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> sortByExpAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expAmount', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> sortByExpAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expAmount', Sort.desc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension StageQuerySortThenBy on QueryBuilder<Stage, Stage, QSortThenBy> {
  QueryBuilder<Stage, Stage, QAfterSortBy> thenByCurrentIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentIndex', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenByCurrentIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentIndex', Sort.desc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenByExpAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expAmount', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenByExpAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expAmount', Sort.desc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Stage, Stage, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension StageQueryWhereDistinct on QueryBuilder<Stage, Stage, QDistinct> {
  QueryBuilder<Stage, Stage, QDistinct> distinctByCurrentIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentIndex');
    });
  }

  QueryBuilder<Stage, Stage, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Stage, Stage, QDistinct> distinctByExpAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expAmount');
    });
  }

  QueryBuilder<Stage, Stage, QDistinct> distinctByPageIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pageIds');
    });
  }

  QueryBuilder<Stage, Stage, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension StageQueryProperty on QueryBuilder<Stage, Stage, QQueryProperty> {
  QueryBuilder<Stage, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Stage, int?, QQueryOperations> currentIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentIndex');
    });
  }

  QueryBuilder<Stage, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Stage, int?, QQueryOperations> expAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expAmount');
    });
  }

  QueryBuilder<Stage, List<int>?, QQueryOperations> pageIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pageIds');
    });
  }

  QueryBuilder<Stage, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
