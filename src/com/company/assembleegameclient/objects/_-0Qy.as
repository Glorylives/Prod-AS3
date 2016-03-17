// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.0Qy

package com.company.assembleegameclient.objects{
    import flash.geom.ColorTransform;
    import flash.display.BitmapData;
    import 1m9.14d;

    public class 0Qy {

        public var startTime_:int;
        public var color_:uint;
        public var jG:int;
        public var 90:int;
        public var 0a5:int;
        public var 23X:int;
        public var Mp:int;

        public function 0Qy(_arg1:int, _arg2:uint, _arg3:Number, _arg4:int){
            this.startTime_ = _arg1;
            this.color_ = _arg2;
            this.jG = (_arg3 * 1000);
            this.90 = _arg4;
            this.0a5 = ((_arg2 >> 16) & 0xFF);
            this.23X = ((_arg2 >> 8) & 0xFF);
            this.Mp = (_arg2 & 0xFF);
        }

        public function apply(_arg1:BitmapData, _arg2:int):BitmapData{
            var _local3:int = ((_arg2 - this.startTime_) % this.jG);
            var _local4:Number = Math.sin(((_local3 / this.jG) * Math.PI));
            var _local5:Number = (_local4 * 0.5);
            var _local6:ColorTransform = new ColorTransform((1 - _local5), (1 - _local5), (1 - _local5), 1, (_local5 * this.0a5), (_local5 * this.23X), (_local5 * this.Mp), 0);
            var _local7:BitmapData = _arg1.clone();
            _local7.colorTransform(_local7.rect, _local6);
            return (_local7);
        }

        public function gV(_arg1:BitmapData, _arg2:int):void{
            var _local3:int = ((_arg2 - this.startTime_) % this.jG);
            var _local4:Number = Math.sin(((_local3 / this.jG) * Math.PI));
            var _local5:Number = (_local4 * 0.5);
            var _local6:ColorTransform = new ColorTransform((1 - _local5), (1 - _local5), (1 - _local5), 1, (_local5 * this.0a5), (_local5 * this.23X), (_local5 * this.Mp), 0);
            14d.0bB(_arg1, _local6);
        }

        public function 0DF(_arg1:int):Boolean{
            return ((_arg1 > (this.startTime_ + (this.jG * this.90))));
        }


    }
}//package com.company.assembleegameclient.objects

