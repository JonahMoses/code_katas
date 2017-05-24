class Pangram

  def self.pangram?(phrase)
    letters = phrase.downcase.split("").select { |char| ('a'..'z').include?(char) }
    ('a'..'z').all? { |char| letters.include?(char) }

    # phrase.downcase.split("").select { |char| ('a'..'z').include?(char) }.uniq.size == 26
  end

end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
