require 'spec_helper'

describe "usuarios/show.html.erb" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :nombre => "Nombre",
      :seudonimo => "Seudonimo",
      :biografia => "MyText",
      :web => "Web",
      :lenguaje => "Lenguaje",
      :foto => "Foto",
      :zonah => "Zonah"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Seudonimo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Web/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lenguaje/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Foto/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zonah/)
  end
end
