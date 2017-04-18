class String
  define_method(:scrabble) do
  total = 0
  split = self.split("")
  scrabble_score = Hash.new()
  scrabble_score.store("a",1)
  scrabble_score.store("e",1)
  scrabble_score.store("i",1)
  scrabble_score.store("o",1)
  scrabble_score.store("u",1)
  scrabble_score.store("l",1)
  scrabble_score.store("n",1)
  scrabble_score.store("r",1)
  scrabble_score.store("s",1)
  scrabble_score.store("t",1)
  scrabble_score.store("d",2)
  scrabble_score.store("g",2)
  scrabble_score.store("b",3)
  scrabble_score.store("c",3)
  scrabble_score.store("m",3)
  scrabble_score.store("p",3)
  scrabble_score.store("f",4)
  scrabble_score.store("h",4)
  scrabble_score.store("v",4)
  scrabble_score.store("w",4)
  scrabble_score.store("y",4)
  scrabble_score.store("k",5)
  scrabble_score.store("j",8)
  scrabble_score.store("x",8)
  scrabble_score.store("q",10)
  scrabble_score.store("z",10)

  split.each() do |letter|
  if scrabble_score.fetch(letter).==1
    total = total + 1
  end
  if scrabble_score.fetch(letter).==2
    total = total + 2
  end
  if scrabble_score.fetch(letter).==3
    total = total + 3
  end
  if scrabble_score.fetch(letter).==4
    total = total + 4
  end
  if scrabble_score.fetch(letter).==5
    total = total + 5
  end
  if scrabble_score.fetch(letter).==8
    total = total + 8
  end
  if scrabble_score.fetch(letter).==10
    total = total + 10
  end
    end
    total
  end
end
