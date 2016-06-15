require 'rails_helper'

describe EventsController do

  describe 'GET #index' do

    it 'assigns events var' do
      events = [ create(:event) ]
      get :index
      expect(assigns(:events)).to eq(events)
    end

    it 'renders index template' do
      get :index
      expect(response).to render_template('index')
    end

  end

end

