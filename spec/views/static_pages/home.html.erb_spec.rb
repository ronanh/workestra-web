require 'spec_helper'

describe "home page" do
  subject { page }

  before { visit root_path }

  it { should have_content('Welcome') }
end
