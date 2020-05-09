require 'pry'
require "yaml"

def load_library(filename)
  emoticons = YAML.load_file(filename)
  emoticons.reduce({}){|new, (key,valueArray)|
    new[key] = {:english => valueArray[0], :japanese => valueArray[1]}
    new 
  }
  
  
  
end

def get_japanese_emoticon(filename, eng_vers)
  hash = load_library(filename)
  jap_vers = ""
  
  
  
  hash.each{|(key_out, val_out)|
      if(val_out[:english] == emoticon)
        jap_vers = val_out[:japanese]
      end 
      #binding.pry 
    }
  
  eng_vers
  
  
 
  
end

def get_english_meaning
  # code goes here
end