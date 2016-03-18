// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.0OH

package 5z{
    import flash.utils.Dictionary;
    import g0.Tz;
    import AO.du;
    import 0DE.14l;

    public class 0OH {

        private var Data:Class;
        private var 1wx:XML;
        private var Ii:Dictionary;
        private var Sh:0tK;
        private var F4:int;
        public var Ey:Tz;

        public function 0OH(){
            this.Data = 0Q7;
            this.1wx = XML(new this.Data());
            super();
        }

        public function get 19J():Array{
            var _local1:Array = [];
            _local1[0] = new 2w(du.0fh, this.0YB("Common"), 1dH.aB, this.Sh.u5());
            _local1[1] = new 2w(du.1u0, this.0YB("Rare"), 1dH.0UN, this.Sh.u5());
            _local1[2] = new 2w(du.1ma, this.0YB("Divine"), 1dH.cn, this.Sh.u5());
            return (_local1);
        }

        public function 07Q():void{
            var _local1:uint;
            var _local3:XML;
            var _local2:uint = this.1wx.Object.length();
            this.Ii = new Dictionary();
            _local1 = 0;
            while (_local1 < _local2)
            {
                _local3 = this.1wx.Object[_local1];
                if (this.Mq(_local3))
                {
                    this.1Ig(_local3);
                };
                _local1++;
            };
        }

        private function 1Ig(_arg1:XML):void{
            var _local2:String = XMLList(_arg1.Rarity).valueOf();
            var _local3:0tK = this.0rR(_arg1);
            if (this.Ii[_local2])
            {
                this.Ii[_local2].push(_local3);
            } else
            {
                this.Ii[_local2] = [_local3];
            };
        }

        public function Gj(_arg1:0tK):void{
            this.Sh = _arg1;
        }

        private function 0rR(_arg1:XML):0tK{
            var _local2:0tK = new 0tK();
            _local2.setType(_arg1.@type);
            _local2.setID(_arg1.@id);
            _local2.1es(this.0jE(_arg1.DefaultSkin[0]));
            return (_local2);
        }

        private function 0jE(_arg1:String):int{
            var _local2:uint;
            var _local4:XML;
            var _local5:String;
            var _local3:uint = this.1wx.Object.length();
            _local2 = 0;
            while (_local2 < _local3)
            {
                _local4 = this.1wx.Object[_local2];
                _local5 = _local4.@id;
                if (this.rw(_local4))
                {
                    if (_local5 == _arg1)
                    {
                        return (int(_local4.@type));
                    };
                };
                _local2++;
            };
            return (-1);
        }

        private function Mq(_arg1:XML):Boolean{
            return (((_arg1.hasOwnProperty("Pet")) && ((_arg1.Family == this.Sh.1m7()))));
        }

        private function rw(_arg1:XML):Boolean{
            return (_arg1.hasOwnProperty("PetSkin"));
        }

        public function 0Qq():0tK{
            return (this.Sh);
        }

        public function 0YB(_arg1:String):Array{
            return (this.Ii[_arg1]);
        }

        public function DS(_arg1:14l):void{
            this.Ey = new Tz();
            this.Ey.objectId_ = _arg1.0ZD.owner.objectId_;
            this.Ey.objectType_ = _arg1.mh();
            this.Ey.08N = _arg1.1eu;
        }

        public function 05i():int{
            return (this.F4);
        }

        public function W7(_arg1:int):void{
            this.F4 = _arg1;
        }

        public function 1-u(_arg1:int):int{
            var _local2:uint;
            var _local4:XML;
            var _local5:int;
            var _local3:uint = this.1wx.Object.length();
            _local2 = 0;
            while (_local2 < _local3)
            {
                _local4 = this.1wx.Object[_local2];
                _local5 = _local4.@type;
                if (_local5 == _arg1)
                {
                    return (this.Sc(_local4.@id));
                };
                _local2++;
            };
            return (-1);
        }

        private function Sc(_arg1:String):int{
            var _local2:uint;
            var _local4:XML;
            var _local5:String;
            var _local3:uint = this.1wx.Object.length();
            _local2 = 0;
            while (_local2 < _local3)
            {
                _local4 = this.1wx.Object[_local2];
                _local5 = _local4.DefaultSkin;
                if (_local5 == _arg1)
                {
                    return (_local4.@type);
                };
                _local2++;
            };
            return (-1);
        }


    }
}//package 5z

