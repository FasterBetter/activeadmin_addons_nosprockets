module ActiveadminAddons
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      def create_initializer
        template "initializer.rb", "config/initializers/activeadmin_addons.rb"
      end

      def setup_assets
        if use_webpacker?
          generate "activeadmin_addons:webpacker"
        else
          raise "You seem to still be using Sprockets.  Please use the main activeadmin_addons gem."
        end
      end

      private

      def use_webpacker?
        ActiveAdmin.application.use_webpacker
      rescue NoMethodError
        false
      end
    end
  end
end
