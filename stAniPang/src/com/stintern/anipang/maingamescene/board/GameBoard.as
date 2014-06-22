package com.stintern.anipang.maingamescene.board
{
    import com.stintern.anipang.maingamescene.LevelManager;
    import com.stintern.anipang.maingamescene.StageInfo;
    import com.stintern.anipang.maingamescene.block.Block;
    import com.stintern.anipang.maingamescene.block.BlockPainter;
    import com.stintern.anipang.maingamescene.block.algorithm.BlockLocater;
    import com.stintern.anipang.utils.Resources;
    
    import flash.utils.Dictionary;

    public class GameBoard
    {
        // 싱글톤 관련
        private static var _instance:GameBoard;
        private static var _creatingSingleton:Boolean = false;
        
        private var _stageInfo:StageInfo; 
        
        public static var TYPE_OF_CELL_NONE:uint = 0;      // 동물만 있는 공간

        public static var TYPE_OF_CELL_EMPTY:uint = 100;     // 아무 것도 없는 공간
        public static var TYPE_OF_CELL_ICE:uint = 200;
        public static var TYPE_OF_CELL_BOX:uint = 300;
        public static var TYPE_OF_CELL_NEED_TO_BE_FILLED:uint = 400;  // 기존에 블럭이 없어지거나 해서 채워져야할 공간
        
        public function GameBoard()
        {
            if (!_creatingSingleton){
                throw new Error("[GameBoard] 싱글톤 클래스 - new 연산자를 통해 생성 불가");
            }
        }
        
        public static function get instance():GameBoard
        {
            if (!_instance){
                _creatingSingleton = true;
                _instance = new GameBoard();
                _creatingSingleton = false;
            }
            return _instance;
        }
        
        public function dispose():void
        {
            _stageInfo.dispose();
        }
        
        /**
         *  스테이지 레벨에 맞는 보드 정보를 입력합니다.
         */
        public function initBoard(level:uint):void
        {
            // 레벨에 맞는 보드 정보를 불러옵니다.
            _stageInfo = LevelManager.instance.loadStageInfo(level);
        }
        
        
        /**
         * 보드에 더이상 연결될 블럭이 없을 경우에 블럭을 재배열합니다. 
         */
        public function recreateBoard(blockArray:Vector.<Vector.<Block>>, blockLocater:BlockLocater, blockPainter:BlockPainter):void
        {
            // 보드를 재배열한 후에 특수블럭은 그대로 남아 있어야 되기 때문에
            //기존에 있던 블록중에 특수 블럭의 타입을 저장
            var dictionary:Dictionary = storeSpecialBlocks(blockArray);
            
            // 풀에 저장한 블록들을 바탕으로 보드를 재배열
            relocateBoard(dictionary, blockArray, blockLocater, blockPainter);
            dictionary = null;
        }
        
        private function storeSpecialBlocks(blockArray:Vector.<Vector.<Block>>):Dictionary
        {
			var rowCount:uint = GameBoard.instance.rowCount;
			var colCount:uint = GameBoard.instance.colCount;
            
            var dic:Dictionary = new Dictionary();
            for(var i:uint = 0; i<rowCount; ++i)
            {
                for(var j:uint = 0; j<colCount; ++j)
                {
                    var block:Block = blockArray[i][j];
                    if( block == null )
                        continue;
                    
                    if( block.type >= Resources.BLOCK_TYPE_SPECIAL_BLOCK_START && 
                        block.type <= Resources.BLOCK_TYPE_SPECIAL_BLOCK_END )
                    {
                        if( dic[block.type] == null )
                            dic[block.type] = 1;
                        else
                            dic[block.type] += 1;
                    }
                }
            }
            
            return dic;
        }
        
        private function relocateBoard(dic:Dictionary, blockArray:Vector.<Vector.<Block>>, blockLocater:BlockLocater, blockPainter:BlockPainter):void
        {
			var rowCount:uint = GameBoard.instance.rowCount;
			var colCount:uint = GameBoard.instance.colCount;
            
            for(var i:uint = 0; i<rowCount; ++i)
            {
                for(var j:uint = 0; j<colCount; ++j)
                {
                    if(blockArray[i][j] == null)
                        continue;
                    
                    // 새로운 타입을 생성
                    var type:uint = blockLocater.makeNewType(_stageInfo.boardArray, i, j);
                    
                    // 저장해놓은 특수블럭과 같은 타입이면 특수블럭으로 생성
                    if( dic[type*10] != null && dic[type*10] > 0 )
                    {
                        type = type * 10;
                        dic[type*10]--;
                    }
                    else if( dic[type * 10 + 1] != null && dic[type * 10 + 1] > 0 )
                    {
                        type = type * 10 + 1;
                        dic[type*10+1]--;
                    }
                    else if( dic[type * 10 + 2] != null && dic[type * 10 + 2] > 0 )
                    {
                        type = type * 10 + 2;
                        dic[type*10+2]--;
                    }	
                    else if( dic[90] != null && dic[90] > 0 )
                    {
                        type = 90;
                    }
                    
                    // 블럭의 이미지를 변경
                    blockPainter.changeTexture(blockArray[i][j], type);
                    blockArray[i][j].type = type;
                    
                    //새롭게 생성한 타입으로 보드를 초기화
                    _stageInfo.boardArray[i][j] = blockArray[i][j].type;
                }
            }
        }
        
        public function get boardArray():Vector.<Vector.<uint>>
        {
            return _stageInfo.boardArray;
        }
		
		public function get rowCount():uint
		{
			return _stageInfo.rowCount;
		}
		
		public function get colCount():uint
		{
			return _stageInfo.colCount;
		}
    }
}