require 'spec_helper'

describe "seguidores/edit.html.erb" do
  before(:each) do
    @seguidore = assign(:seguidore, stub_model(Seguidore))
  end

  it "renders the edit seguidore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seguidores_path(@seguidore), :method => "post" do
    end
  end
end
