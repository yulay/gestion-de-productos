module ApplicationHelper
    #Es una funcion que maneja el titulo de las paginas
    def full_title(page_title = '')
        base_title = 'Primerproyect'
        if page_title.empty?
            base_title
        else
            base_title + " | " + page_title
        end
    end
end
