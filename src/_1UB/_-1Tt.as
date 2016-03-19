// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.1Tt

package 1UB{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.DisplayObject;
    import OZ.1v8;
    import 0q4.Size;
    import Wn.0EB;
    import __AS3__.vec.*;

    public class 1Tt extends Sprite {

        private const 0oa:int = 20;

        private var 0Up:Vector.<DisplayObject>;
        private var 1Tu:1v8;

        public function 1Tt(){
            this.0Up = new Vector.<DisplayObject>(this.0oa);
            this.1Tu = new 1v8();
            super();
            var _local1:int;
            while (_local1 < this.0oa)
            {
                this.0Up[_local1] = new ArenaLeaderboardListItem();
                _local1++;
            }
            this.1Tu.setSize(new Size(786, 400));
            addChild(this.1Tu);
        }

        public function setItems(_arg1:Vector.<0EB>, _arg2:Boolean):void{
            var _local4:0EB;
            var _local5:ArenaLeaderboardListItem;
            var _local3:int;
            while (_local3 < this.0Up.length)
            {
                _local4 = (((_local3 < _arg1.length)) ? _arg1[_local3] : null);
                _local5 = (this.0Up[_local3] as ArenaLeaderboardListItem);
                _local5.apply(_local4, _arg2);
                _local3++;
            }
            this.1Tu.setItems(this.0Up);
        }


    }
}//package 1UB

