class Speciality < ApplicationRecord
    has_many :joint_doctor_specialities
    has_many :doctors, through: :joint_doctor_specialities
end
