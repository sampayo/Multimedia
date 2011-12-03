require 'spec_helper'

describe "seguidores/new.html.erb" do
  before(:each) do
    assign(:seguidore, stub_model(Seguidore).as_new_record)
  end

  it "renders new seguidore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seguidores_path, :method => "post" do
    end
  end
end
