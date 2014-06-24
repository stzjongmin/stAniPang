package com.stintern.anipang.utils
{
    public class Resources
    {
		/** Scene name */
		public static var SCENE_WORLD_MAP:String = "SCENE_WORLD_MAP";
		public static var SCENE_MAIN_GAME:String = "SCENE_MAIN_GAME";
		
        /** Layer name */
        public static var LAYER_MAIN_GAME:String = "LAYER_MAIN_GAME";
        public static var LAYER_PANEL:String = "LAYER_COMPONENT";
		public static var LAYER_WORLD_MAP:String = "LAYER_WORLD_MAP";
        public static var LAYER_STAGE_INFO:String = "LAYER_STAGE_INFO";

        
        
        /** Directory Path */
        public static var PATH_LEVEL_XML:String = "res/dat/stage/";
		public static var PATH_DIRECTORY_WORLD_MAP:String = "res/img/worldmaps/";
		
        
		/** Resource Name */
        public static var WORLD_MAP_1_SPRITE_SHEET:String = "worldmap_1";;
		
        
        /** Block Sprite Sheet */
        public static var PATH_DIRECTORY_BLOCK:String = "res/img/blocks/";
        public static var ATALS_NAME_BLOCK:String = "block_sprite_sheet"
        public static var PATH_IMAGE_BLOCK_SPRITE_SHEET:String = "res/img/blocks/block_sprite_sheet";
        public static var PATH_XML_BLOCK_SPRITE_SHEET:String = "res/img/blocks/block_sprite_sheet.xml";
        
        
        /** Stage Info Sprite Sheet */
        public static var PATH_DIRECTORY_STAGE_INFO:String = "res/img/stageInfo/";
        public static var ATALS_NAME_STAGE_INFO:String = "stageInfo"
        public static var PATH_STAGE_INFO_SPRITE_SHEET:String = "res/img/stageInfo/stageInfo.png";
        public static var PATH_XML_STAGE_INFO_SHEET:String = "res/img/stageInfo/stageInfo.xml";
        
        
        /** Game Panel Sprite Sheet */
        public static var PATH_DIRECTORY_PANEL:String = "res/img/panel/";
        public static var ATALS_NAME_PANEL:String = "panel"
        public static var PATH_PANEL_SPRITE_SHEET:String = "res/img/panel/panel.png";
        public static var PATH_XML_PANEL_SHEET:String = "res/img/panel/panel.xml";
		
		/** World map */
		public static var PATH_IMAGE_WORLD_MAP_1:String = "res/img/worldmaps/worldmap_1.png";
		public static var PATH_XML_WORLD_MAP_1:String = "res/img/worldmaps/worldmap_1.xml";
		
		public static var WORLD_MAP_NAME:String = "worldmap_";
		
		
		/** Mission Clear */
		public static var PATH_IMAGE_MISSION_CLEAR:String = "res/img/missionclear/missionclear.png";
		public static var PATH_IMAGE_MISSION_CLEAR_TEXTURE_NAME:String = "missionclear";		
		
		public static var PATH_IMAGE_MISSION_FAILED:String = "res/img/missionclear/missionFailed.png";
		public static var PATH_IMAGE_MISSION_FAILED_TEXTURE_NAME:String = "missionFailed";
		
        
        /** XML */
        
        // XML Element
        public static var ELEMENT_NAME_OF_ROOT:String = "levelInfo";
        public static var ELEMENT_NAME_OF_BOARD_INFO:String = "board";
        public static var ELEMENT_NAME_OF_MOVE_LIMIT:String = "move_limit";
        public static var ELEMENT_NAME_OF_MISSION:String = "misson";
		public static var ELEMENT_NAME_OF_ROW_COUNT:String = "row";
		public static var ELEMENT_NAME_OF_COL_COUNT:String = "col";
        
        // Mission Property        
        public static var MISSION_PROPERTY_SCORE:String = "score";
        
		
		// User Information
		public static var XML_USER_INFO:String = "res/dat/userinfo.xml";
		
		// World map information
		public static var XML_WORLD_MAP_INFO:String = "res/img/worldmaps/worldmapInfo.xml";
        
        
        /** Stage Mission */
        public static var MISSION_ICE:String = "동물 친구들을 위해\n모든 빙판을 제거해주세요!";
        public static var MISSION_SCORE_HEAD:String = "동물 친구들을 위해\n";
        public static var MISSION_SCORE_TAIL:String = "점을 달성해주세요!";

        public static var MISSION_TYPE_SCORE:String = "score";
        public static var MISSION_TYPE_ICE:String = "ice";
        
        
		/** Board Types */
		public static var BOARD_TYPE_ANIMAL:uint = 0;

        /** Block Types */

        public static var BLOCK_TYPE_START:uint = 1;

        public static var BLOCK_TYPE_ARI:uint = 1;
        public static var BLOCK_TYPE_MICKY:uint = 2;
        public static var BLOCK_TYPE_LUCY:uint = 3;
        public static var BLOCK_TYPE_BLUE:uint = 4;
        public static var BLOCK_TYPE_PINKY:uint = 5;
        public static var BLOCK_TYPE_ANI:uint = 6;
        public static var BLOCK_TYPE_MONGYI:uint = 7;

        public static var BLOCK_TYPE_END:uint = 7;
        public static var BLOCK_TYPE_COUNT:uint = BLOCK_TYPE_END - BLOCK_TYPE_START + 1;

        /** Special Blocks Types */

        // Utilities
        public static var BLOCK_TYPE_PADDING:uint = 10;
        public static var BLOCK_TYPE_GOGGLE_INDEX:uint = 0;
        public static var BLOCK_TYPE_LR_ARROW_INDEX:uint = 1;
        public static var BLOCK_TYPE_TB_ARROW_INDEX:uint = 2;

        // Special block types
        public static var BLOCK_TYPE_SPECIAL_BLOCK_START:uint = BLOCK_TYPE_START * BLOCK_TYPE_PADDING;

        public static var BLOCK_TYPE_ARI_HEART:uint = BLOCK_TYPE_ARI * BLOCK_TYPE_PADDING;
        public static var BLOCK_TYPE_ARI_LR_ARROW:uint = BLOCK_TYPE_ARI * BLOCK_TYPE_PADDING + 1;
        public static var BLOCK_TYPE_ARI_TB_ARROW:uint = BLOCK_TYPE_ARI * BLOCK_TYPE_PADDING + 2;

        public static var BLOCK_TYPE_MICKY_HEART:uint = BLOCK_TYPE_MICKY * BLOCK_TYPE_PADDING;
        public static var BLOCK_TYPE_MICKY_LR_ARROW:uint = BLOCK_TYPE_MICKY * BLOCK_TYPE_PADDING + 1;
        public static var BLOCK_TYPE_MICKY_TB_ARROW:uint = BLOCK_TYPE_MICKY * BLOCK_TYPE_PADDING + 2;

        public static var BLOCK_TYPE_LUCY_HEART:uint = BLOCK_TYPE_LUCY * BLOCK_TYPE_PADDING;
        public static var BLOCK_TYPE_LUCY_LR_ARROW:uint = BLOCK_TYPE_LUCY * BLOCK_TYPE_PADDING + 1;
        public static var BLOCK_TYPE_LUCY_TB_ARROW:uint = BLOCK_TYPE_LUCY * BLOCK_TYPE_PADDING + 2;

        public static var BLOCK_TYPE_BLUE_HEART:uint = BLOCK_TYPE_BLUE * BLOCK_TYPE_PADDING ;
        public static var BLOCK_TYPE_BLUE_LR_ARROW:uint = BLOCK_TYPE_BLUE * BLOCK_TYPE_PADDING + 1;
        public static var BLOCK_TYPE_BLUE_TB_ARROW:uint = BLOCK_TYPE_BLUE * BLOCK_TYPE_PADDING + 2;

        public static var BLOCK_TYPE_PINKY_HEART:uint = BLOCK_TYPE_PINKY * BLOCK_TYPE_PADDING;
        public static var BLOCK_TYPE_PINKY_LR_ARROW:uint = BLOCK_TYPE_PINKY * BLOCK_TYPE_PADDING + 1;
        public static var BLOCK_TYPE_PINKY_TB_ARROW:uint = BLOCK_TYPE_PINKY * BLOCK_TYPE_PADDING + 2;

        public static var BLOCK_TYPE_ANI_HEART:uint = BLOCK_TYPE_ANI * BLOCK_TYPE_PADDING;
        public static var BLOCK_TYPE_ANI_LR_ARROW:uint = BLOCK_TYPE_ANI * BLOCK_TYPE_PADDING + 1;
        public static var BLOCK_TYPE_ANI_TB_ARROW:uint = BLOCK_TYPE_ANI * BLOCK_TYPE_PADDING + 2;

        public static var BLOCK_TYPE_MONGYI_HEART:uint = BLOCK_TYPE_MONGYI * BLOCK_TYPE_PADDING;
        public static var BLOCK_TYPE_MONGYI_LR_ARROW:uint = BLOCK_TYPE_MONGYI * BLOCK_TYPE_PADDING + 1;
        public static var BLOCK_TYPE_MONGYI_TB_ARROW:uint = BLOCK_TYPE_MONGYI * BLOCK_TYPE_PADDING + 2;

        public static var BLOCK_TYPE_GHOST:uint = 90;

        public static var BLOCK_TYPE_SPECIAL_BLOCK_END:uint = BLOCK_TYPE_GHOST;;

        // Other Blocks
        public static var BLOCK_TYPE_BOX:uint = 91;
        public static var BLOCK_TYPE_BOX_CROSS_HALF:uint = 92;
        public static var BLOCK_TYPE_BOX_CROSS:uint = 93;

        public static var BLOCK_TYPE_ICE:uint = 94;

        
        public static var BLOCK_TYPE_HINT:uint = 95;
        
        
        /** Texture Name */
        public static var TEXTURE_NAME_ANI:String = "ani";
        public static var TEXTURE_NAME_ANI_HEART:String = "ani_heart";
        public static var TEXTURE_NAME_ANI_LR_ARROW:String = "ani_LR_arrow";
        public static var TEXTURE_NAME_ANI_TB_ARROW:String = "ani_TB_arrow";
        
        public static var TEXTURE_NAME_ARI:String = "ari";
        public static var TEXTURE_NAME_ARI_HEART:String = "ari_heart";
        public static var TEXTURE_NAME_ARI_LR_ARROW:String = "ari_LR_arrow";
        public static var TEXTURE_NAME_ARI_TB_ARROW:String = "ari_TB_arrow";
        
        public static var TEXTURE_NAME_BLUE:String = "blue";
        public static var TEXTURE_NAME_BLUE_HEART:String = "blue_heart";
        public static var TEXTURE_NAME_BLUE_LR_ARROW:String = "blue_LR_arrow";
        public static var TEXTURE_NAME_BLUE_TB_ARROW:String = "blue_TB_arrow";
        
        public static var TEXTURE_NAME_LUCY:String = "lucy";
        public static var TEXTURE_NAME_LUCY_HEART:String = "lucy_heart";
        public static var TEXTURE_NAME_LUCY_LR_ARROW:String = "lucy_LR_arrow";
        public static var TEXTURE_NAME_LUCY_TB_ARROW:String = "lucy_TB_arrow";
        
        public static var TEXTURE_NAME_MICKY:String = "micky";
        public static var TEXTURE_NAME_MICKY_HEART:String = "micky_heart";
        public static var TEXTURE_NAME_MICKY_LR_ARROW:String = "micky_LR_arrow";
        public static var TEXTURE_NAME_MICKY_TB_ARROW:String = "micky_TB_arrow";
        
        public static var TEXTURE_NAME_MONGYI:String = "mongyi";
        public static var TEXTURE_NAME_MONGYI_HEART:String = "mongyi_heart";
        public static var TEXTURE_NAME_MONGYI_LR_ARROW:String = "mongyi_LR_arrow";
        public static var TEXTURE_NAME_MONGYI_TB_ARROW:String = "mongyi_TB_arrow";
        
        public static var TEXTURE_NAME_PINKY:String = "pinky";
        public static var TEXTURE_NAME_PINKY_HEART:String = "pinky_heart";
        public static var TEXTURE_NAME_PINKY_LR_ARROW:String = "pinky_LR_arrow";
        public static var TEXTURE_NAME_PINKY_TB_ARROW:String = "pinky_TB_arrow";
        
        public static var TEXTURE_NAME_BOX:String = "box";
        public static var TEXTURE_NAME_BOX_CROSS:String = "box_cross";
        public static var TEXTURE_NAME_HEART:String = "heart";
        public static var TEXTURE_NAME_ICE:String = "ice";
        public static var TEXTURE_NAME_PANG:String = "pang";
        public static var TEXTURE_NAME_STAR:String = "star";
        
        public static var TEXTURE_NAME_HINT:String = "bubble";
		
		
		/** World Map */
		public static var WORLD_MAP_BACKGROUND_NAME:String = "bkg";
        public static var STAGE_INFO_BACKGROUND_NAME:String = "bkg";
        public static var STAGE_INFO_START_BUTTON:String = "startButton";
        public static var STAGE_INFO_START_BUTTON_CLCIEKD:String = "startButton_clicked";
        public static var STAGE_INFO_CLOSE_BUTTON:String = "closeButton";
        public static var STAGE_INFO_CLOSE_BUTTON_CLCIEKD:String = "closeButton_clicked";
        public static var STAGE_INFO_STAR:String = "star_";
        public static var STAGE_INFO_STAR_LEFT:String = STAGE_INFO_STAR + "1";
        public static var STAGE_INFO_STAR_MIDDLE:String = STAGE_INFO_STAR + "2";
        public static var STAGE_INFO_STAR_RIGHT:String = STAGE_INFO_STAR + "3";
		
		/** Game Panel */
		public static var GAME_PANEL_MISSION:String = "mission";
        public static var GAME_PANEL_CLICK_PANG_BUTTON:String = "clickpang";
        public static var GAME_PANEL_GOGGLE_PANG_BUTTON:String = "gogglepang";
        public static var GAME_PANEL_CHANGE_PANG_BUTTON:String = "changepang";
        public static var GAME_PANEL_PAUSE_BUTTON:String = "closeButton";
        public static var GAME_PANEL_PAUSE_BUTTON_CLICKED:String = "closeButton_clicked";
		
            
        /** Game Enviroment */

        public static var BOARD_ROW_COUNT:uint = 8;
        public static var BOARD_COL_COUNT:uint = 8;
        
        public static var SCREEN_WIDTH:uint = 768;
        public static var SCREEN_HEIGHT:uint = 1024; 
		
		public static var PADDING_TOP:uint = 200;
        
        public static var LEFT_RIGHT_PADDING:uint = 20; 

    }
}