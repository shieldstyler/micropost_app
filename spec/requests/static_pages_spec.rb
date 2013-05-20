require 'spec_helper'
  describe "Static pages" do
    
    let(:base_title) { "Micropost" }
    subject { page }

    describe "Home page" do
      before { visit root_path }
	it { should have_selector('h1', :text => 'Micropost') }
        it { should have_selector('title', :text => full_title('')) }
        it { should_not have_selector('title', :text => "| Home") }
    end
    describe "Help page" do
      before { visit help_path }
          it { should have_selector('h1', :text => 'Micropost') }
          it { should have_selector('title', :text => full_title('')) }
    end
    describe "About page" do
      before {visit about_path}
      it { should have_selector('h1', :text => 'Micropost') }
      it { should have_selector('title', :text => "#{base_title} | About Us") }
    end
    describe "Contact page" do
      before { visit contact_path }
	it { should have_selector('h1', :text => 'Micropost')}
        it { should have_selector('title', :text => "#{base_title} | Contact") }
      
    end
  end
