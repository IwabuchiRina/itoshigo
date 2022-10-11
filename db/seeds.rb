# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
'ハムスター',
'マウス、デグー、ヤマネ',
'モルモット、チンチラ',
'モモンガ、ヨツユビハリネズミ、ヒメハリテンレック',
'その他',
]
pet_types = [
  {
    name:'ハムスター',
    types:['カラーハムスター','ゴールデンハムスター','キンクマハムスター','ジャンガリアンハムスター','チャイニーズハムスター','キャンベルハムスター','ロボロフスキーハムスター']
  },
  {
    name:'マウス、デグー、ヤマネ',
    types:['アフリカヤマネ','ピグミーマウス','オオミユビトビネズミ','カイロトゲマウス','カラージャービル','デグー','レミング','ハツカネズミ','パンダマウス','ピグミージェルボア','ファットテールジャービル','ファンシーマウス']
  },
  {
    name:'モルモット、チンチラ',
    types:['イングリッシュモルモット','テディモルモット','アビシニアンモルモット','クレスッドモルモット','シェルティモルモット','ペルビアンモルモット','テッセルモルモット','レックスモルモット','スキニーギニアピッグモルモット','コロネットモルモット','メリノモルモット','アルパカモルモット']
  },
  {
    name:'モモンガ、ヨツユビハリネズミ、ヒメハリテンレック',
    types:['アメリカモモンガ','フクロモモンガ']
  },
  {
    name:'その他',
    types:['ミーアキャット','プレーリードッグ','シマリス','リチャードソンジリス']
  },
]

categories.each do |category| 
  Category.create!(name: category)
end

pet_types.each do |pet_type|
  category_name = pet_type[:name]
  category = Category.where(name: category_name).first
  pet_type[:types].each do |pet_type_name|
  PetType.create!(
    category_id: category.id,
    name: pet_type_name
  )
end
end