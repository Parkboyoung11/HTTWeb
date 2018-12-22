Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 
    "569266416877-q9e7eaqh6csf59khh2ruauka7nb4ko4m.apps.googleusercontent.com", 
    "ndN4kAnam_xjcEmJW6Vi96nB", 
    scope: "email"
end