package com.stintern.anipang.maingamescene.layer
{
    import com.stintern.anipang.maingamescene.LevelManager;
    import com.stintern.anipang.maingamescene.block.BlockManager;
    import com.stintern.anipang.maingamescene.board.GameBoard;
    import com.stintern.anipang.utils.AssetLoader;
    import com.stintern.anipang.utils.Resources;
    import com.stintern.anipang.utils.UILoader;
    
    import flash.text.Font;
    
    import starling.core.Starling;
    import starling.display.DisplayObject;
    import starling.display.Image;
    import starling.display.Sprite;
    import starling.events.Event;
    import starling.events.Touch;
    import starling.events.TouchEvent;
    import starling.events.TouchPhase;
    import starling.text.TextField;
    import starling.textures.Texture;
    import starling.utils.HAlign;
    
    public class PanelLayer extends Sprite
    {
        [Embed(source = "../../HUHappy.ttf", fontName = "HUHappy",
			        mimeType = "application/x-font", fontWeight="Bold",
			        fontStyle="Bold", advancedAntiAliasing = "true",
			        embedAsCFF="false")]
        private static const _HUHappyFont:Class;
        private static var _font:Font;
        
        private var _isTouched:Boolean;         
        private var _clickedButton:DisplayObject;
        
        private var _container:Sprite;
		private var _currentScore:uint;
		private var _missionLeft:int;
		
		private var _tfdLeftSteps:TextField;
		private var _tfdCurrentScore:TextField;
		private var _tfdMission:TextField;
        
        public function PanelLayer()
        {
            this.name = Resources.LAYER_COMPONENT;
            
            addEventListener(Event.ADDED_TO_STAGE, init);
        }
        
        private function init( event:Event ):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, init);
            
            _container = new Sprite();
            addChild(_container);
            
            AssetLoader.instance.loadDirectory(onComplete, null, Resources.PATH_DIRECTORY_PANEL);
            function onComplete():void
            {
                // 현재 스테이지 레벨을 읽음
                var stageLevel:uint = LevelManager.instance.currentStageLevel;
                
                LevelManager.instance.loadStageInfo(stageLevel);
                
                var paths:Array = new Array(
                    Resources.PATH_PANEL_SPRITE_SHEET, 
                    Resources.PATH_XML_PANEL_SHEET);
                
                UILoader.instance.loadUISheet(onLoadUI, null, paths);
            }
        }
        
        private function onLoadUI():void
        {
            // 스테이지 정보 배경 세팅
            UILoader.instance.loadAll(Resources.ATALS_NAME_PANEL, _container, onTouch, 0, 0);
            
			// 남은 이동 텍스트 필드 초기화
			initLeftStepCount();
			
			// 현재 점수 텍스트필드 초기화
			initCurrentScore();
			
			// 미션 정보필드 초기화
			initMissionInfo();
        }
        
		private function initLeftStepCount():void
		{
			_font = new _HUHappyFont;
			
			var texture:Texture = UILoader.instance.getTexture(Resources.ATALS_NAME_PANEL, Resources.GAME_PANEL_MISSION);
			var leftStep:uint = LevelManager.instance.stageInfo.moveLimit;
			
			_tfdLeftSteps = new TextField(200, 100, leftStep.toString(), _font.fontName, 30, 0x000000);
			_tfdLeftSteps.fontSize = 45;
			_tfdLeftSteps.hAlign = HAlign.CENTER;
			_tfdLeftSteps.x = Starling.current.stage.stageWidth * 0.5 - texture.width * 0.66;
			_tfdLeftSteps.y = Starling.current.stage.stageHeight * 0.04;
			
			_container.addChild(_tfdLeftSteps);
		}
		
		public function updateLeftStep(leftStep:int):void
		{
			_tfdLeftSteps.text = leftStep.toString();
		}
			
		
		private function initCurrentScore():void
		{
			_tfdCurrentScore = new TextField(200, 100, "0", _font.fontName, 30, 0x000000);
			_tfdCurrentScore.fontSize = 45;
			_tfdCurrentScore.hAlign = HAlign.LEFT;
			_tfdCurrentScore.x = Starling.current.stage.stageWidth * 0.27;
			_tfdCurrentScore.y = Starling.current.stage.stageHeight * 0.04;
			
			_container.addChild(_tfdCurrentScore);
		}
		
		public function updateCurrentScore():void
		{
			_currentScore += 200;
			_tfdCurrentScore.text = _currentScore.toString();
		}
		
		private function initMissionInfo():void
		{
			initMissionTfd();
			
			var missionType:String = LevelManager.instance.stageInfo.missionType;
			var mission:uint = LevelManager.instance.stageInfo.mission;
			
			switch(missionType)
			{
				case Resources.MISSION_TYPE_SCORE:
					_tfdMission.text = Resources.MISSION_SCORE_HEAD + mission.toString() + Resources.MISSION_SCORE_TAIL;
					_tfdMission.fontSize = 20;
					_tfdMission.x = Starling.current.stage.stageWidth * 0.5;
					_tfdMission.y = Starling.current.stage.stageHeight * 0.005;
					break;
				
				case Resources.MISSION_TYPE_ICE:
					var texture:Texture = BlockManager.instance.blockPainter.getTextureByType(GameBoard.TYPE_OF_CELL_ICE);
					var image:Image = new Image(texture);
					image.x = Starling.current.stage.stageWidth * 0.54;
					image.y = Starling.current.stage.stageHeight * 0.04;
					_container.addChild(image);
					
					_tfdMission.text = "x" + mission.toString();
					_tfdMission.fontSize = 55;
					_tfdMission.x = Starling.current.stage.stageWidth * 0.65;
					_tfdMission.y = Starling.current.stage.stageHeight * 0.0001;
					
					_missionLeft = mission;
					
					break;
			}
		}
		
		private function initMissionTfd():void
		{
			_tfdMission = new TextField(300, 200, "", _font.fontName, 30, 0x000000);
			_tfdMission.hAlign = HAlign.LEFT;
			
			_container.addChild(_tfdMission);
		}
		
		public function updateLeftIce():void
		{
			--_missionLeft;
			_tfdMission.text = "x" + _missionLeft.toString();
		}
		
        public function onTouch( event:TouchEvent ):void
        {
            var touch:Touch = event.getTouch(event.target as DisplayObject);
            if(touch)
            {
                switch(touch.phase)
                {
                    case TouchPhase.BEGAN :
                        _isTouched = true;
                        
                        break;
                    
                    case TouchPhase.MOVED : 
                        if( !_isTouched )
                            return;
                        
                        break;
                    
                    case TouchPhase.ENDED :
                        _isTouched = false;
                        
                        
                        break;
                }
            }
        }
        
    }
}