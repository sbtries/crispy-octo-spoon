class CreateArticles < ActiveRecord::Migration[6.0]
    def change
      create_table :articles do |t| #specifies how the articles table should be constructed.
                                    #by defauly, create_table method adds an id column as an 
                                    #incrementing pk
        
        
        t.string :title #col -> added because they were includewd in the command
        t.text :body #col 
  
        t.timestamps #defintes 2 more columns, created_at and updated_at. 
                    #Rails manages these & sets values when objects are created or updated
      end
    end
  end
  