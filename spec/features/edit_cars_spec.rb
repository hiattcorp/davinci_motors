require 'rails_helper'

feature 'Edit Cars' do
  scenario 'can edit a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content("1969 Ford Mustang created")

    click_link 'Edit'

    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2500'

    click_button 'Update Car'


    expect(page).to have_content('1968 Ford Mustang')

  end
end
