class AddAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false
  end
end


# User.create!(name: 'George Lymperopoulos' , email: 'glympe@yahoo.gr' , organisation_id: '1' , password: '123123123' , password_confirmation: '123123123')

# Organisation.create!(name: 'Company2' , description: 'Company 2 description')

# curl -H "Content-Type: application/json" -X POST -d '{"email":"example@mail.com","password":"123123123"}' http://localhost:3000/authenticate
# curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0ODU3NzUzNjl9._PfQ4H_OCZsY5uLWOVbUatClwXSII3zdtuFhQKNVwwM" -X POST -d '{"name":"Company 3","description":"company 3"}' http://localhost:3000/organisations



# curl -H "Content-Type: application/json" -X POST -d '{"email":"example@mail.com","password":"123123123"}' http://localhost:3000/authenticate


# curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0ODU3NzY1Mjd9.B_NuT_SPZQK-9GXCh1eQBwWJTDZV9g2XeZ80F0g_4T8" --data "name=company3&description=company3descr" http://localhost:3000/organisations