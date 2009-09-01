ActionController::Routing::Routes.draw do |map|
  map.resources :buckets, :collection => {:destroy_all => :delete}
end
