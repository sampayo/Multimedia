require 'spec_helper'

describe "comentarios/show.html.erb" do
  before(:each) do
    @comentario = assign(:comentario, stub_model(Comentario,
      :comentario => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
