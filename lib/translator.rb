# require modules here
require 'yaml'
require 'pry'
def load_library(file_path = 'lib/emoticons.yml')
  emoticon_library = YAML.load_file(file_path)
  result = emoticon_library.each_with_object({}) do |(key, value), final_hash|
    if !final_hash[key] 
      final_hash[key] = {
      :english => value[0],
      :japanese => value[1]
       }
end
result
end
end

def get_japanese_emoticon(file, eng_emo)
  emoticons = load_library(file)
  emoticons.each do |meaning, idioms|
    return idioms[:japanese] if
  idioms[:english] == eng_emo
end
"Sorry, that emoticon was not found"
end

def get_english_meaning(file, jap_emo)
  emoticons = load_library(file)
  emoticons.each do |meaning, idioms|
    return meaning if 
    idioms[:japanese] == jap_emo
  end
  "Sorry, that emoticon was not found"
end