require 'spec_helper'

describe "configuracions/index.html.erb" do
  before(:each) do
    assign(:configuracions, [
      stub_model(Configuracion,
        :fodo => "Fodo"
      ),
      stub_model(Configuracion,
        :fodo => "Fodo"
      )
    ])
  end

  it "renders a list of configuracions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fodo".to_s, :count => 2
  end
end
