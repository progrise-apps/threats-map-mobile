class ThreatCategory {
  final String id;
  final String categoryName;
  final bool isMainCategory;
  final String? parentCategoryId;
  final bool hasParentCategory;
  final String iconKey;

  ThreatCategory(
    this.id,
    this.categoryName,
    this.isMainCategory,
    this.parentCategoryId,
    this.hasParentCategory,
    this.iconKey,
  );
}