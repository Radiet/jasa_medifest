require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/png_outputter'

class Inventory < ApplicationRecord
  belongs_to :division
  delegate :name, to: :division, prefix: true, allow_nil: true

  def get_barcode
    file_path = Rails.root.join('public', barcode_name)
    barcode = Barby::Code128B.new("#{no_inventory}")
    blob = Barby::PngOutputter.new(barcode).to_png #Raw PNG data
    File.open(file_path, 'wb'){|f| f.write blob }
    barcode_name
  end

  def barcode_name
    "barcode-#{no_inventory}.png"
  end
end
