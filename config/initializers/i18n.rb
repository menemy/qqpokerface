LANGUAGES = [
  [ 'English', 'en' ],
  [ 'Russian', 'ru' ],
]

I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
I18n.locale = :en
I18n.default_locale = :en
I18n.reload!