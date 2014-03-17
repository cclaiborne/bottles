# TODO: Make tests pass
class BottlesSong
  def initialize
  end

  def verse(number)
    bottle1, bottle2 = "bottles", "bottles"
    verse_words = "#{number} #{bottle1} of beer on the wall, #{number} #{bottle1} of beer.\nTake one down and pass it around, #{number-1} #{bottle2} of beer on the wall.\n"
      if number == 2
        bottle2 = "bottle"
        verse_words = "#{number} #{bottle1} of beer on the wall, #{number} #{bottle1} of beer.\nTake one down and pass it around, #{number-1} #{bottle2} of beer on the wall.\n"
      elsif number == 1
        bottle1 = "bottle"
        verse_words = "#{number} #{bottle1} of beer on the wall, #{number} #{bottle1} of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
      elsif number == 0
        verse_words = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
      else
        verse_words = "#{number} #{bottle1} of beer on the wall, #{number} #{bottle1} of beer.\nTake one down and pass it around, #{number-1} #{bottle2} of beer on the wall.\n"
      end
      return verse_words
  end


  def verses(num1, num2)
    verses_words = ""
    i = num1
    while i >= num2
      verses_words << verse(i) + "\n"
      i = i - 1
    end
    #remove extra \n at the end of string
    verses_words = verses_words.slice(0, verses_words.length-1)
    return verses_words
  end

  def sing
    return verses(99, 0)
  end

end


  # a = BottlesSong.new
  #   puts a.verses(99, 0)


