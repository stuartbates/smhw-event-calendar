require 'rails_helper'

describe Event, type: :model do

  describe '#to_json' do
    it 'only returns white-listed attributes' do
      hash = JSON.parse(build(:event).to_json)

      expect(hash.count).to eq(3)
      expect(hash).to have_key('title')
      expect(hash).to have_key('start')
      expect(hash).to have_key('end')
    end
  end

  describe 'validation' do
    it { expect(build(:event, title: nil)).to_not be_valid }
    it { expect(build(:event, start_date: nil)).to_not be_valid }
    it { expect(build(:event, end_date: nil)).to_not be_valid }
  end

end
