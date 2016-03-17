// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0pT.g-

package 0pT{
    import flash.display.Sprite;
    import 1r-.1L6;
    import 0qj.1ae;
    import _Jy._1HZ;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.BitmapData;
    import 0qj.EquipmentToolTip;
    import 1jB.1Ha;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1r-.*;

    public class g- extends Sprite implements u- {

        private var itemId:int;
        public var 1-P:1L6;
        private var tooltip:1ae;
        public var onMouseOver:_1HZ;
        public var onMouseOut:_1HZ;
        public var mQ:Bitmap;

        public function g-(_arg1:int, _arg2:int=100, _arg3:Boolean=false){
            this.1-P = new 1L6();
            this.onMouseOver = new _1HZ();
            this.onMouseOut = new _1HZ();
            super();
            this.itemId = _arg1;
            var _local4:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, _arg2, true, false);
            var _local5:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, _arg2, true, false);
            this.mQ = new Bitmap(_local5);
            addChild(this.mQ);
            this.1-P.1pS(this);
            this.tooltip = new EquipmentToolTip(_arg1, null, -1, 1Ha.NPC);
            this.tooltip.1xG();
            this.1-P.tooltip = this.tooltip;
            if (_arg3)
            {
                addEventListener(Event.REMOVED_FROM_STAGE, this.15K);
                addEventListener(MouseEvent.ROLL_OVER, this.0bV);
                addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            };
        }

        public function 0uv():void{
            this.1-P.0I0();
        }

        public function 0tF():void{
            this.1-P.1pS(this);
        }

        private function 15K(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.15K);
            removeEventListener(MouseEvent.ROLL_OVER, this.0bV);
            removeEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            this.onMouseOver.removeAll();
            this.onMouseOut.removeAll();
        }

        private function 0bV(_arg1:MouseEvent):void{
            this.onMouseOver.dispatch();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.onMouseOut.dispatch();
        }

        public function 4-(_arg1:1hy):void{
            this.1-P.4-(_arg1);
        }

        public function Bs():1hy{
            return (this.1-P.Bs());
        }

        public function na(_arg1:of):void{
            this.1-P.na(_arg1);
        }

        public function w1():of{
            return (this.1-P.w1());
        }

        public function setXPos(_arg1:Number):void{
            this.x = (_arg1 - (this.width / 2));
        }

        public function setYPos(_arg1:Number):void{
            this.y = (_arg1 - (this.height / 2));
        }

        public function getCenterX():Number{
            return ((this.x + (this.width / 2)));
        }

        public function getCenterY():Number{
            return ((this.y + (this.height / 2)));
        }


    }
}//package 0pT

