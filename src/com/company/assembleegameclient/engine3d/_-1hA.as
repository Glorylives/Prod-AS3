// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.1hA

package com.company.assembleegameclient.engine3d{
    import __AS3__.vec.Vector;
    import Jt.192;
    import flash.utils.ByteArray;
    import flash.display3D.Context3D;
    import com.company.util.ConversionUtil;
    import Jt.4b;
    import __AS3__.vec.*;

    public class 1hA {

        private static var 1DN:Object = new Object();
        private static var 0OY:Object = new Object();

        public var vL_:Vector.<Number>;
        public var uvts_:Vector.<Number>;
        public var faces_:Vector.<10H>;

        public function 1hA(){
            this.vL_ = new Vector.<Number>();
            this.uvts_ = new Vector.<Number>();
            this.faces_ = new Vector.<10H>();
            super();
        }

        public static function f0(_arg1:String, _arg2:ByteArray):void{
            var _local3:192 = new 192();
            _local3.readBytes(_arg2);
            0OY[_arg1] = _local3;
        }

        public static function 0W7(_arg1:Context3D):void{
            var _local2:192;
            for each (_local2 in 0OY)
            {
                _local2.1T(_arg1);
            };
        }

        public static function 0bS(_arg1:String, _arg2:String):void{
            var _local11:String;
            var _local12:1hA;
            var _local13:String;
            var _local14:int;
            var _local15:Array;
            var _local16:String;
            var _local17:String;
            var _local18:Array;
            var _local19:Array;
            var _local20:String;
            var _local21:Vector.<int>;
            var _local22:int;
            var _local3:Array = _arg2.split(/\s*\n\s*/);
            var _local4:Array = [];
            var _local5:Array = [];
            var _local6:Array = [];
            var _local7:Object = {};
            var _local8:Array = [];
            var _local9:String;
            var _local10:Array = [];
            for each (_local11 in _local3)
            {
                if (!(((_local11.charAt(0) == "#")) || ((_local11.length == 0))))
                {
                    _local15 = _local11.split(/\s+/);
                    if (_local15.length != 0)
                    {
                        _local16 = _local15.shift();
                        if (_local16.length != 0)
                        {
                            switch (_local16)
                            {
                                case "v":
                                    if (_local15.length != 3)
                                    {
                                        return;
                                    };
                                    _local4.push(_local15);
                                    break;
                                case "vt":
                                    if (_local15.length != 2)
                                    {
                                        return;
                                    };
                                    _local5.push(_local15);
                                    break;
                                case "f":
                                    if (_local15.length < 3)
                                    {
                                        return;
                                    };
                                    _local8.push(_local15);
                                    _local10.push(_local9);
                                    for each (_local17 in _local15)
                                    {
                                        if (!_local7.hasOwnProperty(_local17))
                                        {
                                            _local7[_local17] = _local6.length;
                                            _local6.push(_local17);
                                        };
                                    };
                                    break;
                                case "usemtl":
                                    if (_local15.length != 1)
                                    {
                                        return;
                                    };
                                    _local9 = _local15[0];
                                    break;
                            };
                        };
                    };
                };
            };
            _local12 = new (1hA)();
            for each (_local13 in _local6)
            {
                _local18 = _local13.split("/");
                ConversionUtil.0ld(_local4[(int(_local18[0]) - 1)], _local12.vL_);
                if ((((_local18.length > 1)) && ((_local18[1].length > 0))))
                {
                    ConversionUtil.0ld(_local5[(int(_local18[1]) - 1)], _local12.uvts_);
                    _local12.uvts_.push(0);
                } else
                {
                    _local12.uvts_.push(0, 0, 0);
                };
            };
            _local14 = 0;
            while (_local14 < _local8.length)
            {
                _local19 = _local8[_local14];
                _local20 = _local10[_local14];
                _local21 = new Vector.<int>();
                _local22 = 0;
                while (_local22 < _local19.length)
                {
                    _local21.push(_local7[_local19[_local22]]);
                    _local22++;
                };
                _local12.faces_.push(new 10H(_local12, _local21, (((_local20 == null)) || (!((_local20.substr(0, 5) == "Solid"))))));
                _local14++;
            };
            _local12.01J();
            1DN[_arg1] = _local12;
        }

        public static function Bb(_arg1:String):1hA{
            return (1DN[_arg1]);
        }

        public static function 0ux(_arg1:String):0oE{
            var _local2:1hA = 1DN[_arg1];
            if (_local2 == null)
            {
                return (null);
            };
            return (new 0oE(_local2));
        }

        public static function 2-e(_arg1:String):4b{
            var _local2:192 = 0OY[_arg1];
            if (_local2 == null)
            {
                return (null);
            };
            return (new 4b(_local2));
        }


        public function toString():String{
            var _local1 = "";
            _local1 = (_local1 + (((("vL(" + this.vL_.length) + "): ") + this.vL_.join()) + "\n"));
            _local1 = (_local1 + (((("uvts(" + this.uvts_.length) + "): ") + this.uvts_.join()) + "\n"));
            _local1 = (_local1 + (((("faces_(" + this.faces_.length) + "): ") + this.faces_.join()) + "\n"));
            return (_local1);
        }

        public function 01J():void{
            this.faces_.sort(10H.0Ys);
        }


    }
}//package com.company.assembleegameclient.engine3d

