# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "courier-notifier"
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Danil Pismenny"]
  s.date = "2012-04-26"
  s.description = "\u{421}\u{438}\u{441}\u{442}\u{435}\u{43c}\u{430} \u{443}\u{43f}\u{440}\u{430}\u{432}\u{43b}\u{435}\u{43d}\u{438}\u{44f} \u{43f}\u{43e}\u{43b}\u{44c}\u{437}\u{43e}\u{432}\u{430}\u{442}\u{435}\u{43b}\u{44c}\u{441}\u{43a}\u{438}\u{43c}\u{438} \u{43e}\u{43f}\u{43e}\u{432}\u{435}\u{449}\u{435}\u{43d}\u{438}\u{44f}\u{43c}\u{438} \u{438} \u{43f}\u{43e}\u{434}\u{43f}\u{438}\u{441}\u{43a}\u{430}\u{43c}\u{438}"
  s.email = "danil@orionet.ru"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/courier_settings_controller.rb",
    "app/helpers/courier_settings_helper.rb",
    "app/views/courier_settings/set.html.haml",
    "config/routes.rb",
    "courier-notifier.gemspec",
    "lib/courier.rb",
    "lib/courier/config.rb",
    "lib/courier/engine.rb",
    "lib/courier/message.rb",
    "lib/courier/owner.rb",
    "lib/courier/owner_setting.rb",
    "lib/courier/service/active_mailer.rb",
    "lib/courier/service/base.rb",
    "lib/courier/service/facebook.rb",
    "lib/courier/service/gritter_notice.rb",
    "lib/courier/template/base.rb",
    "lib/generators/courier_generator.rb",
    "lib/generators/templates/courier.rb",
    "lib/generators/templates/migration.rb",
    "spec/controllers/courier_settings_controller_spec.rb",
    "spec/courier/config_spec.rb",
    "spec/courier/message_spec.rb",
    "spec/courier/owner_setting_spec.rb",
    "spec/courier/owner_spec.rb",
    "spec/courier/service/base_spec.rb",
    "spec/courier/service/facebook_spec.rb",
    "spec/courier/service/gritter_notice_spec.rb",
    "spec/courier/template/base_spec.rb",
    "spec/courier_spec.rb",
    "spec/examples/example1_spec.rb",
    "spec/helpers/courier_settings_helper_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/application_controller.rb",
    "spec/support/factories.rb",
    "spec/support/gems_simulation.rb",
    "spec/support/migration.rb",
    "spec/support/mocks.rb",
    "spec/support/user.rb"
  ]
  s.homepage = "http://github.com/dapi/courier-notifier"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "\u{421}\u{438}\u{441}\u{442}\u{435}\u{43c}\u{430} \u{443}\u{43f}\u{440}\u{430}\u{432}\u{43b}\u{435}\u{43d}\u{438}\u{44f} \u{43f}\u{43e}\u{43b}\u{44c}\u{437}\u{43e}\u{432}\u{430}\u{442}\u{435}\u{43b}\u{44c}\u{441}\u{43a}\u{438}\u{43c}\u{438} \u{43e}\u{43f}\u{43e}\u{432}\u{435}\u{449}\u{435}\u{43d}\u{438}\u{44f}\u{43c}\u{438} \u{438} \u{43f}\u{43e}\u{434}\u{43f}\u{438}\u{441}\u{43a}\u{430}\u{43c}\u{438}"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<state_machine>, ["~> 0.10.2"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<watchr>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<simplecov-rcov>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_dependency(%q<state_machine>, ["~> 0.10.2"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<watchr>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<factory_girl>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<simplecov-rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0.0"])
    s.add_dependency(%q<state_machine>, ["~> 0.10.2"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<watchr>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<factory_girl>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<simplecov-rcov>, [">= 0"])
  end
end

