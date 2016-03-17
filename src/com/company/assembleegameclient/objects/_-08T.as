// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.08T

package com.company.assembleegameclient.objects{
    import com.company.assembleegameclient.map.Map;
    import flash.utils.Dictionary;
    import com.company.util.PointUtil;
    import 1zG.bU;

    public class 08T {

        public static const 0-W:int = 6;
        private static const 1KB:Array = ["starred_", "distSqFromThisPlayer_", "objectId_"];
        private static const C5:Array = [(Array.NUMERIC | Array.DESCENDING), Array.NUMERIC, Array.NUMERIC];
        private static const 0Ul:int = (50 * 50);//2500

        public var map_:Map;
        public var Mf:Array;
        private var starred_:Dictionary;
        private var 0xp:Dictionary;
        private var lastUpdate_:int = -2147483648;

        public function 08T(_arg1:Map){
            this.Mf = [];
            this.starred_ = new Dictionary(true);
            this.0xp = new Dictionary(true);
            super();
            this.map_ = _arg1;
        }

        public function update(_arg1:int, _arg2:int):void{
            var _local4:GameObject;
            var _local5:Player;
            if (_arg1 < (this.lastUpdate_ + 500))
            {
                return;
            };
            this.lastUpdate_ = _arg1;
            this.Mf.length = 0;
            var _local3:Player = this.map_.player_;
            if (_local3 == null)
            {
                return;
            };
            for each (_local4 in this.map_.goDict_)
            {
                _local5 = (_local4 as Player);
                if ((((_local5 == null)) || ((_local5 == _local3))))
                {
                } else
                {
                    _local5.starred_ = !((this.starred_[_local5.accountId_] == undefined));
                    _local5.0xp = !((this.0xp[_local5.accountId_] == undefined));
                    _local5.distSqFromThisPlayer_ = PointUtil.21u(_local3.x_, _local3.y_, _local5.x_, _local5.y_);
                    if ((((_local5.distSqFromThisPlayer_ > 0Ul)) && (!(_local5.starred_))))
                    {
                    } else
                    {
                        this.Mf.push(_local5);
                    };
                };
            };
            this.Mf.sortOn(1KB, C5);
            if (this.Mf.length > 0-W)
            {
                this.Mf.length = 0-W;
            };
        }

        public function 005(_arg1:Player):void{
            this.starred_[_arg1.accountId_] = 1;
            this.lastUpdate_ = int.MIN_VALUE;
            this.map_.gs_.gsc_.editAccountList(0, true, _arg1.objectId_);
        }

        public function 0nE(_arg1:Player):void{
            delete this.starred_[_arg1.accountId_];
            _arg1.starred_ = false;
            this.lastUpdate_ = int.MIN_VALUE;
            this.map_.gs_.gsc_.editAccountList(0, false, _arg1.objectId_);
        }

        public function setStars(_arg1:bU):void{
            var _local3:String;
            var _local2:int;
            while (_local2 < _arg1.accountIds_.length)
            {
                _local3 = _arg1.accountIds_[_local2];
                this.starred_[_local3] = 1;
                this.lastUpdate_ = int.MIN_VALUE;
                _local2++;
            };
        }

        public function removeStars(_arg1:bU):void{
            var _local3:String;
            var _local2:int;
            while (_local2 < _arg1.accountIds_.length)
            {
                _local3 = _arg1.accountIds_[_local2];
                delete this.starred_[_local3];
                this.lastUpdate_ = int.MIN_VALUE;
                _local2++;
            };
        }

        public function 5i(_arg1:Player):void{
            this.0xp[_arg1.accountId_] = 1;
            this.lastUpdate_ = int.MIN_VALUE;
            this.map_.gs_.gsc_.editAccountList(1, true, _arg1.objectId_);
        }

        public function 0rD(_arg1:Player):void{
            delete this.0xp[_arg1.accountId_];
            _arg1.0xp = false;
            this.lastUpdate_ = int.MIN_VALUE;
            this.map_.gs_.gsc_.editAccountList(1, false, _arg1.objectId_);
        }

        public function setIgnores(_arg1:bU):void{
            var _local3:String;
            this.0xp = new Dictionary(true);
            var _local2:int;
            while (_local2 < _arg1.accountIds_.length)
            {
                _local3 = _arg1.accountIds_[_local2];
                this.0xp[_local3] = 1;
                this.lastUpdate_ = int.MIN_VALUE;
                _local2++;
            };
        }


    }
}//package com.company.assembleegameclient.objects

