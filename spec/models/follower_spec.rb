require 'rails_helper'

RSpec.describe "Follower" do

  it "exists and has some stuff in it" do
    test = Follower.new({login: "testname", html_url: "www.wtfisthis.com"})
    expect(test).to be_a(Follower)
    expect(test.name).to eq("testname")
    expect(test.url).to eq("www.wtfisthis.com")
  end

end
