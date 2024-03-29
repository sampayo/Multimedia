require 'spec_helper'

describe "comentarios/new.html.erb" do
  before(:each) do
    assign(:comentario, stub_model(Comentario,
      :comentario => "MyText"
    ).as_new_record)
  end

  it "renders new comentario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comentarios_path, :method => "post" do
      assert_select "textarea#comentario_comentario", :name => "comentario[comentario]"
    end
  end
end
