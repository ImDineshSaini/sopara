require 'rails_helper'

RSpec.describe Review, type: :model do
  subject { described_class.new(stars: 5, user_id: 1) }
  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a star' do
      subject.stars = nil
      expect(subject).to_not be_valid
    end
  end
end
