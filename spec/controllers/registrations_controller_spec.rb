require 'rails_helper'

describe RegistrationsController do
  describe '#create' do
    subject { post :create, params: params }
    context 'when invalid data provided' do
      let(:params) do
        {
          data: {
            attributes: {
              email: nil,
              password: nil
            }
          }
        }
      end

      it 'should return unprocessable_entity status code' do
        subject
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'should not create a data user' do
        expect{ subject }.not_to change{ User.count }
      end
    end

    context 'when valid data provided' do
      let(:params) do
        {
          data: {
            attributes: {
              email: 'admin@mail.com',
              password: 'secretpassword'
            }
          }
        }
      end

      it 'should return 201 http status code' do
        subject
        expect(response).to have_http_status(:created)
      end

      it 'should create a data user' do
        expect(User.exists?(email: 'admin@mail.com')).to be_falsey
        expect{ subject }.to change{ User.count }.by(1)
        expect(User.exists?(email: 'admin@mail.com')).to be_truthy
      end

    end
  end
end
