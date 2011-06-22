include_class 'org.apache.thrift.transport.TServerTransport'
include_class 'org.apache.thrift.transport.TTransport'
include_class 'org.apache.thrift.transport.TFramedTransport'
include_class 'org.apache.thrift.transport.TFramedTransport$Factory'
include_class 'org.apache.thrift.transport.THttpClient'
include_class 'org.apache.thrift.transport.TIOStreamTransport'
include_class 'org.apache.thrift.transport.TMemoryInputTransport'
include_class 'org.apache.thrift.transport.TNonblockingServerSocket'
include_class 'org.apache.thrift.transport.TServerSocket'
include_class 'org.apache.thrift.transport.TSocket'
module Thrift
  BaseServerTransport = org.apache.thrift.transport.TServerTransport
  BaseTransport = org.apache.thrift.transport.TTransport
  FramedTransport = org.apache.thrift.transport.TFramedTransport
  FramedTransportFactory = JavaUtilities.get_proxy_class('org.apache.thrift.transport.TFramedTransport$Factory')
  HttpClientTransport = org.apache.thrift.transport.THttpClient
  IoStreamTransport = org.apache.thrift.transport.TIOStreamTransport
  MemoryBufferTransport = org.apache.thrift.transport.TMemoryInputTransport
  NonblockingServerSocket = org.apache.thrift.transport.TNonblockingServerSocket
  ServerSocket = org.apache.thrift.transport.TServerSocket
  Socket = org.apache.thrift.transport.TSocket
end
