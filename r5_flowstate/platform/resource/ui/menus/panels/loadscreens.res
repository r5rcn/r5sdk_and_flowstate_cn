"resource/ui/menus/panels/loadscreens.res"
{
	PanelFrame
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					%100
		tall					%100
		labelText				""
		bgcolor_override		"70 70 70 255"
		visible					0
		paintbackground			1
	}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Header
    {
        ControlName             RuiPanel
        xpos                    194
        ypos                    50
        zpos                    4
        wide                    550
        tall                    33
        rui                     "ui/character_items_header.rpak"
        visible                 0
    }

    LoadscreenList
    {
        ControlName				GridButtonListPanel
        xpos                    194
        ypos                    96
        columns                 1
        rows                    12
        buttonSpacing           6
        scrollbarSpacing        6
        scrollbarOnLeft         0
        visible					1
        tabPosition             1
        selectOnDpadNav         1

        ButtonSettings
        {
            rui                     "ui/generic_item_button.rpak"
            clipRui                 1
            wide					350
            tall					50
            cursorVelocityModifier  0.7
            rightClickEvents		1
			doubleClickEvents       1
            sound_focus             "UI_Menu_Focus_Small"
            sound_accept            ""
            sound_deny              ""
        }
    }

    LoadscreenImage
    {
        ControlName             RuiPanel
        xpos					600
        ypos					70
        wide                    1022
        tall                    575
        visible                 0
        rui                     "ui/custom_loadscreen_image.rpak"
    }

	LoadscreenPreviewBoxOverlay
	{
		ControlName				RuiPanel
		xpos				    0
        ypos				    0
        zpos                    91
        wide                    1022
        tall                    575
		visible				    1
        rui					    "ui/loadscreen_preview_box_overlay.rpak"

        pin_to_sibling			LoadscreenImage
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_LEFT
	}

    DescriptionText
    {
        ControlName				RuiPanel
        ypos					0
        wide					1022
        tall					160
		visible				    1
        rui					    "ui/loadscreen_preview_text.rpak"

        pin_to_sibling			LoadscreenImage
        pin_corner_to_sibling	TOP
        pin_to_sibling_corner	BOTTOM
    }
}