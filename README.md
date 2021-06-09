# アプリ名
就職活動スケジュール管理アプリ

# 本番環境
URl: https://finding-employment.herokuapp.com/

# 概要
就職活動スケジュール管理アプリでは企業毎に面接日程や現段階の選考段階などをメモすることが出来ます。また、面接での反省点や良かった点を記述出来ます。その他には実際の面接で聞かれたことや感想などを他のユーザーと情報共有することも出来ます。


# 制作目的
私が新卒で就職活動している時、企業毎の選考スケジュール管理が大変だった経験がありました。僕自身だけではなく、友人も同じような経験をしていたので、多くの就活生がスケジュール管理での悩みを抱えていると思いました。その経験から私はこのアプリで新卒で就活される方又はこれから転職活動される方が企業毎の選考段階や選考状況などを把握しやすくし、スケジュール管理の課題解決したいと思いこのアプリを作成致しました。

# DEMO

# TopPage
[![Image from Gyazo](https://i.gyazo.com/c16b185992faae37a7101c59df27645f.gif)](https://gyazo.com/c16b185992faae37a7101c59df27645f)
このアプリケーションのトップページです。ログアウト・ログイン状態でも同じように表示されます。
# メモ投稿機能と一覧機能
[![Image from Gyazo](https://i.gyazo.com/15647cec57e0fa69481e1cf6caa057f3.gif)](https://gyazo.com/15647cec57e0fa69481e1cf6caa057f3)
上記の【メモ】をクリックするとメモ投稿画面に移り、応募した企業の業界をカテゴリーの中から選択します。応募した企業の選考状況や面接日時や特徴など記述し、スケジュールの把握をしやすくします。また実際の面接での反省点や良かった点なども記述することで、振り返りもしやすく次回面接に活かすことが出来るようにしています。一覧機能では、カテゴリー毎に振り分けられた状態で表示されます。
# 検索機能
[![Image from Gyazo](https://i.gyazo.com/20dc506fd153052230979f95a5f92e63.gif)](https://gyazo.com/20dc506fd153052230979f95a5f92e63) 
何十社を応募していく中で、応募先企業がなかなか見つからない場合を想定し結果すぐに見つけることが出来る検索機能をつけました。

# 編集・削除機能
[![Image from Gyazo](https://i.gyazo.com/a4a9358d9ba8d753925bab12b43d3564.gif)](https://gyazo.com/a4a9358d9ba8d753925bab12b43d3564)
選考が進むにつれて記述したものを新たに書く必要をなくすための機能です。選考が進めば、編集し・落選すれば削除していきます。編集ボタンをクリックすると編集画面に移り、元々記述してあった内容が保存された状態で編集出来ます。なので簡単に更新できます。投稿を削除したい場合は削除ボタンを押せば消えます。

# 共有機能
[![Image from Gyazo](https://i.gyazo.com/4d50c595e941102b8a81ea31ba764b13.gif)](https://gyazo.com/4d50c595e941102b8a81ea31ba764b13)
共有機能では、他のユーザーが面接で聞かれたことやアドバイスなどが見れる機能です。そしてユーザー名をクリックするとそのユーザーが投稿した記事を一覧で見ることが出来ます。共有機能も同様にカテゴリーごとに表示されるので、自分みたい業界や検索してみたい企業名を簡単に探すことが出来ます。
また編集や削除機能は自身が投稿した記事のみ表示されるようにしています。

# 工夫点
実際に使ってもらうことに重点をおきました。なので、複雑ない

全体的にシンプルで見やすくするために黒と白を中心にデザインしました。

# 制作後の課題
実際に作成後に発見した課題は、より細かく業界をカテゴリー分けすることや職種のカテゴリーを追加したほうが利用者側には使いやすと思いました。なぜなら、特定の職種を目指して就職活動する方もいるからです。例えばIT業界を目指し、その中でもエンジニアを希望する場合、フロントエンド・バックエンドに分れることが出来、不動産業界の中でもディベロッパー・売買仲介・賃貸仲介に細かく分けることが出来ます。またこのアプリは全ての業界や職業取り扱っていないので、自分で新たにカテゴリーを作成出来るようにすることです。より多くの業界や職種でカテゴリー分をした際に、見栄えの視点から見ると見づらくなってしまう可能性があるのも課題ではあります。

# 今後の実装したいこと
今後応募した企業のホームページのURLを貼り付けて簡単にサイトにアクセス出来るようにサイトURLが貼ることができるリンク欄の設置を実施する予定です。また作成後に発見した上記の課題を一つでも解決していこうと思っています。

# 開発環境
# フロントエンド
HTML,sass
# バックエンド
ruby, Ruby on Rails
# データーベース
MySQL, Sequel Pro
# ソース管理
GitHub, GitHubDesktop
# テスト
RSpec
# エディタ
Visual Studio Code

# DB設計

## users テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |

### Association

- has_many : enterprises
- has_one : memo

## memos テーブル

| Column            | Type    | Options                           |
| ----------------- | ------- | --------------------------------  |
| title             | string  | null: false                       |
| selection＿status | text    | null: false                       |
| body              | text    | null: false                       |
| industry_id       | integer | null: false                       |
| user              | references | null: false, foreign_key: true |

### Association

- belongs_to : user

## Enterprises テーブル

| Column        | Type    | Options                           |
| ------------- | ------- | --------------------------------- |
| industry_id   | integer | null: false                       |
| title         | string  | null: false                       |
| image         | ActiveStorageで実装                         |
| text          | text    | null: false                       |
| theme         | text    | null: false                       | 
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to : user

