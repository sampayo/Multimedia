require 'spec_helper'

describe "configuracions/edit.html.erb" do
  before(:each) do
    @configuracion = assign(:configuracion, stub_model(Configuracion,
      :fodo => "MyString"
    ))
  end

  it "renders the edit configuracion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => configuracions_path(@configuracion), :method => "post" do
      assert_select "input#configuracion_fodo", :name => "configuracion[fodo]"
    end
  end
end
