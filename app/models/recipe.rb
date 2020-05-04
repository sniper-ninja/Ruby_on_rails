class Recipe < ActiveRecord::Base
    include HTTParty
        
    base_uri 'http://www.recipepuppy.com/api'
    default_params onlyImages: 1

    format :json

    def self.for ( keyword = 'chocolate' )
        get('', query: { q: keyword })['results']
    end
    #     def self.for term
    #     get("", query: { q: term })['recipes']
    # end
end
