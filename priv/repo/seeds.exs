alias Waterpool.{Repo, User, Type, Post, Category}

Repo.delete_all User

User.changeset(%User{}, %{name: "dragonszy", email: "dragonszy@163.com", password: "szy555", password_confirmation: "szy555"})
|> Repo.insert!

Repo.insert(%Type{name: "post"})
Repo.insert(%Type{name: "topic"})
Repo.insert(%Type{name: "video"})

Repo.insert(%Category{name: "无分类"})
Repo.insert(%Category{name: "楼市"})
Repo.insert(%Category{name: "股市"})
Repo.insert(%Category{name: "P2P"})
Repo.insert(%Category{name: "信用卡"})
Repo.insert(%Category{name: "固定收益"})
Repo.insert(%Category{name: "创业"})
Repo.insert(%Category{name: "公司"})





