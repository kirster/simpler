require_relative 'renderers/plain_renderer'
require_relative 'renderers/html_renderer'

module Simpler
  class View
    RENDERERS = { plain: PlainRenderer }
    DEFAULT_RENDERER = HTMLRenderer

    def self.renderer(env)
      type = env['simpler.template'].keys.first if env['simpler.template'].is_a? Hash
      env['simpler.action'] = env['simpler.template'] if env['simpler.template'].is_a? String
      RENDERERS[type] || DEFAULT_RENDERER  
    end

  end
end
