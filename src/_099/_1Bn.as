// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//099.1Bn

package _099{
    import com.company.assembleegameclient.ui._0S7;
    import com.company.assembleegameclient.map._1qi;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.ui._1p;
    import _Jy._1HZ;
    import flash.events.MouseEvent;
    import flash.events.Event;

import mx.controls.Menu;

public class _1Bn extends Menu {

        private var wd:Vector.<_0S7>;
        private var _03I:uint = 4;
        public var map_:_1qi;
        public var _1K:Vector.<Player>;
        public var _1N2:_1Nr;
        public var _185:_1p;
        public var _0l:_1HZ;

        public function _1Bn(_arg1:_1qi, _arg2:Vector.<Player>){
            this.wd = new Vector.<_0S7>();
            this._0l = new _1HZ();
            super(0x363636, 0xFFFFFF);
            this.map_ = _arg1;
            this._1K = _arg2.concat();
            this._1AW();
            this.native();
        }

        private function native():void{
            var _local1:Player;
            var _local2:_0S7;
            for each (_local1 in this._1K)
            {
                _local2 = new _0S7(0xB3B3B3, true, _local1);
                _local2.x = 0;
                _local2.y = this._03I;
                addChild(_local2);
                this.wd.push(_local2);
                this._03I = (this._03I + 32);
            };
        }

        private function _1AW():void{
            if (this.map_._20B())
            {
                this._1N2 = new TeleportMenuOption(this.map_.player_);
                this._1N2.x = 8;
                this._1N2.y = 8;
                this._1N2.addEventListener(MouseEvent.CLICK, this._1nt);
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

