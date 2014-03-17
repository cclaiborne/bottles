# TODO: Make tests pass
class BottlesSong
  def initialize
  end

  def verse(number)
    bottle1, bottle2 = "bottles", "bottles"
    dry_1, dry_2 = "of beer on the wall", "of beer.\nTake one down and pass it around,"
    verse_words = "#{number} #{bottle1} #{dry_1}, #{number} #{bottle1} #{dry_2} #{number-1} #{bottle2} #{dry_1}.\n"
      if number == 2
        bottle2 = "bottle"
        verse_words = "#{number} #{bottle1} #{dry_1}, #{number} #{bottle1} #{dry_2} #{number-1} #{bottle2} #{dry_1}.\n"
      elsif number == 1
        bottle1 = "bottle"
        verse_words = "#{number} #{bottle1} #{dry_1}, #{number} #{bottle1} of beer.\nTake it down and pass it around, no more bottles #{dry_1}.\n"
      elsif number == 0
        return "No more bottles #{dry_1}, no more bottles of beer.\nGo to the store and buy some more, 99 bottles #{dry_1}.\n"
      else
        return verse_words
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


