class BaptismPdf < Prawn::Document

    def initialize(baptism)
        super()
        header
    end

    def header
        text 'Baptism PDF'
    end

end
