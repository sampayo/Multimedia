require 'spec_helper'

describe "usuarios/index.html.erb" do
  before(:each) do
    assign(:usuarios, [
      stub_model(Usuario,
        :nombre => "Nombre",
        :seudonimo => "Seudonimo",
        :biografia => "MyText",
        :web => "Web",
        :lenguaje => "Lenguaje",
        :foto => "Foto",
        :zonah => "Zonah"
      ),
      stub_model(Usuario,
        :nombre => "Nombre",
        :seudonimo => "Seudonimo",
        :biografia => "MyText",
        :web => "Web",
        :lenguaje => "Lenguaje",
        :foto => "Foto",
        :zonah => "Zonah"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Seudonimo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Web".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lenguaje".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Foto".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zonah".to_s, :count => 2
  end
end
