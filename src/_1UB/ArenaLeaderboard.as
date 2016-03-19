// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.ArenaLeaderboard

package 1UB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import Wn.1Ev;
    import _CU.sb;
    import flash.display.Bitmap;
    import __AS3__.vec.Vector;
    import _1aA.Lz;
    import 1RM.rf;
    import com.company.rotmg.graphics.ScreenGraphic;
    import flash.events.MouseEvent;
    import Wn.0EB;
    import 1PB.cO;
    import Wn.0In;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;
    import flash.filters.DropShadowFilter;
    import 1n4.1cA;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import _CU._13j;
    import flash.display.Shape;
    import flash.display.Graphics;
    import __AS3__.vec.*;

    public class ArenaLeaderboard extends Sprite {

        public const 0vk:_1HZ = new _1HZ(1Ev);
        public const close:_1HZ = new _1HZ();

        private var list:1Tt;
        private var title:sb;
        private var 0Oe:Bitmap;
        private var 1Uh:Bitmap;
        private var ug:Vector.<a9>;
        private var selected:a9;
        private var 1tf:Lz;
        private var Vy:rf;

        public function ArenaLeaderboard(){
            this.list = this.0Ue();
            this.title = this.Kr();
            this.0Oe = this.BF(false);
            this.1Uh = this.BF(true);
            this.ug = this.0gH();
            this.Vy = this.Vq();
            super();
            addChild(this.list);
            addChild(new ScreenGraphic());
            addChild(this.0Oe);
            addChild(this.1Uh);
            addChild(this.title);
            this.1gH();
            this.8G();
            addChild(this.Vy);
        }

        public function init():void{
            var _local1:a9 = this.ug[0];
            this.selected = _local1;
            _local1.setSelected(true);
            _local1.selected.dispatch(_local1);
        }

        public function destroy():void{
            var _local1:a9;
            for each (_local1 in this.ug)
            {
                _local1.selected.remove(this.14J);
                _local1.destroy();
            }
        }

        public function 7g():void{
            this.1_ZS(this.selected.5u().0iF());
        }

        private function onCloseClick(_arg1:MouseEvent):void{
            this.close.dispatch();
        }

        private function 14J(_arg1:a9):void{
            this.selected.setSelected(false);
            this.selected = _arg1;
            this.selected.setSelected(true);
            this.Vy.visible = (_arg1.5u().getKey() == "weekly");
            if (_arg1.5u().Hd())
            {
                this.list.setItems(_arg1.5u().0iF(), true);
            } else
            {
                this.0vk.dispatch(_arg1.5u());
            }
        }

        public function 1_ZS(_arg1:Vector.<0EB>):void{
            this.list.setItems(_arg1, true);
        }

        private function 0gH():Vector.<a9>{
            var _local3:1Ev;
            var _local4:a9;
            var _local1:cO = new cO();
            var _local2:Vector.<a9> = new Vector.<a9>();
            for each (_local3 in 0In.0bi)
            {
                _local4 = new a9(_local3);
                _local4.y = 70;
                _local4.selected.add(this.14J);
                _local2.push(_local4);
                _local1.push(_local4.b2);
                addChild(_local4);
            }
            _local1.complete.addOnce(this.1d1);
            return (_local2);
        }

        private function BF(_arg1:Boolean):Bitmap{
            var _local2:BitmapData = TextureRedrawer.redraw(AssetLibrary.1JR("lofiInterface2", 8), 64, true, 0, true);
            if (_arg1)
            {
                _local2 = BitmapUtil.mirror(_local2);
            }
            return (new Bitmap(_local2));
        }

        private function Kr():sb{
            var _local1:sb;
            _local1 = new sb();
            _local1.setBold(true).setColor(0xB3B3B3).setSize(32);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            _local1.setStringBuilder(new 1cA().setParams(du.0C4));
            _local1.setAutoSize(TextFieldAutoSize.CENTER);
            _local1.y = 25;
            _local1.textChanged.addOnce(this.Ms);
            return (_local1);
        }

        private function 1gH():void{
            this.1tf = new Lz(du.1vx, 36, false);
            this.1tf.setAutoSize(TextFieldAutoSize.CENTER);
            this.1tf.setVerticalAlign(_13j.MIDDLE);
            this.1tf.x = 400;
            this.1tf.y = 553;
            addChild(this.1tf);
            this.1tf.addEventListener(MouseEvent.CLICK, this.onCloseClick);
        }

        private function 8G():void{
            var _local1:Shape = new Shape();
            addChild(_local1);
            var _local2:Graphics = _local1.graphics;
            _local2.lineStyle(2, 0x545454);
            _local2.moveTo(0, 100);
            _local2.lineTo(800, 100);
        }

        private function 0Ue():1Tt{
            var _local1:1Tt = new 1Tt();
            _local1.x = 15;
            _local1.y = 115;
            return (_local1);
        }

        private function 1d1():void{
            var _local2:a9;
            var _local1:int = 20;
            for each (_local2 in this.ug)
            {
                _local2.x = _local1;
                _local1 = (_local1 + (_local2.width + 20));
            }
        }

        private function Vq():rf{
            var _local1:rf;
            _local1 = new rf();
            _local1.y = 72;
            _local1.x = 440;
            return (_local1);
        }

        private function Ms():void{
            this.title.x = (stage.stageWidth / 2);
            this.0Oe.x = ((((stage.stageWidth / 2) - (this.title.width / 2)) - this.0Oe.width) + 10);
            this.0Oe.y = 15;
            this.1Uh.x = (((stage.stageWidth / 2) + (this.title.width / 2)) - 10);
            this.1Uh.y = 15;
        }


    }
}//package 1UB

