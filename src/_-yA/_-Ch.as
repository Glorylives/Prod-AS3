// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yA.Ch

package yA{
    import 12X.0Q6;
    import _Jy._1HZ;
    import 0xk.09v;
    import OZ.08g;
    import 19Z.0Rq;
    import flash.display.DisplayObject;
    import com.company.assembleegameclient.util.Currency;
    import 19Z.1ZG;
    import flash.text.TextField;
    import flash.text.TextFormat;
    import flash.text.TextFormatAlign;
    import 1n4.1cA;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.events.Event;
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import flash.events.IOErrorEvent;
    import flash.net.URLRequest;
    import flash.display.Shape;
    import flash.display.Graphics;
    import 0gd.GTween;
    import flash.display.Sprite;
    import 0uE.KC;
    import _04_._1JZ;
    import AO._nz;
    import flash.filters.GlowFilter;
    import com.company.assembleegameclient.map.Jw;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;

    public class Ch extends 0Q6 {

        public static const closed:_1HZ = new _1HZ();
        public static const jO:int = 600;
        public static const 1YC:int = 600;

        public static var ga:Class = 1U6;
        public static var SH:Class = 1hv;
        public static var 1lz:Class = z1;
        public static var 6B:Class = 1DU;

        private var nL:09v;
        private var ay:09v;
        private var 1HC:09v;
        public var WB:08g;
        private var mV:0Rq;
        private var 1c5:DisplayObject;
        private var 17x:int = -1;
        private var cH:DisplayObject;

        public function Ch():void{
            this.WB = new 08g("Turn in!", 36, 0, Currency.INVALID, true);
            this.mV = new 1ZG();
            super(jO, 1YC);
            this.nL = new 09v(true, true);
            this.nL.0LZ(false);
            this.ay = new 09v();
            this.ay.0LZ(true);
            this.1HC = new 09v();
            this.1HC.0LZ(true);
        }

        public function init(_arg1:int, _arg2:int, _arg3:String, _arg4:String):void{
            var _local7:TextField;
            var _local10:TextFormat;
            var _local5:String = ("Tier " + _arg1.toString());
            setTitle(_local5, true);
            this.cH = new 1lz();
            addChild(this.cH);
            this.cH.x = (((0l4 / 4) * 1.1) - (this.cH.width / 2));
            this.cH.y = ((0oc / 20) + 2);
            this.17x = (this.cH.x + (this.cH.width / 2));
            title.setSize(20);
            title.setColor(16689154);
            title.x = (((0l4 / 4) * 1.1) - (title.width / 2));
            title.y = ((this.cH.y + this.cH.height) + 5);
            title.setBold(false);
            if (title.textField != null)
            {
                _local10 = title.getTextFormat(0, _local5.length);
                _local10.leading = 10;
                title.setTextFormat(_local10, 0, _local5.length);
            };
            var _local6:TextFormat = new TextFormat();
            _local6.size = 13;
            _local6.font = "Myraid Pro";
            _local6.align = TextFormatAlign.CENTER;
            _local7 = new TextField();
            _local7.defaultTextFormat = _local6;
            _local7.text = "All Quests refresh daily at 5pm Pacific Time";
            _local7.wordWrap = true;
            _local7.width = 600;
            _local7.height = 200;
            _local7.y = 554;
            _local7.textColor = 16689154;
            _local7.alpha = 0.8;
            _local7.selectable = false;
            addChild(_local7);
            var _local8:String = 1cA.1SQ(ObjectLibrary.118[_arg2]);
            this.0xR(_arg3, _local8);
            this.03w();
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            addChild(this.nL);
            addChild(this.ay);
            this.ay.11I();
            if (_arg1 == 1)
            {
                this.ay.visible = false;
            };
            addChild(this.1HC);
            this.1HC.1Re();
            this.nL.27L("Drag the item from your inventory into the slot", 14, 0xFFFF);
            this.nL.0fS(this.WB);
            addChild(this.WB);
            this.WB.1wG("Turn in!");
            this.WB.1FM(1.3);
            this.WB.0tY(2.4);
            var _local9:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg2, 80, true, false);
            this.nL.A0(new Bitmap(_local9));
            ((this.mV) && (this.mV.unload()));
            this.mV.contentLoaderInfo.addEventListener(Event.COMPLETE, this.1P-);
            this.mV.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.0Az);
            this.mV.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR, this.0Az);
            this.mV.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR, this.0Az);
            this.mV.load(new URLRequest(_arg4));
            this.1bZ();
        }

        private function 1bZ():void{
            this.nL.x = (this.17x - (this.nL.width / 2));
            this.nL.y = 350;
            this.ay.width = (this.ay.width * 0.8);
            this.ay.height = (this.ay.height * 0.8);
            this.ay.x = (this.nL.x - this.ay.width);
            this.ay.y = (this.nL.y + ((82 - this.ay.height) / 2));
            this.1HC.width = (this.1HC.width * 0.8);
            this.1HC.height = (this.1HC.height * 0.8);
            this.1HC.x = (this.nL.x + this.nL.width);
            this.1HC.y = (this.nL.y + ((82 - this.1HC.height) / 2));
            this.WB.x = (this.17x - (this.WB.width / 2));
            this.WB.y = (this.nL.y + 100);
            this.WB.height = 50;
            background = this.makeModalBackground();
        }

        private function jZ():void{
            if (this.1c5 == null)
            {
                return;
            };
            this.1c5.alpha = 0;
            addChild(this.1c5);
            var _local1:int = 8;
            this.1c5.x = ((desc.x + desc.width) + 1);
            this.1c5.y = (0oc / 20);
            var _local2:Shape = new Shape();
            var _local3:Graphics = _local2.graphics;
            _local3.beginFill(0);
            _local3.drawRect(0, 0, 600, 550);
            _local3.endFill();
            addChild(_local2);
            this.1c5.mask = _local2;
            new GTween(this.1c5, 1.25, {alpha:1});
        }

        private function 1P-(_arg1:Event):void{
            this.mV.removeEventListener(Event.COMPLETE, this.1P-);
            this.mV.removeEventListener(IOErrorEvent.IO_ERROR, this.0Az);
            this.mV.removeEventListener(IOErrorEvent.DISK_ERROR, this.0Az);
            this.mV.removeEventListener(IOErrorEvent.NETWORK_ERROR, this.0Az);
            if (((!((this.1c5 == null))) && (!((this.1c5.parent == null)))))
            {
                removeChild(this.1c5);
            };
            this.1c5 = DisplayObject(this.mV);
            this.jZ();
        }

        private function 0Az(_arg1:IOErrorEvent):void{
            this.mV.removeEventListener(Event.COMPLETE, this.1P-);
            this.mV.removeEventListener(IOErrorEvent.IO_ERROR, this.0Az);
            this.mV.removeEventListener(IOErrorEvent.DISK_ERROR, this.0Az);
            this.mV.removeEventListener(IOErrorEvent.NETWORK_ERROR, this.0Az);
        }

        public function BN():09v{
            return (this.nL);
        }

        public function 1ew():08g{
            return (this.WB);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            1tf.clicked.remove(this.1qf);
        }

        private function 1qf():void{
            closed.dispatch();
        }

        override protected function makeModalBackground():Sprite{
            x = 0;
            var _local1:Sprite = new Sprite();
            var _local2:DisplayObject = new ga();
            _local2.width = 0l4;
            _local2.height = 0oc;
            _local2.alpha = 0.74;
            _local1.addChild(_local2);
            return (_local1);
        }

        private function 03w():void{
            var _local1:KC = new KC(0.82);
            addChild(_local1);
            _local1.y = 4;
            _local1.x = ((0l4 - _local1.width) - 5);
            _local1.clicked.add(this.1qf);
            1tf = _local1;
        }

        public function 0EZ():void{
            this.03w();
            var _local1:TextField = new TextField();
            var _local2 = "ALL QUESTS COMPLETED!";
            var _local3 = "";
            _local1.text = ((_local2 + "\n\n\n\n") + _local3);
            _local1.width = 600;
            var _local4:nz = _1JZ.0JF().getInstance(nz);
            var _local5:TextFormat = _local4.apply(_local1, 32, 0xFFFFFF, true, true);
            _local1.selectable = false;
            _local1.x = 0;
            _local1.y = 150;
            _local1.embedFonts = true;
            _local1.filters = [new GlowFilter(49941)];
            addChild(new Jw(1));
            addChild(_local1);
            _local1 = new TextField();
            _local2 = "";
            _local3 = "Return at 5pm Pacific Time for New Quests!";
            _local1.text = ((_local2 + "\n\n\n") + _local3);
            _local1.width = 600;
            _local4.apply(_local1, 17, 49941, false, true);
            _local1.selectable = false;
            _local1.x = 0;
            _local1.y = 150;
            _local1.embedFonts = true;
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(_local1);
        }

        public function 0xR(_arg1:String, _arg2:String=""):void{
            var _local4:String;
            var _local6:TextFormat;
            var _local3:int = _arg1.indexOf("{goal}");
            if (_local3 != -1)
            {
                _local4 = _arg1.split("{goal}").join(_arg2);
                J-(_local4, true);
            } else
            {
                _local4 = _arg1;
            };
            J-(_local4, true);
            desc.setColor(16689154);
            desc.setBold(false);
            desc.setSize(15);
            desc.setTextWidth(315);
            desc.x = ((((0l4 / 4) * 1.1) - (desc.width / 2)) + 3);
            desc.y = (((title)!=null) ? ((title.y + title.height) + 6) : 165);
            desc.setAutoSize(TextFieldAutoSize.LEFT);
            desc.setHorizontalAlign("left");
            desc.filters = [new DropShadowFilter(0, 0, 0)];
            desc.setLeftMargin(14);
            var _local5:TextFormat = desc.getTextFormat(0, _local4.length);
            _local5.leading = 4;
            desc.setTextFormat(_local5, 0, _local4.length);
            if (_local3 != -1)
            {
                _local6 = desc.getTextFormat(_local3, (_local3 + _arg2.length));
                _local6.color = 196098;
                _local6.bold = true;
                desc.setTextFormat(_local6, _local3, (_local3 + _arg2.length));
            };
        }

        public function Sb():void{
            var _local1:DisplayObject = new SH();
            _local1.x = 120;
            _local1.y = 180;
            _local1.scaleX = 0.1;
            _local1.scaleY = 0.1;
            new GTween(_local1, 0.4, {
                alpha:1,
                scaleX:0.6,
                scaleY:0.6,
                x:30,
                y:130
            });
            addChild(_local1);
            var _local2:DisplayObject = new 6B();
            _local2.x = (this.1c5.x + 4);
            _local2.y = (this.1c5.y + 4);
            _local2.alpha = 0;
            addChild(_local2);
            new GTween(_local2, 0.4, {alpha:1});
            new GTween(desc, 0.4, {alpha:0.2});
            new GTween(this.cH, 0.4, {alpha:0.2});
            new GTween(title, 0.4, {alpha:0.2});
            this.nL.ZA(0x545454);
            this.nL.1Ft();
        }

        public function ok():void{
            this.nL.041(-1);
        }


    }
}//package yA

