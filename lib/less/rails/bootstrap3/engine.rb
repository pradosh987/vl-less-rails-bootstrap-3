require 'rails'

module Less
  module Rails
    module Bootstrap3
      class Engine < ::Rails::Engine
        
        initializer 'vl_less-rails-bootstrap_3.setup', :after => 'less-rails.before.load_config_initializers', :group => :all do |app|
          app.config.less.paths << File.join(config.root, 'app', 'frameworks')
        end
        
      end
    end
  end
end
