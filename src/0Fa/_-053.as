// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.053

package 0Fa{
    import flash.geom.Matrix;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.text.TextField;
    import _CU.1CD;
    import 1u-.tM;
    import AO.nz;
    import com.company.assembleegameclient.util.0sg;
    import 1u-.1Ys;
    import __AS3__.vec.Vector;
    import flash.display.DisplayObject;
    import flash.text.TextFormat;
    import com.company.assembleegameclient.util.09g;
    import 1n4.1Jo;
    import flash.display.BitmapData;
    import 1n4.1WS;
    import flash.display.Bitmap;
    import flash.display.StageQuality;
    import __AS3__.vec.*;

    public class 053 {

        private static const 1Ab:Matrix = new Matrix();
        private static const uU:String = Parameters.si;
        private static const 0ZN:String = Parameters.uL;
        private static const 0yL:String = Parameters.Iu;
        private static const ERROR:String = Parameters.1Wj;
        private static const kj:String = Parameters.PB;
        private static const g3:TextField = 0Bd();

        [Inject]
        public var factory:1CD;
        [Inject]
        public var model:tM;
        [Inject]
        public var 0sQ:nz;
        [Inject]
        public var Wy:0sg;
        private var message:1Ys;
        private var buffer:Vector.<DisplayObject>;


        public static function 1ln(_arg1:int, _arg2:int, _arg3:String):Boolean{
            return ((((((_arg1 == -1)) || ((_arg2 == -1)))) && (!((_arg3.search("/trade") == -1)))));
        }

        public static function 0VV(_arg1:String):Boolean{
            return ((_arg1 == kj));
        }

        private static function 0Bd():TextField{
            var _local1:TextField = new TextField();
            var _local2:TextFormat = new TextFormat();
            _local2.size = 15;
            _local2.bold = true;
            _local1.defaultTextFormat = _local2;
            return (_local1);
        }


        public function make(_arg1:1Ys, _arg2:Boolean=false):1si{
            var _local5:int;
            var _local7:String;
            var _local8:int;
            this.message = _arg1;
            this.buffer = new Vector.<DisplayObject>();
            this.06a();
            this.18S();
            this.0Wj();
            this.l3();
            this.0Vt();
            var _local3:Boolean = (((_arg1.numStars == -1)) || ((_arg1.objectId == -1)));
            var _local4:Boolean;
            var _local6:String = _arg1.name;
            if (((_local3) && (!(((_local5 = _arg1.text.search("/trade ")) == -1)))))
            {
                _local5 = (_local5 + 7);
                _local7 = "";
                _local8 = _local5;
                while (_local8 < (_local5 + 10))
                {
                    if (_arg1.text.charAt(_local8) == '"')
                    {
                        break;
                    };
                    _local7 = (_local7 + _arg1.text.charAt(_local8));
                    _local8++;
                };
                _local6 = _local7;
                _local4 = true;
            };
            return (new 1si(this.buffer, this.model.1Xo.width, this.model.1jC, _arg2, _arg1.objectId, _local6, (_arg1.20u == kj), _local4));
        }

        private function 18S():void{
            var _local1:int = this.message.numStars;
            if (_local1 >= 0)
            {
                this.buffer.push(09g.0YP(_local1));
            };
        }

        private function 0Wj():void{
            var _local1:1Jo;
            var _local2:BitmapData;
            if (((this.message.0EX) && (!(this.message.rO))))
            {
                _local1 = new 1WS("To: ");
                _local2 = this.getBitmapData(_local1, 61695);
                this.buffer.push(new Bitmap(_local2));
            };
        }

        private function l3():void{
            if (!this.0e2())
            {
                this.0Gp();
            };
        }

        private function 0e2():Boolean{
            var _local1:String = this.message.name;
            return ((((((((((_local1 == uU)) || ((_local1 == 0ZN)))) || ((_local1 == 0yL)))) || ((_local1 == ERROR)))) || ((_local1 == kj))));
        }

        private function 0Gp():void{
            var _local1:1Jo = new 1WS(this.0E5());
            var _local2:BitmapData = this.getBitmapData(_local1, this.lu());
            this.buffer.push(new Bitmap(_local2));
        }

        private function 0E5():String{
            var _local1:String = ((((this.message.0EX) && (!(this.message.rO)))) ? this.message.20u : this.message.name);
            if ((((_local1.charAt(0) == "#")) || ((_local1.charAt(0) == "@"))))
            {
                _local1 = _local1.substr(1);
            };
            return ((("<" + _local1) + ">"));
        }

        private function 0Vt():void{
            var _local2:int;
            var _local1:Array = this.message.text.split("\n");
            if (_local1.length > 0)
            {
                this.1Z3(_local1[0], true);
                _local2 = 1;
                while (_local2 < _local1.length)
                {
                    this.1Z3(_local1[_local2], false);
                    _local2++;
                };
            };
        }

        private function 1Z3(_arg1:String, _arg2:Boolean):void{
            var _local8:DisplayObject;
            var _local9:int;
            var _local10:uint;
            var _local11:int;
            var _local12:int;
            var _local3:String = _arg1;
            var _local4:int;
            var _local5:int = this.0sQ.0sD().qV(15);
            var _local6:int;
            if (_arg2)
            {
                for each (_local8 in this.buffer)
                {
                    _local4 = (_local4 + _local8.width);
                };
                _local6 = _local3.length;
                g3.text = _local3;
                while (g3.textWidth >= (this.model.1Xo.width - _local4))
                {
                    _local6 = (_local6 - 10);
                    g3.text = _local3.substr(0, _local6);
                };
                if (_local6 < _local3.length)
                {
                    _local9 = _local3.substr(0, _local6).lastIndexOf(" ");
                    _local6 = (((((_local9 == 0)) || ((_local9 == -1)))) ? _local6 : _local9);
                };
                this.0HM(_local3.substr(0, _local6));
            };
            var _local7:int = _local3.length;
            if (_local7 > _local6)
            {
                _local10 = (this.model.1Xo.width / _local5);
                _local11 = _local6;
                while (_local11 < _local3.length)
                {
                    g3.text = _local3.substr(_local11, _local10);
                    while (g3.textWidth >= (this.model.1Xo.width - _local4))
                    {
                        _local10 = (_local10 - 5);
                        g3.text = _local3.substr(_local11, _local10);
                    };
                    _local12 = _local10;
                    if (_local3.length > (_local11 + _local10))
                    {
                        _local12 = _local3.substr(_local11, _local10).lastIndexOf(" ");
                        _local12 = (((((_local12 == 0)) || ((_local12 == -1)))) ? _local10 : _local12);
                    };
                    this.0HM(_local3.substr(_local11, _local12));
                    _local11 = (_local11 + _local12);
                };
            };
        }

        private function 0HM(_arg1:String):void{
            var _local2:1Jo = new 1WS(_arg1);
            var _local3:BitmapData = this.getBitmapData(_local2, this.1kE());
            this.buffer.push(new Bitmap(_local3));
        }

        private function lu():uint{
            if (this.message.name.charAt(0) == "#")
            {
                return (0xFFA800);
            };
            if (this.message.name.charAt(0) == "@")
            {
                return (0xFFFF00);
            };
            if (this.message.20u == kj)
            {
                return (10944349);
            };
            if (this.message.20u != "")
            {
                return (61695);
            };
            return (0xFF00);
        }

        private function 1kE():uint{
            var _local1:String = this.message.name;
            if (_local1 == uU)
            {
                return (0xFFFF00);
            };
            if (_local1 == 0ZN)
            {
                return (0xFF);
            };
            if (_local1 == 0yL)
            {
                return (16734981);
            };
            if (_local1 == ERROR)
            {
                return (0xFF0000);
            };
            if (_local1.charAt(0) == "@")
            {
                return (0xFFFF00);
            };
            if (this.message.20u == kj)
            {
                return (10944349);
            };
            if (this.message.20u != "")
            {
                return (61695);
            };
            return (0xFFFFFF);
        }

        private function getBitmapData(_arg1:1Jo, _arg2:uint):BitmapData{
            var _local3:String = this.Wy.TM();
            var _local4:Boolean = Parameters.data_["forceChatQuality"];
            ((_local4) && (this.Wy.0PF(StageQuality.HIGH)));
            var _local5:BitmapData = this.factory.make(_arg1, 14, _arg2, true, 1Ab, true);
            ((_local4) && (this.Wy.0PF(_local3)));
            return (_local5);
        }

        private function 06a():void{
            var _local1:TextFormat = g3.getTextFormat();
            _local1.font = this.0sQ.0sD().getName();
            g3.defaultTextFormat = _local1;
        }


    }
}//package 0Fa

