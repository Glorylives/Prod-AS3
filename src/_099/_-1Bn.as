// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//099.1Bn

package 099{
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.ui.0S7;
    import com.company.assembleegameclient.map.1qi;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.ui.1-p;
    import _Jy._1HZ;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import __AS3__.vec.*;

    public class 1Bn extends Menu {

        private var wd:Vector.<0S7>;
        private var 03I:uint = 4;
        public var map_:1qi;
        public var 1K:Vector.<Player>;
        public var 1N2:1Nr;
        public var 185:1-p;
        public var 0-l:_1HZ;

        public function 1Bn(_arg1:1qi, _arg2:Vector.<Player>){
            this.wd = new Vector.<0S7>();
            this.0-l = new _1HZ();
            super(0x363636, 0xFFFFFF);
            this.map_ = _arg1;
            this.1K = _arg2.concat();
            this.1AW();
            this.native();
        }

        private function native():void{
            var _local1:Player;
            var _local2:0S7;
            for each (_local1 in this.1K)
            {
                _local2 = new 0S7(0xB3B3B3, true, _local1);
                _local2.x = 0;
                _local2.y = this.03I;
                addChild(_local2);
                this.wd.push(_local2);
                this.03I = (this.03I + 32);
            };
        }

        private function 1AW():void{
            if (this.map_.20B())
            {
                this.1N2 = new TeleportMenuOption(this.map_.player_);
                this.1N2.x = 8;
                this.1N2.y = 8;
                this.1N2.addEventListener(MouseEvent.CLICK, this.1nt);
                addChild(this.1N2);
                this.185 = new 1-p(150, 0x1C1C1C);
                this.185.x = 6;
                this.185.y = 40;
                addChild(this.185);
                this.03I = 52;
            };
        }

        private function 1nt(_arg1:Event):void{
            var _local4:Player;
            var _local2:Player = this.map_.player_;
            var _local3:Player;
            for each (_local4 in this.1K)
            {
                if (_local2.0dw(_local4))
                {
                    _local3 = _local4;
                    if (_local4.0kh) break;
                };
            };
            if (_local3 != null)
            {
                _local2.1oB(_local3);
            } else
            {
                this.0-l.dispatch();
            };
            remove();
        }


    }
}//package 099

