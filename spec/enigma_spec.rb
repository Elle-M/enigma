require 'date'
require './lib/Enigma'

RSpec.describe Enigma do
  let(:enigma) { Enigma.new({  :message => "hello world" , 
        :key => [0,1,2,3,4,5,6,7,8,9].sample(5), 
        :date => Date.today.strftime('%m%d%y')
        }) }

  describe '#initialize and has attributes' do
    it 'has a exists' do
      
      expect(enigma).to be_an_instance_of(Enigma)
      expect(enigma.message).to eq("hello world")
      expect(enigma.key.length).to eq(5)
      expect(enigma.date).to eq(Date.today.strftime('%m%d%y')) 
      #has a to be a better way to test that
    end
  end

  describe '#keys' do
    it 'has a has keys and generates random split pairs' do
     
      expect(enigma.keys).to include(:A, :B, :C, :D )
      expect(enigma.keys[:A].size).to eq(2)
      expect(enigma.keys[:B].size).to eq(2)
      expect(enigma.keys[:C].size).to eq(2)
      expect(enigma.keys[:D].size).to eq(2)
      expect(enigma.keys.values.length).to eq(4)
      # expect(enigma.keys[:D]).to include(:key.last) you can't call length on a symbol but why can't you use the return of the key to call on the last element of the array
    end
  end

  describe '#offsets' do
    xit 'has offsets using date transmission' do
      
      expect(enigma.offsets).to include(:A, :B, :C, :D)
      expect(enigma.offsets).to eq(1)
      # expect(enigma.offsets[:B].size).to eq(1)
      # expect(enigma.offsets[:C].size).to eq(1)
      # expect(enigma.offsets[:D].size).to eq(1)
      # expect(enigma.offsets.values.length).to eq(4)
    end
  end
end




