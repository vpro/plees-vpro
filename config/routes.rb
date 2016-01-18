Pleesvpro::Application.routes.draw do
  root :to => 'plees#index'
  match "/" => 'plees#index'
  match '/:width/:height' => 'plees#vpro', :constraints => { :width => /[0-9]+/, :height => /[0-9]+/}
  match '/:width/:height/:random' => 'plees#vpro', :constraints => { :width => /[0-9]+/, :height => /[0-9]+/,  :random => 'r'  }
  match '/:square' => 'plees#vprosquare', :constraints => { :square => /[0-9]+/ }
  match '/:square/:random' => 'plees#vprosquare', :constraints => { :square => /[0-9]+/,  :random => 'r' }
  match '/*anythingelse' => 'plees#index'
end
