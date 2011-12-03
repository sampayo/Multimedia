require 'spec_helper'

describe "seguidores/show.html.erb" do
  before(:each) do
    @seguidore = assign(:seguidore, stub_model(Seguidore))
  end

  it "renders attributes in <p>" do
    render
  end
end
