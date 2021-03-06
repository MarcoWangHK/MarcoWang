#
# Cookbook Name:: kafka
# Libraries:: env_file
#

module Kafka
  module EnvFile
    def render_variable(key, value, export=false)
      variable = sprintf('%s=%p', key, value.to_s)
      export ? sprintf('export %s', variable) : variable
    end

    def export?
      node.kafka.init_style.to_sym != :systemd
    end
  end
end
