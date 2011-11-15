require 'test_helper'

class LibthriftTest < Test::Unit::TestCase
  context 'the thrift lib' do
    should "be able to instantiate a thrift client through its alias" do
      assert_kind_of org.apache.thrift.TServiceClientFactory, Thrift::ClientFactory.new
    end
  end
end