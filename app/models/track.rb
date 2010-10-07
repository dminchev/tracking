class Track < ActiveRecord::Base
  belongs_to :user
  has_attached_file :file
  validates_presence_of :name, :user_id
  validates_attachment_presence :file

  def parse_gpx
    doc = Nokogiri::XML(open(file.path))
    trackpoints = doc.xpath('//xmlns:trkpt')
    points = []
    trackpoints.each do |trkpt|
      points << [trkpt.xpath('@lat').to_s.to_f, trkpt.xpath('@lon').to_s.to_f]
    end
    points
  end
end
