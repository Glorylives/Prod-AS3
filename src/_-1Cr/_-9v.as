// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Cr.9v

package 1Cr{
    import flash.display.Sprite;
    import com.company.assembleegameclient.ui.0DJ;
    import flash.display.Shape;
    import flash.events.Event;
    import flash.display.DisplayObject;

    public class 9v extends Sprite {

        private const 17-:int = 3;

        private var 0ZR:int;
        private var k4:Number;
        private var _height:Number;
        private var 16h:Sprite;
        private var ST:0DJ;

        public function 9v(_arg1:Number, _arg2:Number){
            this.0ZR = 0;
            this.k4 = _arg1;
            this._height = _arg2;
            var _local3:Shape = new Shape();
            _local3.graphics.beginFill(2245785);
            _local3.graphics.drawRect(0, 0, this.k4, this._height);
            _local3.graphics.endFill();
            addChild(_local3);
            this.mask = _local3;
            this.16h = new Sprite();
            addChild(this.16h);
            this.ST = new 0DJ(16, this._height);
            this.ST.x = (this.k4 - 18);
            this.ST.y = 0;
            this.ST.visible = false;
            this.ST.addEventListener(Event.CHANGE, this.ef);
            addChild(this.ST);
        }

        public function vL(_arg1:0QO):void{
            _arg1.y = this.0ZR;
            this.16h.addChild(_arg1);
            this.0ZR = (this.0ZR + (_arg1.height + this.17-));
            this.1fT((this.0ZR > this._height));
        }

        public function 014():int{
            return (this.16h.numChildren);
        }

        override public function getChildAt(_arg1:int):DisplayObject{
            return ((this.16h.getChildAt(_arg1) as Sprite));
        }

        override public function removeChildAt(_arg1:int):DisplayObject{
            var _local2:Sprite = (this.16h.getChildAt(_arg1) as Sprite);
            if (_local2 != null)
            {
                this.0ZR = (this.0ZR - (_local2.height + this.17-));
            }
            return ((this.16h.removeChildAt(_arg1) as Sprite));
        }

        public function clear():void{
            while (this.16h.numChildren > 0)
            {
                this.16h.removeChildAt((this.16h.numChildren - 1));
            }
            this.0ZR = 0;
        }

        private function 1fT(_arg1:Boolean):void{
            this.ST.visible = _arg1;
            if (_arg1)
            {
                this.ST.1OQ(this._height, this.0ZR);
            }
        }

        private function ef(_arg1:Event):void{
            this.16h.y = (-(this.ST.0md()) * ((this.16h.height - this._height) + 20));
        }


    }
}//package 1Cr

