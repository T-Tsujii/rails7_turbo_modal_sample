class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, comment: "ユーザー" do |t|
      t.string :email, null: false, index: { unique: true }, comment: "メールアドレス"
      t.string :name, null: false, comment: "氏名"
      t.integer :gender, null: false, comment: "性別"
      t.integer :age, comment: "年齢"
      t.string :tel, comment: "電話番号"
      t.date :birth_date, comment: "生年月日"

      t.timestamps
    end
  end
end
