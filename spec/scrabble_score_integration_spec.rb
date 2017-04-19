require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns their total scrabble score') do
    visit('/')
    fill_in('title', :with => 'Zig')
    click_button('Send')
    expect(page).to have_content('13')
  end
end
