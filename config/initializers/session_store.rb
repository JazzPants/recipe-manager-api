if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store,
                                         key: '_restaurant_review_app',
                                         domain:
                                           'https://restaurant-reviews-app.firebase.com'
else
  Rails.application.config.session_store :cookie_store,
                                         key: '_restaurant_review_app',
end
