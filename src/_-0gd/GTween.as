// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0gd.GTween

package 0gd{
    import flash.events.EventDispatcher;
    import flash.display.Shape;
    import flash.utils.Dictionary;
    import flash.events.Event;
    import flash.utils.getTimer;
    import flash.events.IEventDispatcher;

    public class GTween extends EventDispatcher {

        public static var version:Number = 2.01;
        public static var 14T:Boolean = false;
        public static var 07d:Function = 08R;
        public static var 20R:Boolean = false;
        public static var Qb:Number = 1;
        protected static var 9q:Boolean = false;
        protected static var wF:Object = {};
        protected static var 03U:Shape;
        protected static var time:Number;
        protected static var 3r:Dictionary = new Dictionary(true);
        protected static var 0K6:Dictionary = new Dictionary(false);

        protected var t7:Number = 0;
        protected var 0w4:Object;
        protected var 0dF:Boolean = true;
        protected var 17b:Number;
        protected var 08B:Boolean;
        protected var 1Ez:Object;
        protected var r6:Object;
        protected var _proxy:TargetProxy;
        public var lw:Boolean = true;
        public var data;
        public var duration:Number;
        public var ease:Function;
        public var 0aM:GTween;
        public var 1uT:Object;
        public var 1Bs:Boolean;
        public var 01V:int = 1;
        public var target:Object;
        public var Rn:Boolean;
        public var wY:Number = 1;
        public var 0i4:Number;
        public var aW:Number;
        public var 1-L:Number;
        public var 1x2:Number;
        public var Z-:Number;
        public var 1DK:Boolean;
        public var 194:Boolean;
        public var onComplete:Function;
        public var 1c0:Function;
        public var 2-k:Function;

        {
            1lb();
        }

        public function GTween(_arg1:Object=null, _arg2:Number=1, _arg3:Object=null, _arg4:Object=null, _arg5:Object=null){
            var _local6:Boolean;
            super();
            this.ease = 07d;
            this.194 = 14T;
            this.target = _arg1;
            this.duration = _arg2;
            this.1uT = this.copy(_arg5, {});
            if (_arg4)
            {
                _local6 = _arg4.swapValues;
                delete _arg4.swapValues;
            };
            this.copy(_arg4, this);
            this.T9(_arg3);
            if (_local6)
            {
                this.swapValues();
            };
            if ((((((this.duration == 0)) && ((this.delay == 0)))) && (this.lw)))
            {
                this.position = 0;
            };
        }

        public static function 0Nw(_arg1:Object, _arg2:Array, _arg3:Boolean=false):void{
            var _local5:String;
            var _local4:uint;
            while (_local4 < _arg2.length)
            {
                _local5 = _arg2[_local4];
                if (_local5 == "*")
                {
                    9q = true;
                };
                if (wF[_local5] == null)
                {
                    wF[_local5] = [_arg1];
                } else
                {
                    if (_arg3)
                    {
                        wF[_local5].unshift(_arg1);
                    } else
                    {
                        wF[_local5].push(_arg1);
                    };
                };
                _local4++;
            };
        }

        public static function 08R(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number):Number{
            return (_arg1);
        }

        protected static function 1lb():void{
            (03U = new Shape()).addEventListener(Event.ENTER_FRAME, T-);
            time = (getTimer() / 1000);
        }

        protected static function T-(_arg1:Event):void{
            var _local4:Object;
            var _local5:GTween;
            var _local2:Number = time;
            time = (getTimer() / 1000);
            if (20R)
            {
                return;
            };
            var _local3:Number = ((time - _local2) * Qb);
            for (_local4 in 3r)
            {
                _local5 = (_local4 as GTween);
                _local5.position = (_local5.17b + (((_local5.Rn) ? Qb : _local3) * _local5.wY));
            };
        }


        public function get paused():Boolean{
            return (this.0dF);
        }

        public function set paused(_arg1:Boolean):void{
            if (_arg1 == this.0dF)
            {
                return;
            };
            this.0dF = _arg1;
            if (this.0dF)
            {
                delete 3r[this];
                if ((this.target is IEventDispatcher))
                {
                    this.target.removeEventListener("_1yq", this.0gc);
                };
                delete 0K6[this];
            } else
            {
                if (((isNaN(this.17b)) || (((!((this.01V == 0))) && ((this.17b >= (this.01V * this.duration)))))))
                {
                    this.08B = false;
                    this.1x2 = (this.Z- = (this.aW = (this.1-L = (this.0i4 = 0))));
                    this.17b = -(this.delay);
                };
                3r[this] = true;
                if ((this.target is IEventDispatcher))
                {
                    this.target.addEventListener("_1yq", this.0gc);
                } else
                {
                    0K6[this] = true;
                };
            };
        }

        public function get position():Number{
            return (this.17b);
        }

        public function set position(_arg1:Number):void{
            var _local4:String;
            var _local5:Number;
            var _local6:Number;
            var _local7:Number;
            var _local8:Array;
            var _local9:uint;
            var _local10:uint;
            this.0i4 = this.17b;
            this.1-L = this.aW;
            this.Z- = this.1x2;
            var _local2:Number = (this.01V * this.duration);
            var _local3:Boolean = (((_arg1 >= _local2)) && ((this.01V > 0)));
            if (_local3)
            {
                if (this.Z- == _local2)
                {
                    return;
                };
                this.17b = _local2;
                this.1x2 = ((((this.1Bs) && (!((this.01V & 1))))) ? 0 : this.duration);
            } else
            {
                this.17b = _arg1;
                this.1x2 = (((this.17b < 0)) ? 0 : (this.17b % this.duration));
                if (((this.1Bs) && (((this.17b / this.duration) & 1))))
                {
                    this.1x2 = (this.duration - this.1x2);
                };
            };
            this.aW = (((((this.duration == 0)) && ((this.17b >= 0)))) ? 1 : this.ease((this.1x2 / this.duration), 0, 1, 1));
            if (((((this.target) && ((((this.17b >= 0)) || ((this.0i4 >= 0)))))) && (!((this.1x2 == this.Z-)))))
            {
                if (!this.08B)
                {
                    this.init();
                };
                for (_local4 in this.0w4)
                {
                    _local5 = this.1Ez[_local4];
                    _local6 = this.r6[_local4];
                    _local7 = (_local5 + (_local6 * this.aW));
                    _local8 = wF[_local4];
                    if (_local8)
                    {
                        _local9 = _local8.length;
                        _local10 = 0;
                        while (_local10 < _local9)
                        {
                            _local7 = _local8[_local10].tween(this, _local4, _local7, _local5, _local6, this.aW, _local3);
                            _local10++;
                        };
                        if (!isNaN(_local7))
                        {
                            this.target[_local4] = _local7;
                        };
                    } else
                    {
                        this.target[_local4] = _local7;
                    };
                };
            };
            if (9q)
            {
                _local8 = wF["*"];
                _local9 = _local8.length;
                _local10 = 0;
                while (_local10 < _local9)
                {
                    _local8[_local10].tween(this, "*", NaN, NaN, NaN, this.aW, _local3);
                    _local10++;
                };
            };
            if (!this.1DK)
            {
                if (this.194)
                {
                    this.0kQ("change");
                };
                if (this.1c0 != null)
                {
                    this.1c0(this);
                };
            };
            if (_local3)
            {
                this.paused = true;
                if (this.0aM)
                {
                    this.0aM.paused = false;
                };
                if (!this.1DK)
                {
                    if (this.194)
                    {
                        this.0kQ("complete");
                    };
                    if (this.onComplete != null)
                    {
                        this.onComplete(this);
                    };
                };
            };
        }

        public function get delay():Number{
            return (this.t7);
        }

        public function set delay(_arg1:Number):void{
            if (this.17b <= 0)
            {
                this.17b = -(_arg1);
            };
            this.t7 = _arg1;
        }

        public function get proxy():TargetProxy{
            if (this._proxy == null)
            {
                this._proxy = new TargetProxy(this);
            };
            return (this._proxy);
        }

        public function setValue(_arg1:String, _arg2:Number):void{
            this.0w4[_arg1] = _arg2;
            this.0gc();
        }

        public function getValue(_arg1:String):Number{
            return (this.0w4[_arg1]);
        }

        public function 1z4(_arg1:String):Boolean{
            delete this.r6[_arg1];
            delete this.1Ez[_arg1];
            return (delete this.0w4[_arg1]);
        }

        public function 06x(_arg1:Object):void{
            this.copy(_arg1, this.0w4, true);
            this.0gc();
        }

        public function T9(_arg1:Object=null):void{
            this.0w4 = {};
            this.06x(_arg1);
        }

        public function wR():Object{
            return (this.copy(this.0w4, {}));
        }

        public function 1cn(_arg1:String):Number{
            return (this.1Ez[_arg1]);
        }

        public function swapValues():void{
            var _local2:String;
            var _local3:Number;
            if (!this.08B)
            {
                this.init();
            };
            var _local1:Object = this.0w4;
            this.0w4 = this.1Ez;
            this.1Ez = _local1;
            for (_local2 in this.r6)
            {
                this.r6[_local2] = (this.r6[_local2] * -1);
            };
            if (this.17b < 0)
            {
                _local3 = this.0i4;
                this.position = 0;
                this.17b = this.0i4;
                this.0i4 = _local3;
            } else
            {
                this.position = this.17b;
            };
        }

        public function init():void{
            var _local1:String;
            var _local2:Array;
            var _local3:uint;
            var _local4:Number;
            var _local5:uint;
            this.08B = true;
            this.1Ez = {};
            this.r6 = {};
            for (_local1 in this.0w4)
            {
                if (wF[_local1])
                {
                    _local2 = wF[_local1];
                    _local3 = _local2.length;
                    _local4 = (((_local1 in this.target)) ? this.target[_local1] : NaN);
                    _local5 = 0;
                    while (_local5 < _local3)
                    {
                        _local4 = _local2[_local5].init(this, _local1, _local4);
                        _local5++;
                    };
                    if (!isNaN(_local4))
                    {
                        this.r6[_local1] = (this.0w4[_local1] - (this.1Ez[_local1] = _local4));
                    };
                } else
                {
                    this.r6[_local1] = (this.0w4[_local1] - (this.1Ez[_local1] = this.target[_local1]));
                };
            };
            if (9q)
            {
                _local2 = wF["*"];
                _local3 = _local2.length;
                _local5 = 0;
                while (_local5 < _local3)
                {
                    _local2[_local5].init(this, "*", NaN);
                    _local5++;
                };
            };
            if (!this.1DK)
            {
                if (this.194)
                {
                    this.0kQ("init");
                };
                if (this.2-k != null)
                {
                    this.2-k(this);
                };
            };
        }

        public function o1():void{
            this.position = 0;
            this.paused = true;
        }

        public function end():void{
            this.position = (((this.01V)>0) ? (this.01V * this.duration) : this.duration);
        }

        protected function 0gc():void{
            this.08B = false;
            if (this.17b > 0)
            {
                this.17b = 0;
            };
            if (this.lw)
            {
                this.paused = false;
            };
        }

        protected function copy(_arg1:Object, _arg2:Object, _arg3:Boolean=false):Object{
            var _local4:String;
            for (_local4 in _arg1)
            {
                if (((_arg3) && ((_arg1[_local4] == null))))
                {
                    delete _arg2[_local4];
                } else
                {
                    _arg2[_local4] = _arg1[_local4];
                };
            };
            return (_arg2);
        }

        protected function 0kQ(_arg1:String):void{
            if (hasEventListener(_arg1))
            {
                dispatchEvent(new Event(_arg1));
            };
        }


    }
}//package 0gd

import flash.utils.Proxy;
import 0gd.GTween;
import flash.utils.flash_proxy

dynamic class TargetProxy extends Proxy {

    private var tween:GTween;

    public function TargetProxy(_arg1:GTween):void{
        this.tween = _arg1;
    }

    override flash_proxy function callProperty(_arg1, ... _args){
        return (this.tween.target[_arg1].apply(null, _args));
    }

    override flash_proxy function getProperty(_arg1){
        var _local2:Number = this.tween.getValue(_arg1);
        return (((isNaN(_local2)) ? this.tween.target[_arg1] : _local2));
    }

    override flash_proxy function setProperty(_arg1, _arg2):void{
        if ((((((_arg2 is Boolean)) || ((_arg2 is String)))) || (isNaN(_arg2))))
        {
            this.tween.target[_arg1] = _arg2;
        } else
        {
            this.tween.setValue(String(_arg1), Number(_arg2));
        };
    }

    override flash_proxy function deleteProperty(_arg1):Boolean{
        this.tween.1z4(_arg1);
        return (true);
    }


}

