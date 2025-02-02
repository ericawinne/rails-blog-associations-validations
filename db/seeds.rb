# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TAGS = ["adventurous", "aggressive", "agreeable", "alert", "alive", "amused", "angry", "annoyed", "annoying", "anxious", "arrogant", "ashamed", "attractive", "average", "awful", "bad", "beautiful", "better", "bewildered", "black", "bloody", "blue", "blue-eyed", "blushing", "bored", "brainy", "brave", "breakable", "bright", "busy", "calm", "careful", "cautious", "charming", "cheerful", "clean", "clear", "clever", "cloudy", "clumsy", "colorful", "combative", "comfortable", "concerned", "condemned", "confused", "cooperative", "courageous", "crazy", "creepy", "crowded", "cruel", "curious", "cute", "dangerous", "dark", "dead", "defeated", "defiant", "delightful", "depressed", "determined", "different", "difficult", "disgusted", "distinct", "disturbed", "dizzy", "doubtful", "drab", "dull", "eager", "easy", "elated", "elegant", "embarrassed", "enchanting", "encouraging", "energetic", "enthusiastic", "envious", "evil", "excited", "expensive", "exuberant", "fair", "faithful", "famous", "fancy", "fantastic", "fierce", "filthy", "fine", "foolish", "fragile", "frail", "frantic", "friendly", "frightened", "funny", "gentle", "gifted", "glamorous", "gleaming", "glorious", "good", "gorgeous", "graceful", "grieving", "grotesque", "grumpy", "handsome", "happy", "healthy", "helpful", "helpless", "hilarious", "homeless", "homely", "horrible", "hungry", "hurt", "ill", "important", "impossible", "inexpensive", "innocent", "inquisitive", "itchy", "jealous", "jittery", "jolly", "joyous", "kind", "lazy", "light", "lively", "lonely", "long", "lovely", "lucky", "magnificent", "misty", "modern", "motionless", "muddy", "mushy", "mysterious", "nasty", "naughty", "nervous", "nice", "nutty", "obedient", "obnoxious", "odd", "old-fashioned", "open", "outrageous", "outstanding", "panicky", "perfect", "plain", "pleasant", "poised", "poor", "powerful", "precious", "prickly", "proud", "puzzled", "quaint", "real", "relieved", "repulsive", "rich", "scary", "selfish", "shiny", "shy", "silly", "sleepy", "smiling", "smoggy", "sore", "sparkling", "splendid", "spotless", "stormy", "strange", "stupid", "successful", "super", "talented", "tame", "tender", "tense", "terrible", "testy", "thankful", "thoughtful", "thoughtless", "tired", "tough", "troubled", "ugliest", "ugly", "uninterested", "unsightly", "unusual", "upset", "uptight", "vast", "victorious", "vivacious", "wandering", "weary", "wicked", "wide-eyed", "wild", "witty", "worrisome", "worried", "wrong", "zany", "zealous"]

TAGS.each{|tag| Tag.create(:name  => tag)}

crookshanks = User.create(:name => "Crookshanks")
erica = User.create(:name => "Erica")
benny = User.create(:name => "Benny")
wall = User.create(:name => "Wall")

adorable = Tag.create(:name => "adorable")
neat = Tag.create(:name => "neat")
cool = Tag.create(:name => "cool")
smart = Tag.create(:name => "smart")

kitten_post = Post.create(:user_id => crookshanks.id, :name => "Kittens!", :content => "Kitty ipsum dolor sit amet, climb the curtains hairball lay down in your way rip the couch sunbathe, jump on the table stuck in a tree leap lay down in your way bat. Sleep on your keyboard puking catnip chuf, zzz purr hairball claw give me fish I don't like that food sunbathe. Knock over the lamp hiss knock over the lamp stuck in a tree give me fish, meow judging you biting climb the curtains sleep on your face sunbathe sleep on your face. Biting fluffy fur knock over the lamp zzz jump, scratched purr chuf eat the grass judging you sleep on your keyboard. Biting knock over the lamp knock over the lamp feed me, meow sleep in the sink catnip kittens sleep on your face attack. Judging you stuck in a tree zzz bat stuck in a tree puking, fluffy fur sleep on your keyboard kittens jump biting chase the red dot.")
dog_post = Post.create(:user_id => crookshanks.id, :name => "dogs!", :content => "dooooooooooogs dogs.")
coding_post = Post.create(:user_id => erica.id, :name => "codings!", :content => "humanss codings.")

PostTag.create(:tag_id => adorable.id, :post_id => kitten_post.id)
PostTag.create(:tag_id => adorable.id, :post_id => dog_post.id)