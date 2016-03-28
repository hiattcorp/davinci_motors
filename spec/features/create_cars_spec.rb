require 'rails_helper'

feature 'Create Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')

  end

  feature 'Create Cars' do
    scenario 'can create a car' do
      visit '/'

      click_link 'New Car'

      fill_in 'Make', with: 'Ford'
      fill_in 'Model', with: 'Mustang'
      fill_in 'Year', with: '1967'
      fill_in 'Price', with: '2300'

      click_button 'Create Car'

      click_link 'New Car'

      fill_in 'Make', with: 'Honda'
      fill_in 'Model', with: 'Accord'
      fill_in 'Year', with: '1989'
      fill_in 'Price', with: '1000'

      click_button 'Create Car'

      expect(page).to have_content('Mustang')

    end
  end
end


