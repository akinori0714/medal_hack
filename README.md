# DB設計

## Users
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|
|name_kana|string|null :false|
|nickname|string|null :false|
|sex|integer|null :false|
|birthday|integer|null :false|
|email|string|null :false|
|password|string|null :false|
|tel|integer|null :false|
|identification|string|null :false|
|point|integer||
|ranking|integer||
|total_prize|integer||
|league|integer|null :false|

### Association
belongs_to: tournaments

## tournaments
|Column|Type|Options|
|------|----|-------|
|tournament_name|string|null :false|
|prize|integer||
|ranking|integer|null :false|
|point|integer|null :false|
|content|string|null :false|
|date|integer|null :false|
|user_id|integer|null :false, foreign_key: true|
|game_id|integer|null :false, foreign_key: true|

### Association
has_many: users