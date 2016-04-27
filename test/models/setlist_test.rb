require 'test_helper'

class SetlistTest < ActiveSupport::TestCase
  setup do
    song1 = Song.create!(name: "Origami")
    song2 = Song.create!(name: "YYZ")

    slot1 = Slot.create!(song: song1, position: 1, transition: true)
    slot2 = Slot.create!(song: song2, position: 2, notes: ["With ending"])

    @setlist = Setlist.create!(slots: [slot1, slot2], name: "Set I", position: 1, show: shows(:first))
  end

  test "to_s with notes" do
    assert_equal "Set I\nOrigami >\nYYZ *", @setlist.to_s
  end

  test "to_s without notes" do
    assert_equal "Set I: Origami > YYZ", @setlist.to_s(without_notes: true)
  end
end
