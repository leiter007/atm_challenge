require './lib/account.rb'

describe Account do
    let(:person) {instance_double('Person', name: 'Thomas')}
    subject { described_class.new({owner: person}) }
    
    it 'is expected to have an owner' do
        expect(subject.owner).to eq person
    end

    it 'is expected to raise error if no owner is set' do
        expect { described_class.new }.to raise_error 'An Account owner is required'
    end

    it 'check length of a number' do
        number = 1234
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

end
