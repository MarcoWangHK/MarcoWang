#
# Cookbook Name:: kafka
# Recipe:: _defaults
#

unless broker_attribute?(:broker, :id)
  node.default.kafka.broker.broker_id = 0
end

unless broker_attribute?(:port)
  node.default.kafka.broker.port = 9092
end

unless broker_attribute?(:networkthreads)
  node.default.kafka.broker.num.network.threads = 5
end

unless broker_attribute?(:iothreads)
  node.default.kafka.broker.num.io.threads = 8
end

unless broker_attribute?(:autocreatetopics)
  node.default.kafka.broker.auto.create.topics.enable = 'false'
end

unless broker_attribute?(:logdirs)
  node.default.kafka.broker.log.dirs = '/var/kafka-logs'
end

unless broker_attribute?(:recoverythreads)
  node.default.kafka.broker.num.recovery.threads.per.data.dir = 1
end

unless broker_attribute?(:shanchutopic)
  word1 = "delete"
  node.default.kafka.broker.#{word1}.topic.enable = 'true'
end

unless node.kafka.gc_log_opts
  node.default.kafka.gc_log_opts = %W[
    -Xloggc:#{::File.join(node.kafka.log_dir, 'kafka-gc.log')}
    -XX:+PrintGCDateStamps
    -XX:+PrintGCTimeStamps
  ].join(' ')
end

unless node.kafka.config_dir
  node.default.kafka.config_dir = ::File.join(node.kafka.install_dir, 'config')
end

unless node.kafka.version_install_dir
  node.default.kafka.version_install_dir = %(#{node.kafka.install_dir}-#{node.kafka.version})
end
