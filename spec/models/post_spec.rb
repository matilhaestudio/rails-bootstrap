require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validations' do
    context 'presence_of' do
      it { expect(subject).to validate_presence_of(:title) }
    end
  end

  context 'when Post is valid' do
    subject(:post) { build(:post) }
    it { expect(post).to be_valid }
  end

  context 'when Post is not valid' do
    subject(:post) { build(:post, title: '') }
    it { expect(post).not_to be_valid }
  end
end
