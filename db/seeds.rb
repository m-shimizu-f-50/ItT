# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
   email: 'user@test.com',
   password: 'testtest',
   name: "test",

)

Category.create!(
   name: 'IT',
   is_valid: true,
)

Note.create!(
   title: "OS",
   user_id: 1,
   category_id: 1,
   explanation:
    "OSとはOperation System（オペレーティング・システム）の略で、アプリやデバイスを動作させるための基本となるソフトウェアのことです。 具体的には、キーボードやマウス・タッチパッドなどのデバイスから入力した情報をアプリケーションに伝え、またソフトウェアとハードウェアの連携を司る中枢的な役割を果たします。 パソコンやスマートフォンにはゲームやワープロ・表計算などさまざまな仕事をするアプリケーションがありますが、それらはOSごとに開発されるのが通常です。\r\n\r\n\r\n```\r\n例）\r\n・Mac OS\r\n・Window OS\r\n・Linux\r\n```\r\n\r\n",
   rate: 3,
)