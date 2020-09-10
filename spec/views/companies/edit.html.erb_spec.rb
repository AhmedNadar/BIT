require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :details => nil,
      :email => "MyString",
      :website => "MyString",
      :user => nil
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input[name=?]", "company[name]"

      assert_select "input[name=?]", "company[details]"

      assert_select "input[name=?]", "company[email]"

      assert_select "input[name=?]", "company[website]"

      assert_select "input[name=?]", "company[user_id]"
    end
  end
end
