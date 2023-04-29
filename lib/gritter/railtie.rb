if defined?(Rails::Railtie)
  module Gritter
    class Railtie < Rails::Railtie
      initializer :gritter do
        Gritter.initialize
      end
      config.assets.precompile += %w(error.svg gritter-close.png gritter.png ie-spacer.gif notice.svg progress.gif success.svg warning.svg)
    end
  end
end