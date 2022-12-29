class Listado < ApplicationRecord
    before_validation :downcase_fields

    validates :codigo, :presence => true,
    :uniqueness => true,
    format: { with: /^CD\d{4}$/, :multiline => true }
    validates :precio, :numericality => { :greater_than => 0, message: " no puede estar en blanco, ni ser negativo" }
    validates :marca, :presence => true
    # inclusion: { in: %w(sony toshiba lenovo) }
    validates :modelo, :presence => true

    def downcase_fields
        self.marca.downcase!
    end
end
