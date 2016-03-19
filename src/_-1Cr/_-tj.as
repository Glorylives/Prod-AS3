// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Cr.tj

package 1Cr{
    import flash.display.Bitmap;
    import _CU._13j;
    import D5.IconButton;
    import 0-O.181;
    import D5.1c8;
    import _04_._1JZ;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import flash.geom.ColorTransform;
    import AO.du;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import 1n4.1WS;
    import 0-O.21H;

    public class tj extends 0QO {

        private var 267:String;
        private var 1hL:Bitmap;
        private var 1qs:_13j;
        private var 0RT:IconButton;
        private var 1Hq:IconButton;
        private var 0tg:IconButton;

        public function tj(_arg1:181, _arg2:Number, _arg3:Number){
            this.init(_arg2, _arg3);
            this.update(_arg1, "");
        }

        override protected function init(_arg1:Number, _arg2:Number):void{
            var _local3:1c8;
            this.graphics.beginFill(0x666666);
            this.graphics.drawRoundRect(0, 0, _arg1, _arg2, 10, 10);
            this.graphics.endFill();
            this.1hL = new Bitmap();
            this.1hL.x = 2;
            addChild(this.1hL);
            this.1qs = new _13j().setSize(18).setBold(true).setColor(0xB3B3B3);
            this.1qs.y = 11;
            addChild(this.1qs);
            _local3 = _1JZ.0JF().getInstance(1c8);
            var _local4:BitmapData = AssetLibrary.1JR("lofiInterfaceBig", 11);
            _local4.colorTransform(_local4.rect, new ColorTransform(0, 1, 0, 1, 182, 0xFF, 160, 0));
            this.1Hq = _local3.create(_local4, du.0kL, "", "");
            this.1Hq.x = (this.width - 200);
            this.1Hq.y = 11;
            this.1Hq.addEventListener(MouseEvent.CLICK, this.0hY);
            addChild(this.1Hq);
            _local4 = AssetLibrary.1JR("lofiInterfaceBig", 12);
            _local4.colorTransform(_local4.rect, new ColorTransform(1, 0, 0, 1, 0xFF, 188, 188, 0));
            this.0RT = _local3.create(_local4, du.vY, "", "");
            this.0RT.x = (this.width - 110);
            this.0RT.y = 11;
            this.0RT.addEventListener(MouseEvent.CLICK, this.9r);
            addChild(this.0RT);
            this.0tg = _local3.create(AssetLibrary.1JR("lofiInterfaceBig", 8), "", du.1oU, "");
            this.0tg.0C9(du.z9);
            this.0tg.addEventListener(MouseEvent.CLICK, this.S6);
            this.0tg.x = (this.width - 25);
            this.0tg.y = 12;
            addChild(this.0tg);
            this.addEventListener(Event.REMOVED_FROM_STAGE, this.Rt);
        }

        override public function update(_arg1:181, _arg2:String):void{
            if (_arg1.getName() != this.267)
            {
                this.267 = _arg1.getName();
                this.1hL.bitmapData = _arg1.getPortrait();
                this.1qs.setStringBuilder(new 1WS(this.267));
                this.1qs.x = (this.1hL.width + 12);
            }
        }

        override public function destroy():void{
            while (numChildren > 0)
            {
                this.removeChildAt((numChildren - 1));
            }
            this.1hL = null;
            this.1qs = null;
            this.1Hq.removeEventListener(MouseEvent.CLICK, this.0hY);
            this.1Hq = null;
            this.0RT.removeEventListener(MouseEvent.CLICK, this.9r);
            this.0RT = null;
            this.0tg.removeEventListener(MouseEvent.CLICK, this.S6);
            this.0tg = null;
        }

        private function Rt(_arg1:Event):void{
            this.removeEventListener(Event.REMOVED_FROM_STAGE, this.Rt);
            this.destroy();
        }

        private function 0hY(_arg1:MouseEvent):void{
            WY.dispatch(21H.1Hb, this.267);
        }

        private function 9r(_arg1:MouseEvent):void{
            WY.dispatch(21H.1U5, this.267);
        }

        private function S6(_arg1:MouseEvent):void{
            WY.dispatch(21H.0iv, this.267);
        }


    }
}//package 1Cr

