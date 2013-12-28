require 'spec_helper'

describe 'StaticPages' do
  let(:base_title) { 'Aplicación de Ejemplo del Tutorial de Ruby on Rails' }

  describe 'Home page' do
    it "should have the content 'Aplicación de Ejemplo'" do
      visit '/static_pages/home'
      expect(page).to have_content('Aplicación de Ejemplo')
    end

    it "should have the title 'Inicio'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Inicio")
    end
  end

  describe 'Help page' do
    it "should have the content 'Ayuda'" do
      visit '/static_pages/help'
      expect(page).to have_content('Ayuda')
    end

    it "should have the title 'Ayuda'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Ayuda")
    end
  end

  describe 'About page' do
    it "should have the content '¿Quiénes somos?'" do
      visit '/static_pages/about'
      expect(page).to have_content('¿Quiénes somos?')
    end

    it "should have the title '¿Quiénes somos?'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | ¿Quiénes somos?")
    end
  end

  describe 'Contact page' do
    it "should have the content 'Contacto'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contacto')
    end

    it "should have the title 'Contacto'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contacto")
    end
  end
end
