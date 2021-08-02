class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :subject
  has_many :classrooms
end
