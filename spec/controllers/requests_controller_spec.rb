require 'spec_helper'

describe RequestsController do
  describe 'new controller action' do
    it 'should make the zones, buildings, and areas in the database available to the view' do
      zone_list = [mock('Zone', :name => "zone1"), mock('Zone', :name => "zone2")]
      building_list = [mock('Building', :name => "building1"), mock('Building', :name => "building2")]
      area_list = [mock('Area', :name => "area1"), mock('Area', :name => "area2")]
      Zone.stub(:all).and_return(zone_list)
      Building.stub(:all).and_return(building_list)
      Area.stub(:all).and_return(area_list)
      get :new
      assigns(:zones).should == zone_list.map do |zone|
        zone.name
      end
      assigns(:buildings).should == building_list.map do |building|
        building.name
      end

      assigns(:areas).should == area_list.map do |area|
        area.name
      end
    end
  end

  describe 'do_search' do
    it 'should redirect to the show url' do
      Request.stub(:find_by_id).and_return(mock('Request'))
      get :do_search, {:search=>{:request_id => 1}}
      response.should redirect_to(request_path(1))
    end
  end
  describe 'show controller method' do
    it 'should render the show template for a valid request_id' do
      Request.stub(:find_by_id).and_return(mock('Request'))
      get :show, {:id=>1}
      response.should render_template(:action => "show")
    end
    it 'should render the home page for an invalid request_id' do
      Request.stub(:find_by_id).and_return(nil)
      get :show, {:id =>1}
      response.should render_template(:action => "index")
    end
  end
end
