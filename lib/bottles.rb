class Bottles

  def song
    verses(99, 0)
  end

  def verses(a, b)
    a.downto(b).map { |n| verse(n) }.join("\n")
  end

  def verse(n)
    <<-VERSE
#{line_1(n)}
#{line_2(n)}
VERSE
  end

  def line_1(n)
    "#{bottles(n).capitalize} of beer on the wall, #{bottles(n)} of beer."
  end

  def line_2(n)
    if n == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take #{pronoun(n)} down and pass it around, #{bottles(n - 1)} of beer on the wall."
    end
  end

  def bottles(n)
    pluralize("bottle", n)
  end

  def pronoun(n)
    return "it" if n == 1
    "one"
  end

  private

  def pluralize(singular, n)
    return "#{n} #{singular}" if n == 1
    return "no more #{singular}s" if n == 0
    "#{n} #{singular}s"
  end
end
