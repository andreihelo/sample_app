require 'spec_helper'

describe 'StaticPages' do
  #let(:base_title) { 'Aplicación de Ejemplo del Tutorial de Ruby on Rails' }
  subject { page }

  shared_examples_for 'all static pages' do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe 'Home page' do
    before { visit root_path }
    let(:heading)    { 'Aplicación de Ejemplo' }
    let(:page_title) { '' }

    it_should_behave_like 'all static pages'
    # The code below was replaced by the "it_should_behave_like" function.
    #it { should     have_content('Aplicación de Ejemplo') }
    #it { should     have_title(full_title('')) }
    it { should_not have_title('| Inicio') }

    # This is an old implementation. All was replaced by the "it { should have... }" code form.
    #it "should have the content 'Aplicación de Ejemplo'" do
    #  visit root_path
    #  expect(page).to have_content('Aplicación de Ejemplo')
    #end
    #
    #it "should have the base title" do
    #  visit root_path
    #  expect(page).to have_title(base_title)
    #end
    #
    #it "should not have a custom page title" do
    #  #visit root_path
    #  expect(page).not_to have_title('| Inicio')
    #end
  end

  describe 'Help page' do
    before { visit help_path }
    let(:heading)    { 'Ayuda' }
    let(:page_title) { 'Ayuda' }

    it_should_behave_like 'all static pages'
  end

  describe 'About page' do
    before { visit about_path }
    let(:heading)    { '¿Quiénes somos?' }
    let(:page_title) { '¿Quiénes somos?' }

    it_should_behave_like 'all static pages'
  end

  describe 'Contact page' do
    before { visit contact_path }
    let(:heading)    { 'Contacto' }
    let(:page_title) { 'Contacto' }

    it_should_behave_like 'all static pages'
  end

  it 'should have the right links on the layout' do
    visit root_path

    click_link '¿Quiénes somos?'
    expect(page).to have_title(full_title('¿Quiénes somos?'))

    click_link 'Ayuda'
    expect(page).to have_title(full_title('Ayuda'))

    click_link 'Contacto'
    expect(page).to have_title(full_title('Contacto'))

    click_link 'Inicio'
    click_link '¡Regístrese ahora!'
    expect(page).to have_title(full_title('Registro'))

    click_link 'aplicación de ejemplo'
    expect(page).to have_title(full_title(''))
  end
end
