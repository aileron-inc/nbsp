require 'nbsp/view_helper'
module Nbsp
  class Engine < ::Rails::Engine
    isolate_namespace Nbsp
    initializer 'nbsp.action_view_helpers' do
      ActiveSupport.on_load(:action_view) { include Nbsp::ViewHelper }
    end
  end
end
