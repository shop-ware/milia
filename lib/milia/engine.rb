require 'milia'

module Milia
  class Engine < Rails::Engine
    initializer 'milia.include' do

        ActiveSupport.on_load(:active_record) do
          include Milia::Base
        end

        ActiveSupport.on_load(:action_controller_base) do
          include Milia::Control
        end
    end

    rake_tasks do
      load 'milia/tasks.rb'
    end
  end
end
