class Comment < ApplicationRecord
  belongs_to :article
end
#generated from: bin/rails generate model Comment commenter:string body:text article:references
