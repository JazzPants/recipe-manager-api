# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4000'

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end

  #production domain
  # allow do
  #   origins 'https://restaurant-reviews-app.firebase.com'

  #   resource '*',
  #            headers: :any,
  #            methods: %i[get post put patch delete options head],
  #            credentials: true
  # end

  # Rails.application.config.action_controller.forgery_protection_origin_check =
  #   false
end
