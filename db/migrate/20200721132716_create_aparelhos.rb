class CreateAparelhos < ActiveRecord::Migration[6.0]
  def change
    create_table :aparelhos do |t|
      t.string :numero
      t.string :operadora
      t.boolean :status, :default => true
    
      t.timestamps
    end
  end
end
