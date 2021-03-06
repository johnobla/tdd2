require 'rails_helper'

RSpec.describe 'Status requests' do
  describe 'GET /status' do
    it 'returns a status message' do
      get('/status')
      response_json = JSON.parse(response.body)
      expect(response_json['status']).to eql('ok')
      expect(response.status).to eql(200)
    end
  end
end