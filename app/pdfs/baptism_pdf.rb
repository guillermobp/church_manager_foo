class BaptismPdf < Prawn::Document

    def initialize(baptism)
        super(top_margin: 100)
        header(baptism.baptised.name_for_display)
        content(baptism)
    end

    def header(baptised_name)
        font_families.update('FiraSans' => {
            normal: 'app/assets/fonts/FiraSans-Regular.ttf',
            italic: 'app/assets/fonts/FiraSans-Italic.ttf',
            bold: 'app/assets/fonts/FiraSans-Bold.ttf',
            bold_italic: 'app/assets/fonts/FiraSans-BoldItalic.ttf',
        })
        font_size(36) do
            font 'FiraSans', style: :italic
            text 'Certificado de Bautismo', align: :center
        end
    end

    def content(baptism)
        font 'FiraSans', size: 16, style: :italic
        default_leading 7
        move_down 100
        span(400, position: :center) do
            text "En la iglesia parroquial #{baptism.church_name} el #{baptism.date.strftime('%d de %B de %Y')} " +
                 "bautizó y puso óleo y crisma #{baptism.priest_name_for_display} " +
                 "a #{baptism.baptised_name_for_display}, que nació en " +
                 "#{baptism.baptised_birth_commune_name} el #{baptism.baptised_birth_date.strftime('%d de %B de %Y')} " +
                 "R.U.N.: #{baptism.baptised_nin_for_display} " +
                 "hijo de #{baptism.father_name_for_display} " +
                 "y de #{baptism.mother_name_for_display} " +
                 "Padrinos: #{baptism.godfather_name_for_display} y #{baptism.godmother_name_for_display}."
        end
    end

end
