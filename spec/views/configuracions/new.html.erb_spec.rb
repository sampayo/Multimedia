require 'spec_helper'

describe "configuracions/new.html.erb" do
  before(:each) do
    assign(:configuracion, stub_model(Configuracion,
      :fodo => "MyString"
    ).as_new_record)
  end

  it "renders new configuracion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => configuracions_path, :method => "post" do
      assert_select "input#configuracion_fodo", :name => "configuracion[fodo]"
    end
  end
end
