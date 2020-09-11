# require modules here

def load_library(emoticon_file)
  # code goes here
  emoji_hash = {}
  emoji_hash["get_meaning"] = {}
  emoji_hash["get_emoticon"] = {}
  emoji = YAML.load_file(path)
  emoji.each do |word, emojis|
    emoji_hash["get_meaning"][emojis[1]] = word
    emoji_hash["get_emoticon"][emojis[0]] = emojis[1]
  end
  emoji_hash
end


def get_japanese_emoticon
  # code goes here]
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end

def get_english_meaning
  # code goes here
end
