require_relative 'wizard'

RSpec.describe Wizard do
    it 'has a default health of 50 and intelligence of 25' do
        wizard1 = Wizard.new
        expect(wizard1.health).to eq(50)
        expect(wizard1.intelligence).to eq(25)
    end
    it 'has a heal method that increases health by 10' do
        wizard2 = Wizard.new
        expect(wizard2.heal).to eq(60)
    end
    it 'has an ancestor chain that includes Human' do
        wizard3 = Wizard.new
        expect(wizard3.class.ancestors).to include Human
    end
    it 'has a fireball method that attacks an object and reduces the health of attacked object' do
        wizard4 = Wizard.new
        wizard5 = Wizard.new
        wizard4.fireball(wizard5)
        expect(wizard5.health).to eq(30)
    end
end
