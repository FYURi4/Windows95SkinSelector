if CLIENT then
    function ModelsChenger()
        
        local ModelsLayer = vgui.Create("DFrame")
        ModelsLayer:SetPos(100, 100) 
        ModelsLayer:SetSize(870, 622)
        ModelsLayer:SetTitle("")
        ModelsLayer:ShowCloseButton(false)
        ModelsLayer:MakePopup()
        ModelsLayer:SetKeyboardInputEnabled(false)
        ModelsLayer:SetPaintShadow(true)
        ModelsLayer.Paint = function(self,w,h)
            draw.RoundedBox(0, 0, 0, w, h, Color(203,203,203,255))
        end
        
        local Models_base = vgui.Create("DImage", ModelsLayer)
        Models_base:SetPos(0, 0) -- Позиция изображения
        Models_base:SetSize(870, 622) -- Размер изображения
        Models_base:SetImage("lua/autorun/image_windows95/Models_base.png")

        local Base_button_close = vgui.Create("DImageButton", ModelsLayer)
        Base_button_close:SetPos(838.73, 8.78) -- Позиция кнопки
        Base_button_close:SetSize(22.27, 22.27) -- Размер кнопки
        Base_button_close:SetImage("lua/autorun/image_windows95/Base_button_close.png")
        Base_button_close.DoClick = function()
            ModelsLayer:Close()
        end

        local Base_button_question = vgui.Create("DImageButton", ModelsLayer)
        Base_button_question:SetPos(812, 8.78) -- Позиция кнопки
        Base_button_question:SetSize(22.27, 22.27) -- Размер кнопки
        Base_button_question:SetImage("lua/autorun/image_windows95/Base_button_question.png")
        Base_button_question.DoClick = function()
            ModelsLayer:Close()
        end

        local Base_skin_preview = vgui.Create("DImage", ModelsLayer)
        Base_skin_preview:SetPos(63, 43) -- Позиция изображения
        Base_skin_preview:SetSize(282, 411) -- Размер изображения
        Base_skin_preview:SetImage("lua/autorun/image_windows95/Base_skin_preview.png")

        local Base_skin_information = vgui.Create("DImage", ModelsLayer)
        Base_skin_information:SetPos(63, 460) -- Позиция изображения
        Base_skin_information:SetSize(282, 150) -- Размер изображения
        Base_skin_information:SetImage("lua/autorun/image_windows95/Base_skin_information.png")

        local Base_model_skin_search = vgui.Create("DImage", ModelsLayer)
        Base_model_skin_search:SetPos(351, 61) -- Позиция изображения
        Base_model_skin_search:SetSize(513, 511) -- Размер изображения
        Base_model_skin_search:SetImage("lua/autorun/image_windows95/Base_model_skin_search.png")

        local button = {
            [1] = { image = 'lua/autorun/image_windows95/Button_models.png', sizeX = 56, sizeY = 19, activate = true },
            [2] = { image = 'lua/autorun/image_windows95/Button_colors.png', sizeX = 56, sizeY = 19, activate = false },
            [3] = { image = 'lua/autorun/image_windows95/Button_groups.png', sizeX = 56, sizeY = 19, activate = false },
            [4] = { image = 'lua/autorun/image_windows95/Button_favorites.png', sizeX = 68, sizeY = 19, activate = false },
            [5] = { image = 'lua/autorun/image_windows95/Button_settings.png', sizeX = 69, sizeY = 19, activate = false },
        }
        
        local SetPosX = 351
        
        for _, v in SortedPairs(button) do
            local Base_button_group = vgui.Create("DImageButton", ModelsLayer)
            Base_button_group:SetPos(SetPosX, 43)
            Base_button_group:SetSize(v.sizeX, v.sizeY)
            Base_button_group:SetImage(v.image)
        
            SetPosX = SetPosX + v.sizeX + 1
        end
    end
        

    concommand.Add("ModelChenger", ModelsChenger)
end 
