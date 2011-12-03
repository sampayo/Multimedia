require 'spec_helper'

describe "seguidores/index.html.erb" do
  before(:each) do
    assign(:seguidores, [
      stub_model(Seguidore),
      stub_model(Seguidore)
    ])
  end

  it "renders a list of seguidores" do
    render
  end
end
