=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BbceApi::OperationType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OperationType' do
  before do
    # run before each test
    @instance = BbceApi::OperationType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OperationType' do
    it 'should create an instance of OperationType' do
      expect(@instance).to be_instance_of(BbceApi::OperationType)
    end
  end
end
