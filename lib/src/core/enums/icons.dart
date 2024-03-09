enum IconIdentifier {
  warmup,
  arm,
  leg,
  upperbody,
  cardio,
  lowerbody,
  core,
  fullbody,
  flexibility;

  static IconIdentifier fromString(String name) => values.byName(
        name.toLowerCase(),
      );
}
