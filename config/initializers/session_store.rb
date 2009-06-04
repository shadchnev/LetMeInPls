# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_letmeinpls_session',
  :secret      => '870fc9e795d4e968063f080928ae37c3920cb563b04151fc169106cecf9a4f35e525852b47ac79c4da04d5460055e297e14f231d6b06a6909931aabc7c688232'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
