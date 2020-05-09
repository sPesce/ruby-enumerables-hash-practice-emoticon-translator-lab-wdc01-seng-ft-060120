require 'pry'
require "yaml"

def load_library(filename)
  emoticons = YAML.load_file(filename)
  emoticons.reduce({}){|new, (key,valueArray)|
    new[key] = {:english => valueArray[0], :japanese => valueArray[1]}
    new 
  }
  #binding.pry 
  
  
end

def get_japanese_emoticon(filename, emoticon)
  hash = load_library(filename)
  eng_vers = ""
  found = false
  
  while found!
    hash.each{|(key_out, val_out)|
      if(val_out[:japanese] == emoticon)
        eng_vers = val_out[:english]
        found = true 
      end 
    }
  end 
  eng_vers
  
  
 
  
end

def get_english_meaning
  # code goes here
end