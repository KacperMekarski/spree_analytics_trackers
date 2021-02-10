module SpreeAnalyticsTrackers
  module StoreControllerDecorator
    def self.included(base)
      base.include ::Spree::BaseHelper
      
      base.helper 'spree/trackers'
    end
  end
end

if defined?(Spree::StoreController)
  ::Spree::StoreController.prepend(::SpreeAnalyticsTrackers::StoreControllerDecorator)
end
