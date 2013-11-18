require "translation_helper/version"

module TranslationHelper
  module ClassMethods
    def translation_helper_method(*helper_names)
      helper_names.each do |helper_name|
        helper_name = helper_name.to_sym
        define_method helper_name, ->(name, options ={}) {
          options[:scope] ||= []
          options[:scope].insert(0, helper_name.to_s.pluralize.to_sym)
          I18n.t(name, options)
        }
        private helper_name
        helper_method helper_name
      end
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end
ActionController::Base.send(:include, TranslationHelper)
