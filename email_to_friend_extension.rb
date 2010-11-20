# -*- coding: utf-8 -*-
# Uncomment this if you reference any of your controllers in activate
#require_dependency 'application_controller'

class EmailToFriendExtension < Spree::Extension
  version "1.0"
  description "Tell a friend about a product"
  url "http://github.com/calas/spree-email-to-friend"

  # Please use email_to_friend/config/routes.rb instead for extension routes.

  def self.require_gems(config)
    config.gem "recaptcha", :lib => "recaptcha/rails", :source => "http://gemcutter.org"
    config.gem "validatable"
  end

  def activate
  end
end
