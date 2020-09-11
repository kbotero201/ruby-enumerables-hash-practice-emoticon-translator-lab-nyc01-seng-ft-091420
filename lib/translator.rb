# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  # code goes here
  file = File.read(file_path)
  emoticons = YAML.load(file)
end


def get_japanese_emoticon(path, emoticon)
  # code goes here]
  emoji = load_library(path)
  if emoji["get_emoticon"].has_key?(emoticon)
    emoji["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
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
