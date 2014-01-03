require 'spec_helper'

describe 'StaticPages' do
  #let(:base_title) { 'Aplicación de Ejemplo del Tutorial de Ruby on Rails' }
  subject { page }

  describe 'Home page' do
    before { visit root_path }

    it { should     have_content('Aplicación de Ejemplo') }
    it { should     have_title(full_title('')) }
    it { should_not have_title('| Inicio') }

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

    it { should have_content('Ayuda') }
    it { should have_title(full_title('Ayuda')) }
  end

  describe 'About page' do
    before { visit about_path }

    it { should have_content('¿Quiénes somos?') }
    it { should have_title(full_title('¿Quiénes somos?')) }
  end

  describe 'Contact page' do
    before { visit contact_path }

    it { should have_content('Contacto') }
    it { should have_title(full_title('Contacto')) }
  end
end
