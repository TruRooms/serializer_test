# README

Example rails app documenting issue with STI and Polymorphic relationships in Fastjson Serializer

# Setup

Rspec is set up, but for some reason the specs pass?!

# Recreate issue

```

bundle install

rake db:migrate

rails console

user = User.create(name: 'Bob', type: 'User::Admin')

item = Item.create

item.create_activity key: 'item.commented_on', owner: user

exit

rails s

```

Visiting http://localhost:3000/activities should now provide you with the error:

`Invalid single-table inheritance type: User::Admin is not a subclass of User`

# Oddities

The specs pass. Maybe they are written wrong. This definitely has to do with
how Rails is loading the subclasses of User. But I'm not quite sure how yet.
