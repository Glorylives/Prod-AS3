// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.1Nw

package com.company.assembleegameclient.map{
    import com.company.assembleegameclient.engine3d.Face3D;
    import flash.display.BitmapData;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.parameters.Parameters;
    import 1m9.14d;
    import flash.display.IGraphicsData;

    public class 1Nw {

        public var animate_:int;
        public var face_:Face3D;
        public var 1mN:Number = 0;
        public var 1FK:Number = 0;
        public var animateDx_:Number = 0;
        public var animateDy_:Number = 0;

        public function 1Nw(_arg1:BitmapData, _arg2:Vector.<Number>, _arg3:Number, _arg4:Number, _arg5:int, _arg6:Number, _arg7:Number){
            this.face_ = new Face3D(_arg1, _arg2, Square.0Gy.concat());
            this.1mN = _arg3;
            this.1FK = _arg4;
            if (((!((this.1mN == 0))) || (!((this.1FK == 0)))))
            {
                this.face_.bitmapFill_.repeat = true;
            };
            this.animate_ = _arg5;
            if (this.animate_ != 1Ad.15O)
            {
                this.face_.bitmapFill_.repeat = true;
            };
            this.animateDx_ = _arg6;
            this.animateDy_ = _arg7;
        }

        public function dispose():void{
            this.face_.dispose();
            this.face_ = null;
        }

        public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):Boolean{
            var _local4:Number;
            var _local5:Number;
            if (this.animate_ != 1Ad.15O)
            {
                switch (this.animate_)
                {
                    case 1Ad.ms:
                        _local4 = (this.1mN + Math.sin(((this.animateDx_ * _arg3) / 1000)));
                        _local5 = (this.1FK + Math.sin(((this.animateDy_ * _arg3) / 1000)));
                        break;
                    case 1Ad.sT:
                        _local4 = (this.1mN + ((this.animateDx_ * _arg3) / 1000));
                        _local5 = (this.1FK + ((this.animateDy_ * _arg3) / 1000));
                        break;
                };
            } else
            {
                _local4 = this.1mN;
                _local5 = this.1FK;
            };
            if (Parameters.TP())
            {
                14d.1xq(this.face_.bitmapFill_, _local4, _local5);
                _local5 = 0;
                _local4 = _local5;
            };
            this.face_.yL.length = 0;
            this.face_.yL.push((0 + _local4), (0 + _local5), 0, (1 + _local4), (0 + _local5), 0, (1 + _local4), (1 + _local5), 0, (0 + _local4), (1 + _local5), 0);
            this.face_.0tI(this.face_.yL);
            return (this.face_.draw(_arg1, _arg2));
        }


    }
}//package com.company.assembleegameclient.map

