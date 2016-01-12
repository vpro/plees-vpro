Pleesvpro::Application.routes.draw do
  root :to => 'plees#index'
  match "/" => 'plees#index'
  match '/:width/:height' => 'plees#vpro', :constraints => { :width => /[0-9]+/, :height => /[0-9]+/ }
  match '/:square' => 'plees#vprosquare', :constraints => { :square => /[0-9]+/ }
  match '/*anythingelse' => 'plees#index'
end
