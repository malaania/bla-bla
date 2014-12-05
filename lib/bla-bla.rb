class BlaBla

    WORD_LIST =
    ["is","the","banana","dog","doing","idea","I","rainbow","swimming",
    "pony","similar","noodles","look","think","go","was","hamster",
    "cat","add","change","in","unsuspecting","customer", "of", "this",
    "shop", "receive", "shock", "their","when", "floor","suddenly", 
    "start", "disappear", "force", "to", "hang", "watermelon", "walls",
    "probably", "not", "best", "way" , "get", "follow", "client","creepy",
    "bizarre", "sculpture", "at","come", "first", "incredible", "you", "we",
    "us","they","he","she", "win","fame","glory","come", "gift","giant",
    "green", "blue","yellow","pink","macaron", "really", "very",
    "prize","part", "last", "month", "show", "why" "employee", "spell",
    "your", "name", "wrong", "street", "artist", "village", "country","hula-hop",
    "orange","pinapple","participate","funny","holiday","oyster","squirrel","eye",
    "nose","poke","tree","baloon","computer","book"]

  def self.author
    new_author = ""
    new_author << WORD_LIST.sample.capitalize << " " << WORD_LIST.sample.capitalize
  end

  def self.title
    n = 1 + rand(5)
    new_title = ""
    n.times do
      new_title << WORD_LIST.sample << " "
    end
    new_title.capitalize
  end

  def self.generate_sentence
    new_sentence = ""
    n = 5 + rand(6)
    (n-1).times do
      new_sentence << WORD_LIST.sample << " "
    end
    new_sentence << WORD_LIST.sample << "."
    new_sentence.capitalize
  end

  def self.content
    n = 1 + rand(5)
    new_content = ""
    (n-1).times do
      new_content << BlaBla.generate_sentence << " "
    end
    new_content << BlaBla.generate_sentence
  end
end