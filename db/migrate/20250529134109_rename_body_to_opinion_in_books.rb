class RenameBodyToOpinionInBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :body, :opinion
  end
end
