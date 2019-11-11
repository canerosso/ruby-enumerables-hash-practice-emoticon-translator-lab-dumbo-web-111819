# require modules here
require "yaml"

def load_library(emofile)
  # code goes here
   emo = YAML.load_file(emofile)
  
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  emo.each do |key,value|
    new_hash['get_emoticon'][value[0]] = emo[key][1]
    new_hash['get_meaning'][value[1]] = key
  end
end

def get_japanese_emoticon(emofile,emo)
  # code goes here
  result = load_library(emofile)['get_emoticon'][emo]
  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning(emofile,emo)
  # code goes here
  result = load_library(emofile)['get_meaning'][emo]
  result ? result : "Sorry, that emoticon was not found"
end