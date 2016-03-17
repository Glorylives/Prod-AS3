// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.CharacterDetailsView

package 1PB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import D5.1c8;
    import com.company.assembleegameclient.objects.1F9;
    import flash.display.Bitmap;
    import D5.IconButton;
    import _CU._13j;
    import XF.1eq;
    import com.company.assembleegameclient.ui.0wI;
    import com.company.assembleegameclient.ui.GE;
    import flash.events.MouseEvent;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.objects.Player;
    import 1n4.1WS;

    public class CharacterDetailsView extends Sprite {

        public static const NEXUS_BUTTON:String = "NEXUS_BUTTON";
        public static const OPTIONS_BUTTON:String = "OPTIONS_BUTTON";
        public static const 01g:String = "lofiInterfaceBig";
        public static const 01h:int = 6;
        public static const 0Yf:int = 5;

        public var 1Wb:_1HZ;
        public var HZ:_1HZ;
        public var 22k:1c8;
        public var xt:1F9;
        private var 0Sz:Bitmap;
        private var button:IconButton;
        private var nameText_:_13j;
        private var 1SK:1eq;
        private var lL:1eq;
        private var 0Wf:0wI;
        private var y2:GE;

        public function CharacterDetailsView(){
            this.1Wb = new _1HZ();
            this.HZ = new _1HZ();
            this.0Sz = new Bitmap(null);
            this.nameText_ = new _13j().setSize(20).setColor(0xB3B3B3);
            this.1SK = new 1eq(this.button, MouseEvent.CLICK);
            this.lL = new 1eq(this.button, MouseEvent.CLICK);
            super();
        }

        public function init(_arg1:String, _arg2:String):void{
            this.0et();
            this.iS(_arg1);
            this.0HN(_arg2);
        }

        private function 0HN(_arg1:String):void{
            if (_arg1 == NEXUS_BUTTON)
            {
                this.button = this.22k.create(this.xt.1JR(01g, 01h), "", du.0n7, "escapeToNexus");
                this.1SK = new 1eq(this.button, MouseEvent.CLICK, MouseEvent);
                this.1SK.add(this.Ug);
            } else
            {
                if (_arg1 == OPTIONS_BUTTON)
                {
                    this.button = this.22k.create(this.xt.1JR(01g, 0Yf), "", du.0Fc, "options");
                    this.lL = new 1eq(this.button, MouseEvent.CLICK, MouseEvent);
                    this.lL.add(this.0Re);
                };
            };
            this.button.x = 172;
            this.button.y = 4;
            addChild(this.button);
        }

        private function 0et():void{
            this.0Sz.x = -2;
            this.0Sz.y = -8;
            addChild(this.0Sz);
        }

        private function iS(_arg1:String):void{
            this.nameText_.setBold(true);
            this.nameText_.x = 36;
            this.nameText_.y = 3;
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            this.setName(_arg1);
            addChild(this.nameText_);
        }

        public function update(_arg1:Player):void{
            this.0Sz.bitmapData = _arg1.getPortrait();
        }

        public function draw(_arg1:Player):void{
            if (this.y2)
            {
                this.y2.update(_arg1.0bF);
            };
            if (((_arg1.198) || (_arg1.0OA)))
            {
                this.0Wf = ((this.0Wf) || (new 0wI(_arg1)));
                if (this.0Sz)
                {
                    this.0Sz.x = 13;
                };
                if (this.nameText_)
                {
                    this.nameText_.x = 47;
                };
                this.0Wf.x = 6;
                this.0Wf.y = 5;
                addChild(this.0Wf);
            } else
            {
                if (this.0Wf)
                {
                    removeChild(this.0Wf);
                    this.0Wf = null;
                    this.0Sz.x = -2;
                    this.nameText_.x = 36;
                };
            };
        }

        private function Ug(_arg1:MouseEvent):void{
            this.1Wb.dispatch();
        }

        private function 0Re(_arg1:MouseEvent):void{
            this.HZ.dispatch();
        }

        public function setName(_arg1:String):void{
            this.nameText_.setStringBuilder(new 1WS(_arg1));
        }


    }
}//package 1PB

