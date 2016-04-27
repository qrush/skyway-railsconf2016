class Setlist < ActiveRecord::Base
  belongs_to :show
  has_many :slots, -> { order position: :asc }, dependent: :destroy
  has_many :songs, through: :slots

  def cache_key
    [super, *slots.map(&:cache_key)].join("-")
  end

  def without_notes
    [name, *slots.map(&:name)].join("\n")
  end

  def to_s(options = {})
    if options[:without_notes]
      setlist_without_notes
    else
      setlist_with_notes
    end
  end

  private
    def setlist_without_notes
      "#{name}: #{song_names(without_notes: true).join(' ')}"
    end

    def setlist_with_notes
      [name, *song_names].join("\n")
    end

    def song_names(options = {})
      slots.map { |slot| slot.to_s(options) }
    end
end
