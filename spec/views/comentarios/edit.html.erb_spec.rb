require 'spec_helper'

describe "comentarios/edit.html.erb" do
  before(:each) do
    @comentario = assign(:comentario, stub_model(Comentario,
      :comentario => "MyText"
    ))
  end

  it "renders the edit comentario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comentarios_path(@comentario), :method => "post" do
      assert_select "textarea#comentario_comentario", :name => "comentario[comentario]"
    end
  end
end
