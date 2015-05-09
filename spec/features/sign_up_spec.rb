require 'rails_helper'
feature 'Accounts' do
  scenario 'creating an account' do
    visit multitenancy.root_path
    click_link 'Account Sign Up'
    fill_in 'Account Name', with: 'Test'
    fill_in 'Owner Name', with: 'User 1'
    fill_in 'Owner Email', with: 'email@domain.com'
    fill_in 'Owner Password', with: 'password'
    expect{
      click_button 'Create Account'
    }.to change(Multitenancy::User, :count).by(1).and change(Multitenancy::Account, :count).by(1)
    success_message = 'Your account has been successfully created.'
    expect(page).to have_content(success_message)
  end
end
