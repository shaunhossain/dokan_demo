enum FilterType{
  newest(title: "Newest",action: "newest"),

  oldest(title: "Oldest",action: "oldest"),
  lowPrice(title: "Price low > High",action: "lowest"),
  highestPrice(title: "Price high > Low",action: "highest"),
  bestSelling(title: "Best selling",action: "best_selling");

  const FilterType({required this.title, required this.action});
  final String title;
  final String action;
}