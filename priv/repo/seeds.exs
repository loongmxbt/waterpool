alias Waterpool.{Repo, User, Type, Post, Category, Tag, Slogan}

Repo.delete_all User

User.changeset(%User{}, %{name: "dragonszy", email: "dragonszy@163.com", password: "szy555", password_confirmation: "szy555"})
|> Repo.insert!

Repo.insert(%Type{name: "post"})
Repo.insert(%Type{name: "topic"})
Repo.insert(%Type{name: "video"})

Repo.insert(%Category{name: "未分类", slug: "uncategorized"})
Repo.insert(%Category{name: "全球股票", slug: "stock"})
Repo.insert(%Category{name: "基金", slug: "fund"})
Repo.insert(%Category{name: "P2P", slug: "p2p"})
Repo.insert(%Category{name: "信用卡", slug: "credit-card"})
Repo.insert(%Category{name: "固定收益", slug: "fixed-income"})
Repo.insert(%Category{name: "房地产", slug: "real-estate"})
Repo.insert(%Category{name: "商品", slug: "commodity"})
Repo.insert(%Category{name: "艺术品", slug: "artwork"})


Repo.insert(%Post{title: "房地产投资指南", desc: "描述", body: "主体内容"})


Repo.insert(%Slogan{author: "", body: "向上爬"})

