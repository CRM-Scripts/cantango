require 'rspec'
require 'cantango'
require 'fixtures/models'

describe CanTango::Configuration::Engines::Permit do
    subject { CanTango.config.permit_engine }

    describe 'SpecialPermits' do
      describe 'default settings' do
        its(:special_permits) { should include(:any, :system) }
        its(:types)           { should include(:roles, :role_groups, :licenses, :users) }
      end
    end
end


