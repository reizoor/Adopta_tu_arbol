class PagesController < ApplicationController
    def landpage
        if params[:code]
            get_code
        end
    end
    def choice_view
        @tree = Tree.find_by(code: params[:code])
        if params[:code] and params[:password]
           get_choice
        end
    end
    private 
    def get_code
        # @search = 
        # vali= 
        if Tree.find_by(code: params[:code]).is_a?(Tree)
            redirect_to choice_view_path(code: params[:code])
        else
            redirect_back(fallback_location: root_path, alert: 'Código de árbol incorrecto, intente con otro código')
        end
    end
    def get_choice

        if params[:password]
            if @tree.password == params[:password]
                redirect_to edit_tree_path(@tree)
            else
                redirect_back(fallback_location: choice_view_path, alert: 'Contraseña de acceso a edición de árbol incorrecto, intente con otro contraseña')
            end
        else
            redirect_to tree_path(vali)
        end
    end

    
end
