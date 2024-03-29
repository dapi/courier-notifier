require 'spec_helper'

describe 'Initialize Courier' do
  before(:all) do
    Courier.init do |d|
      d.services                       :active_mailer, :gritter_notice, :facebook
      d.template :import_complete,     :off,           :on,              :off
      d.template :avatar_loaded,       :on,            :off,             :on
      d.template :weekly_subscription, :on,            :on,              :disabled
    end
  end

  let!(:user) { Factory :user }
  let!(:config) { Courier.config }

  specify 'default system settings' do
    Courier.template(:import_complete).get(:active_mailer).should      == :off
    Courier.template(:import_complete).get(:gritter_notice).should     == :on
    Courier.template(:import_complete).get(:facebook).should           == :off

    Courier.template(:avatar_loaded).get(:active_mailer).should        == :on
    Courier.template(:avatar_loaded).get(:gritter_notice).should       == :off
    Courier.template(:avatar_loaded).get(:facebook).should             == :on

    Courier.template(:weekly_subscription).get(:active_mailer).should  == :on
    Courier.template(:weekly_subscription).get(:gritter_notice).should == :on
    Courier.template(:weekly_subscription).get(:facebook).should       == :disabled
  end

  describe 'users settings' do
    before do
    end

    specify 'users default settings are equal to system' do
      user.courier.get(:import_complete, :active_mailer).should      == :off
      user.courier.get(:import_complete, :gritter_notice).should     == :on
      user.courier.get(:import_complete, :facebook).should           == :off

      user.courier.get(:avatar_loaded, :active_mailer).should        == :on
      user.courier.get(:avatar_loaded, :gritter_notice).should       == :off
      user.courier.get(:avatar_loaded, :facebook).should             == :on

      user.courier.get(:weekly_subscription, :active_mailer).should  == :on
      user.courier.get(:weekly_subscription, :gritter_notice).should == :on
      user.courier.get(:weekly_subscription, :facebook).should       == :disabled
    end

    describe 'override' do
      before do
        user.courier.set(:import_complete, :active_mailer,     :on)
        user.courier.set(:avatar_loaded, :active_mailer,       :off)
        user.courier.set(:weekly_subscription, :facebook,      :on)
      end

      specify 'users default settings are equal to system' do
        user.courier.get(:import_complete, :active_mailer).should      == :on
        user.courier.get(:avatar_loaded, :active_mailer).should        == :off
        user.courier.get(:weekly_subscription, :facebook).should       == :disabled
      end
    end
  end

  describe 'send message' do
    specify 'send message to enabled services only' do
      Courier.service(:active_mailer).should_not_receive :message
      Courier.service(:gritter_notice).should_receive :message
      Courier.service(:facebook).should_not_receive :message
      user.message :import_complete, :args1=>:value1
    end

    specify 'send message to enabled services only' do
      Courier.service(:active_mailer).should_receive :message
      Courier.service(:gritter_notice).should_not_receive :message
      Courier.service(:facebook).should_receive :message
      user.message :avatar_loaded, :args1=>:value1
    end
  end
end
