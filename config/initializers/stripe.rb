Rails.configuration.strip = {
 # :publishable_key => 'pk_test_6LI9opHXwxwiQMFyfzpi44Hd',
 # :secret_key => 'sk_test_f2uvhJjEqW9cl3MuRvr0BTEV'
  
  :publishable_key => ENV['STRIPE_TEST_PUBLISHABLE_KEY'],
  :secret_key => ENV['STRIPE_TEST_SECRET_KEY']
  }

Stripe.api_key = Rails.configuration.stripe[:secret_key]

