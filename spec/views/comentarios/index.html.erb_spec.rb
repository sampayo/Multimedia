require 'spec_helper'

describe "comentarios/index.html.erb" do
  before(:each) do
    assign(:comentarios, [
      stub_model(Comentario,
        :comentario => "MyText"
      ),
      stub_model(Comentario,
        :comentario => "MyText"
      )
    ])
  end

  it "renders a list of comentarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
