class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table(:surveys) do |t|
      t.column(:author, :string)
      t.column(:title, :string)
    end
  end
end
