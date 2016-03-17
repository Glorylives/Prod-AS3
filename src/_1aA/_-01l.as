// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.01l

package _1aA{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import com.company.assembleegameclient.ui.RankText;
    import com.company.assembleegameclient.ui.1sK;
    import 12X.0u5;
    import flash.display.Shape;
    import flash.display.DisplayObject;
    import flash.events.MouseEvent;
    import 0qj.RankToolTip;

    public class 01l extends Sprite {

        public var tooltip:_1HZ;
        private var 0Ua:Sprite;
        private var 0FK:Sprite;
        private var 24f:Sprite;
        private var guildName:String;
        private var ew:int;
        private var stars:int;
        private var rankText:RankText;
        private var 1W3:1sK;
        private var accountInfo:0u5;

        public function 01l(){
            this.tooltip = new _1HZ();
            this.0G();
        }

        private function 0G():void{
            addChild((this.0Ua = new Sprite()));
            addChild((this.0FK = new Sprite()));
            addChild((this.24f = new Sprite()));
        }

        private function 0hy():DisplayObject{
            var _local1:Shape = new Shape();
            _local1.graphics.beginFill(0, 0.5);
            _local1.graphics.drawRect(0, 0, 800, 35);
            return (_local1);
        }

        public function xd(_arg1:String, _arg2:int):void{
            this.guildName = _arg1;
            this.ew = _arg2;
            this.1ua();
        }

        private function 1ua():void{
            this.1W3 = new 1sK(this.guildName, this.ew);
            this.1W3.x = 92;
            this.1W3.y = 6;
            while (this.0FK.numChildren > 0)
            {
                this.0FK.removeChildAt(0);
            };
            this.0FK.addChild(this.1W3);
        }

        public function d3(_arg1:int):void{
            this.stars = _arg1;
            this.R9();
        }

        private function R9():void{
            this.rankText = new RankText(this.stars, true, false);
            this.rankText.x = 36;
            this.rankText.y = 4;
            this.rankText.mouseEnabled = true;
            this.rankText.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.rankText.addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            while (this.0Ua.numChildren > 0)
            {
                this.0Ua.removeChildAt(0);
            };
            this.0Ua.addChild(this.rankText);
        }

        public function OA(_arg1:0u5):void{
            var _local2:DisplayObject;
            this.accountInfo = _arg1;
            _local2 = (_arg1 as DisplayObject);
            _local2.x = (stage.stageWidth - 10);
            _local2.y = 2;
            while (this.24f.numChildren > 0)
            {
                this.24f.removeChildAt(0);
            };
            this.24f.addChild(_local2);
        }

        protected function onMouseOver(_arg1:MouseEvent):void{
            this.tooltip.dispatch(new RankToolTip(this.stars));
        }

        protected function onRollOut(_arg1:MouseEvent):void{
            this.tooltip.dispatch(null);
        }


    }
}//package _1aA

