enum FontOptions {
  kalpurushBengali,
  arabic;

 String get key => switch (this) {
        FontOptions.kalpurushBengali => "Kalpurush",
        FontOptions.arabic => "kfgq",
      };
}
