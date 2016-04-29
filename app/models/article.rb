class Article < ActiveRecord::Base
  validates :title, :body, :published_at, presence: true

  scope :undrafted, -> { where(draft: false) }
  scope :published, -> { order(published_at: :desc) }

  def summary
    to_html.scan(%r{<p>(.*)</p>}).flatten.first
  end

  def to_html
    @to_html ||= Kramdown::Document.new(body).to_html
  end

  def to_param
    "#{id}-#{title.downcase.tr(' ', '-')}"
  end
end
