# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SourceProvider.delete_all
SourceProvider.create(name: 'cosmostv', url: 'http://cosmos-telecom.by/', address: 'Minsk, vul. Krasnaya, 6', last_sync_at: DateTime.now)
SourceProvider.create(name: 'by-fly', url: 'http://byfly.by/', address: 'Misnk, vul. Engelsa, 6 ', last_sync_at: DateTime.now)
SourceProvider.create(name: 'atlant-telecom', url: 'https://telecom.by/', address: 'Minsk, prospect Pobediteley, 100, office 105', last_sync_at: DateTime.now)