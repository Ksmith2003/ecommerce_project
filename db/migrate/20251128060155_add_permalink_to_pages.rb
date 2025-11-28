class AddPermalinkToPages < ActiveRecord::Migration[8.1]
  def change
    add_column :pages, :permalink, :string
  end
end
