class RenameSubjectToNameInSubjects < ActiveRecord::Migration
  def change
    rename_column :subjects, :subject, :name
  end
end
