include_class 'org.apache.thrift.server.TServer'
include_class 'org.apache.thrift.server.TSimpleServer'
include_class 'org.apache.thrift.server.THsHaServer'
include_class 'org.apache.thrift.server.TThreadPoolServer'
include_class 'org.apache.thrift.server.TNonblockingServer'
module Thrift
  BaseServer = org.apache.thrift.server.TServer
  SimpleServer = org.apache.thrift.server.TSimpleServer
  ThreadedServer = org.apache.thrift.server.THsHaServer
  ThreadPoolServer = org.apache.thrift.server.TThreadPoolServer

  class NonblockingServer < org.apache.thrift.server.TNonblockingServer
    def initialize(processor, transport, transport_factory=nil, protocol_factory=nil, threads=nil, logger=nil)
      args = JavaUtilities.get_proxy_class('org.apache.thrift.server.TNonblockingServer$Args').new transport
      args.processor processor
      args.transportFactory transport_factory if transport_factory
      args.protocolFactory protocol_factory if protocol_factory
      # limit framesize to 4KB, can go away when https://issues.apache.org/jira/browse/THRIFT-601 is fixed
      args.maxReadBufferBytes = 4096*1024
      super(args)
    end
  end
end
