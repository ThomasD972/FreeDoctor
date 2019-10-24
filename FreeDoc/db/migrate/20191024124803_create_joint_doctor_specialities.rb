class CreateJointDoctorSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :joint_doctor_specialities do |t|
      t.string :level
      t.belongs_to :doctor, index:true
      t.belongs_to :speciality, index:true
      t.timestamps
    end
  end
end
