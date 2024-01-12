require 'rails_helper'

describe Category, type: :request do
  before(:each) do
    @user = User.create(name: 'Obi Anthony', email: 'example@example.com', password: 'test2024',
                        password_confirmation: 'test2024')
    @category = Category.create(name: 'FastFood', icon: 'icon.svg')

    get authenticated_root_path
  end

  it 'should epect resposes to be successful' do
    expect(response).to be_successful
  end

  it 'should render user name' do
    expect(@user.name).to eq('Obi Anthony')
  end

  it 'should render category name' do
    expect(@category.name).to eq('FastFood')
  end
end
