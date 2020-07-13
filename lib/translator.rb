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
  eng_meaning = ""
  apology = "Sorry, that emoticon was not found"
  emoticons.each do |emotion, lang|
    lang.each do 
    |inner_key, emoticon|
    if emoticon[1] == j_emoticon
      eng_meaning = emotion
    end
  end
  if eng_meaning == ""
    eng_meaning = apology
  end
end
eng_meaning
end