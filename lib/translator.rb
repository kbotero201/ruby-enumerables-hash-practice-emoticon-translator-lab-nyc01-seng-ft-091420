# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  # code goes here
  file = File.read(file_path)
  emoticons = YAML.load(file)
end


def get_japanese_emoticon(file_path, emoticon)
  # code goes here]
  emoticons = load_library(file_path)
  emoji = emoticons.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]
end

def get_english_meaning(path, emoticon)
  # code goes here
  emoji = load_library(path)
  if emoji["get_meaning"].has_key?(emoticon)
    emoji["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
