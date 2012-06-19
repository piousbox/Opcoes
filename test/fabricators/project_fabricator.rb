

Fabricator(:project, :class_name => :project) do
  
  url 'test url'
  quantity 10
  keywords 'key_1 key_2'
  _id BSON::ObjectId('4d892bfe6bcaff4ffd000001')
  
  actor
  
end
