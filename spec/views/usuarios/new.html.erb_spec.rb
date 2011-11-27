require 'spec_helper'

describe "usuarios/new.html.erb" do
  before(:each) do
    assign(:usuario, stub_model(Usuario,
      :nombre => "MyString",
      :seudonimo => "MyString",
      :biografia => "MyText",
      :web => "MyString",
      :lenguaje => "MyString",
      :foto => "MyString",
      :zonah => "MyString"
    ).as_new_record)
  end

  it "renders new usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usuarios_path, :method => "post" do
      assert_select "input#usuario_nombre", :name => "usuario[nombre]"
      assert_select "input#usuario_seudonimo", :name => "usuario[seudonimo]"
      assert_select "textarea#usuario_biografia", :name => "usuario[biografia]"
      assert_select "input#usuario_web", :name => "usuario[web]"
      assert_select "input#usuario_lenguaje", :name => "usuario[lenguaje]"
      assert_select "input#usuario_foto", :name => "usuario[foto]"
      assert_select "input#usuario_zonah", :name => "usuario[zonah]"
    end
  end
end
