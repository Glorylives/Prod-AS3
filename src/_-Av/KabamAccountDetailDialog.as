// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Av.KabamAccountDetailDialog

package Av{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import 0hd.Frame;
    import AO.du;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import 1n4.1WS;
    import flash.events.MouseEvent;

    public class KabamAccountDetailDialog extends Sprite {

        public var eO:_1HZ;
        private var 1Bh:_13j;
        private var 0Ed:_13j;

        public function KabamAccountDetailDialog(){
            this.eO = new _1HZ();
        }

        public function 00K(_arg1:String):void{
            var _local2:Frame = new Frame(du.0Vb, "", du.13k, "/currentKabamLogin");
            addChild(_local2);
            this.1Bh = new _13j().setSize(18).setColor(0xB3B3B3);
            this.1Bh.setBold(true);
            this.1Bh.setStringBuilder(new 1cA().setParams(du.0ia));
            this.1Bh.filters = [new DropShadowFilter(0, 0, 0)];
            this.1Bh.y = (_local2.h_ - 60);
            this.1Bh.x = 17;
            _local2.addChild(this.1Bh);
            this.0Ed = new _13j().setSize(16).setColor(0xB3B3B3).setTextWidth(238).setTextHeight(30);
            this.0Ed.setStringBuilder(new 1WS(_arg1));
            this.0Ed.y = (_local2.h_ - 30);
            this.0Ed.x = 17;
            _local2.addChild(this.0Ed);
            _local2.h_ = (_local2.h_ + 88);
            _local2.w_ = (_local2.w_ + 60);
            _local2.9u.addEventListener(MouseEvent.CLICK, this.tz);
        }

        private function tz(_arg1:MouseEvent):void{
            this.eO.dispatch();
        }


    }
}//package Av

