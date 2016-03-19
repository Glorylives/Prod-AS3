// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1ih.SteamAccountDetailDialog

package 1ih{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1im;
    import 0hd.Frame;
    import AO.du;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import 1n4.1WS;
    import flash.events.MouseEvent;

    public class SteamAccountDetailDialog extends Sprite {

        public var eO:_1HZ;
        public var register:_1HZ;
        public var link:_1HZ;
        private var 1Bh:_13j;
        private var 0Ed:_13j;
        private var 1QU:_13j;
        private var ow:_13j;
        private var 1zj:1im;

        public function SteamAccountDetailDialog(){
            this.eO = new _1HZ();
            this.register = new _1HZ();
        }

        public function 00K(_arg1:String, _arg2:String, _arg3:Boolean):void{
            var _local4:Frame;
            _local4 = new Frame(du.0t5, "", du.2-h, "/steamworksCurrentLogin");
            addChild(_local4);
            this.1Bh = new _13j().setSize(18).setColor(0xB3B3B3);
            this.1Bh.setBold(true);
            this.1Bh.setStringBuilder(new 1cA().setParams(du.0ns));
            this.1Bh.filters = [new DropShadowFilter(0, 0, 0)];
            this.1Bh.y = (_local4.h_ - 60);
            this.1Bh.x = 17;
            _local4.addChild(this.1Bh);
            this.0Ed = new _13j().setSize(16).setColor(0xB3B3B3);
            this.0Ed.setTextWidth(238).setTextHeight(30);
            this.0Ed.setStringBuilder(new 1WS(_arg1));
            this.0Ed.y = (_local4.h_ - 30);
            this.0Ed.x = 17;
            _local4.addChild(this.0Ed);
            _local4.h_ = (_local4.h_ + 88);
            if (_arg3)
            {
                _local4.h_ = (_local4.h_ - 20);
                this.1QU = new _13j().setSize(18).setColor(0xB3B3B3);
                this.1QU.setBold(true);
                this.1QU.setStringBuilder(new 1cA().setParams(du.1CK));
                this.1QU.filters = [new DropShadowFilter(0, 0, 0)];
                this.1QU.y = (_local4.h_ - 60);
                this.1QU.x = 17;
                _local4.addChild(this.1QU);
                this.ow = new _13j().setSize(16).setColor(0xB3B3B3);
                this.ow.setStringBuilder(new 1WS(_arg2));
                this.ow.y = (_local4.h_ - 30);
                this.ow.x = 17;
                _local4.addChild(this.ow);
                _local4.h_ = (_local4.h_ + 88);
            } else
            {
                this.1zj = new 1im(12, false, du.1gs);
                this.1zj.addEventListener(MouseEvent.CLICK, this.0VB);
                _local4.0-C(this.1zj);
            }
            _local4.9u.addEventListener(MouseEvent.CLICK, this.tz);
        }

        private function tz(_arg1:MouseEvent):void{
            this.eO.dispatch();
        }

        public function 0VB(_arg1:MouseEvent):void{
            this.register.dispatch();
        }


    }
}//package 1ih

