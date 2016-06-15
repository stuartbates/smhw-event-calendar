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

    it 'assigns event for new form' do
      get :index
      expect(assigns(:event)).to_not be_nil
    end

  end

  describe 'POST#create' do

    context 'correct parameters' do
      it 'does create a new event' do
        expect do
          post_create_with_valid_event_params
        end.to change(Event, :count).by(1)
      end

      it 'responds with json of events' do
        event = build(:event)
        post :create, event: { title: event.title, start_date: event.start_date, end_date: event.end_date }
        expect(response.body).to eq([event].to_json)
      end
    end

    context 'incorrect parameters' do
      it 'does not create a new event' do
        expect do
          post_create_with_invalid_event_params
        end.to change(Event, :count).by(0)
      end
    end

  end

  def post_create_with_valid_event_params
    attrs = attributes_for(:event)
    xhr :post, :create, event: attrs
  end

  def post_create_with_invalid_event_params
    attrs = attributes_for(:event)
    attrs[:title] = nil
    xhr :post, :create, event: attrs
  end

end

