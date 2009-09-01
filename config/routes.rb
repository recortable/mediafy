ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'buckets'
  map.resources :buckets
end
