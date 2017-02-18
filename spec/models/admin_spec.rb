require 'rails_helper'

RSpec.describe Admin, type: :model do
  context 'validations' do
    context 'presence_of' do
      it { expect(subject).to validate_presence_of(:email) }
    end

    context 'uniqueness_of' do
      it { expect(subject).to validate_uniqueness_of(:email).case_insensitive }
    end
  end

  context 'when Agency is valid' do
    subject(:admin) { build(:admin) }
    it { expect(admin).to be_valid }
  end

  context 'when Agency is not valid' do
    subject(:admin) { build(:admin, email: 'admin-invalid-email') }
    it { expect(admin).not_to be_valid }
  end
end
