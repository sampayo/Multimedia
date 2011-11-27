require 'spec_helper'

describe "configuracions/show.html.erb" do
  before(:each) do
    @configuracion = assign(:configuracion, stub_model(Configuracion,
      :fodo => "Fodo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fodo/)
  end
end
