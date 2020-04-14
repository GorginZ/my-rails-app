class BooksController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :setup_data
    
        def index
            render json: @data
        end
    
        #Show a single book
        def show
        # /books/:id(.:format)
        index_position = params[:id]
        render json: @data[index_position]
    
        end
    
        #Create a new book
        def create

            BooksController.new(:title, :author)

            # the aim of this method is to create a new books object and save it to @data
            # 1. get the data(title, author) from the body
            # 2. format it into a book object
            # 3. store it in the @data array
            # 4. return this new record
        end
    
        #Update a book
        def update
            # the aim of this method is to update a record already in the @data array
            # 1. get the id from the url like done in #show
            # 2. get the data(title, author) from the body
            # 3. get the record from the array using the id
            # 4. update that record with the new data supplied through the body
            # 5. retyrn the updated object
        end
    
        #Remove a book
        def destroy
            # the aim of this method is to remove a record from the @data array
            # 1. get the id from the url
            # 2. remove the record from the array using this id
            # 3. return the deleted object
        end
    
        private
        def setup_data
            @data = [
                { title: "Harry Potter", author: "J.K Rowling" },
                { title: "Name of the wind", author: "Patrick Rothfuss" }
            ]
        end
    end


* Using the below controller and routes files as a starting guide create a full CRUD resource for books.
* Use the @data instance variable to hold all of your data (we will do models later), each book should have a title and an author.
* Respond back in JSON (we will do views later)
* Using Postman will be easier to test than the browser
* Remember to push to github and get those green squares!
