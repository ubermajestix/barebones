
require File.expand_path(
    File.join(File.dirname(__FILE__), %w[.. lib barebones]))

Spec::Runner.configure do |config|
  BareBones.initialize(:environment=>"test")

  Users = {}
  def sample_data
    BareBones.logger.info "loading sample data"
    Users[:tyler] = BareBones::User.create(:username=>"ubermajestix")
    Users[:jeff] = BareBones::User.create(:username=>"jlarrimore")
  end
end

# EOF
