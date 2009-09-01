# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mediafy_session',
  :secret      => '0b82149aa13152b6d014ceafc8841b6d2ca53d97a4c663b184b8a512822b0437d55b432fc7d79411d1d7c22c52efbcdae4a9bfd620eddc1ab85a58d462cbd3ae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
