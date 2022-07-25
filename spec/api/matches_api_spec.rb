=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BbceApi::MatchesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MatchesApi' do
  before do
    # run before each test
    @instance = BbceApi::MatchesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MatchesApi' do
    it 'should create an instance of MatchesApi' do
      expect(@instance).to be_instance_of(BbceApi::MatchesApi)
    end
  end

  # unit tests for list_matches
  # List company&#x27;s matches
  # This API returns a list of company&#x27;s own matches. You can filter by period.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :last_resource_key Primary key of the last resource returned
  # @option opts [String] :initial_period The initial ISO String Date to filter values
  # @option opts [String] :final_period The final ISO String Date to filter values
  # @return [Array<Match>]
  describe 'list_matches test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
