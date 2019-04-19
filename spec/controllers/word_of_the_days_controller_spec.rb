require 'rails_helper'

RSpec.describe WordOfTheDaysController, type: :controller do
  context 'GET #index' do
    it 'returns a success response' do
      expect(response).to be_successful
    end
  end

context 'GET #show' do
  it 'returns a success response' do
    expect(response).to be_successful
    end
  end
end
