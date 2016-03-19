// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Cr.1DQ

package 1Cr{
    import flash.display.Bitmap;
    import _CU._13j;
    import D5.IconButton;
    import 0-O.181;
    import 1n4.1WS;
    import _04_._1JZ;
    import D5.1c8;
    import com.company.util.AssetLibrary;
    import AO.du;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import 0-O.21H;

    public class 1DQ extends 0QO {

        private const 10X:uint = 3407650;
        private const 187:uint = 0xB3B3B3;

        private var 267:String;
        private var 0CV:String;
        private var 1xj:Boolean;
        private var 1hL:Bitmap;
        private var 1qs:_13j;
        private var 1RU:_13j;
        private var bP:IconButton;
        private var 15B:IconButton;
        private var 1FY:1TM;

        public function 1DQ(_arg1:181, _arg2:Number, _arg3:Number, _arg4:String){
            this.init(_arg2, _arg3);
            this.update(_arg1, _arg4);
        }

        override protected function init(_arg1:Number, _arg2:Number):void{
            this.graphics.beginFill(0x666666);
            this.graphics.drawRoundRect(0, 0, _arg1, _arg2, 10, 10);
            this.graphics.endFill();
            this.1hL = new Bitmap();
            this.1hL.x = 2;
            this.1hL.y = -8;
            this.1hL.scaleX = (this.1hL.scaleY = 1.2);
            addChild(this.1hL);
            this.1qs = new _13j().setSize(18).setColor(((this.1xj) ? this.10X : this.187));
            this.1qs.setStringBuilder(new 1WS(this.267));
            this.1qs.y = 4;
            addChild(this.1qs);
            this.1RU = new _13j().setSize(16).setColor(this.187);
            this.1RU.x = (this.width - 250);
            this.1RU.setStringBuilder(new 1WS(this.0CV));
            addChild(this.1RU);
            var _local3:1c8 = _1JZ.0JF().getInstance(1c8);
            this.15B = _local3.create(AssetLibrary.1JR("lofiInterface2", 3), du.bX, "", "");
            this.15B.NB(du.bX);
            this.15B.x = (this.width - 270);
            this.15B.y = 4;
            this.15B.addEventListener(MouseEvent.CLICK, this.1IS);
            addChild(this.15B);
            this.bP = _local3.create(AssetLibrary.1JR("lofiInterfaceBig", 21), du.12S, "", "");
            this.bP.x = (this.width - 130);
            this.bP.y = 4;
            this.bP.addEventListener(MouseEvent.CLICK, this.0Zc);
            addChild(this.bP);
            this.1FY = new 1TM(du.1q5, du.1IX);
            this.1FY.addEventListener(MouseEvent.CLICK, this.p4);
            this.1FY.x = (this.width - 30);
            this.1FY.y = 11;
            addChild(this.1FY);
            this.addEventListener(Event.REMOVED_FROM_STAGE, this.Rt);
        }

        override public function update(_arg1:181, _arg2:String):void{
            this.1hL.bitmapData = _arg1.getPortrait();
            if (_arg1.getName() != this.267)
            {
                this.267 = _arg1.getName();
                this.1qs.x = (this.1hL.width + 8);
                this.1qs.setStringBuilder(new 1WS(this.267));
                this.1RU.y = (this.1qs.y + 16);
            }
            if (_arg1.0qb() != this.0CV)
            {
                this.0CV = _arg1.0qb();
                this.1RU.setStringBuilder(new 1WS(this.0CV));
            }
            this.1xj = _arg1.y0;
            this.1qs.setColor(((this.1xj) ? this.10X : this.187));
            this.bP.visible = this.1xj;
            this.15B.visible = this.1xj;
            this.15B.0C9(du.238, {name:this.0CV});
            this.15B.enabled = !((this.0CV == _arg2));
        }

        override public function destroy():void{
            while (numChildren > 0)
            {
                this.removeChildAt((numChildren - 1));
            }
            this.1hL = null;
            this.1qs = null;
            this.1RU = null;
            this.bP.removeEventListener(MouseEvent.CLICK, this.0Zc);
            this.bP = null;
            this.15B.removeEventListener(MouseEvent.CLICK, this.1IS);
            this.15B = null;
            this.1FY.removeEventListener(MouseEvent.CLICK, this.p4);
            this.1FY.destroy();
            this.1FY = null;
        }

        private function Rt(_arg1:Event):void{
            this.removeEventListener(Event.REMOVED_FROM_STAGE, this.Rt);
            this.destroy();
        }

        private function p4(_arg1:MouseEvent):void{
            WY.dispatch(21H.0x7, this.267);
        }

        private function 0Zc(_arg1:MouseEvent):void{
            WY.dispatch(21H.1qY, this.267);
        }

        private function 1IS(_arg1:MouseEvent):void{
            WY.dispatch(21H.qD, this.0CV);
        }


    }
}//package 1Cr

