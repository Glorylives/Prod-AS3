// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.Jw

package com.company.assembleegameclient.map{
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.objects.BasicObject;
    import flash.display.IGraphicsData;
    import flash.events.Event;
    import flash.utils.Dictionary;
    import flash.utils.getTimer;
    import com.company.assembleegameclient.objects.GameObject;
    import 1Np.1wN;
    import g0.1tk;
    import 1Np.ConfettiEffect;
    import 1Np.Bg;
    import __AS3__.vec.*;

    public class Jw extends Map {

        public static const 1DD:int = 1;
        public static const 0ZG:int = 2;
        public static const MA:Number = 16;

        private var 0yp:Boolean = false;
        private var 22N:Vector.<BasicObject>;
        private var Wm:Vector.<int>;
        private var 0hO:uint = 0;
        private var SD:uint = 0;
        private var time:uint = 0;
        private var graphicsData_:Vector.<IGraphicsData>;

        public function Jw(_arg1:int=-1){
            this.22N = new Vector.<BasicObject>();
            this.Wm = new Vector.<int>();
            this.graphicsData_ = new Vector.<IGraphicsData>();
            super(null);
            if (_arg1 == 1DD)
            {
                addEventListener(Event.ENTER_FRAME, this.1ZB);
            };
            if (_arg1 == 0ZG)
            {
                addEventListener(Event.ENTER_FRAME, this.Kd);
            };
        }

        public static function 0Gb(_arg1:Number):Number{
            return ((_arg1 / MA));
        }


        override public function addObj(_arg1:BasicObject, _arg2:Number, _arg3:Number):void{
            _arg1.x_ = _arg2;
            _arg1.y_ = _arg3;
            if (this.0yp)
            {
                this.22N.push(_arg1);
            } else
            {
                this.internalAddObj(_arg1);
            };
        }

        override public function internalAddObj(_arg1:BasicObject):void{
            var _local2:Dictionary = 1n5;
            if (_local2[_arg1.objectId_] != null)
            {
                return;
            };
            _arg1.map_ = this;
            _local2[_arg1.objectId_] = _arg1;
        }

        override public function internalRemoveObj(_arg1:int):void{
            var _local2:Dictionary = 1n5;
            var _local3:BasicObject = _local2[_arg1];
            if (_local3 == null)
            {
                return;
            };
            _local3.removeFromMap();
            delete _local2[_arg1];
        }

        override public function update(_arg1:int, _arg2:int):void{
            var _local3:BasicObject;
            var _local4:int;
            this.0yp = true;
            for each (_local3 in 1n5)
            {
                if (!_local3.update(_arg1, _arg2))
                {
                    this.Wm.push(_local3.objectId_);
                };
            };
            this.0yp = false;
            for each (_local3 in this.22N)
            {
                this.internalAddObj(_local3);
            };
            this.22N.length = 0;
            for each (_local4 in this.Wm)
            {
                this.internalRemoveObj(_local4);
            };
            this.Wm.length = 0;
        }

        override public function draw(_arg1:1C8, _arg2:int):void{
            var _local3:BasicObject;
            this.graphicsData_.length = 0;
            var _local4:int;
            for each (_local3 in 1n5)
            {
                _local4++;
                _local3.0On(MA);
                _local3.draw(this.graphicsData_, _arg1, _arg2);
            };
            graphics.clear();
            if (this.graphicsData_.length > 0)
            {
                graphics.drawGraphicsData(this.graphicsData_);
            };
        }

        private function 1ZB(_arg1:Event):void{
            var _local2 = 600;
            var _local3 = 600;
            if (this.time != 0)
            {
                this.0hO = (getTimer() - this.time);
            };
            this.SD = (this.SD + this.0hO);
            this.time = getTimer();
            if (this.SD > 500)
            {
                this.SD = 0;
                this.m-((Math.random() * 600), -100);
            };
            this.update(this.time, this.0hO);
            this.draw(null, this.time);
        }

        private function Kd(_arg1:Event):void{
            if (this.time != 0)
            {
                this.0hO = (getTimer() - this.time);
            };
            this.time = getTimer();
            this.update(this.time, this.0hO);
            this.draw(null, this.time);
        }

        public function 0uX(_arg1:Number, _arg2:Number, _arg3:int=20, _arg4:int=12447231):void{
            var _local5:GameObject = new GameObject(null);
            _local5.x_ = 0Gb(_arg1);
            _local5.y_ = 0Gb(_arg2);
            var _local6:1wN = new 1wN(_local5, _arg3, _arg4);
            this.addObj(_local6, _local5.x_, _local5.y_);
        }

        private function m-(_arg1:Number, _arg2:Number, _arg3:int=20, _arg4:int=12447231):void{
            var _local5:1tk = new 1tk();
            var _local6:1tk = new 1tk();
            _local5.x_ = 0Gb(_arg1);
            _local5.y_ = 0Gb(_arg2);
            _local6.x_ = 0Gb(_arg1);
            _local6.y_ = 0Gb(600);
            var _local7:ConfettiEffect = new ConfettiEffect(_local5, _local6, _arg4, _arg3, true);
            this.addObj(_local7, _local5.x_, _local5.y_);
        }

        public function Xf(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:int=200, _arg6:int=12447231, _arg7:Number=1):void{
            var _local8:GameObject = new GameObject(null);
            _local8.x_ = 0Gb(_arg1);
            _local8.y_ = 0Gb(_arg2);
            var _local9:1tk = new 1tk();
            _local9.x_ = 0Gb(_arg3);
            _local9.y_ = 0Gb(_arg4);
            var _local10:Bg = new Bg(_local8, _local9, _arg6, _arg5, _arg7);
            this.addObj(_local10, _local8.x_, _local8.y_);
        }


    }
}//package com.company.assembleegameclient.map

