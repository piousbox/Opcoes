

Fabricator(:manager, :from => :actor) do

  email 'manager_557@yahoo.com'
  password 'blah123'
  
  _id BSON::ObjectId('4d892bfe6bcaff4ffd000001')
  
end

Fabricator(:actor) do

  email 'actor_3@gmail.com'
  password '123456'
  
end