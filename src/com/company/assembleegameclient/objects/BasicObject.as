// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.BasicObject

package com.company.assembleegameclient.objects{
    import com.company.assembleegameclient.map.Map;
    import com.company.assembleegameclient.map.Square;
    import __AS3__.vec.Vector;
    import Jt.4b;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.1C8;
    import __AS3__.vec.*;

    public class BasicObject {

        private static var xO:int = 0;

        public var map_:Map;
        public var xy:Square;
        public var objectId_:int;
        public var x_:Number;
        public var y_:Number;
        public var z_:Number;
        public var 1QM:Boolean;
        public var 1th:Boolean;
        public var 14e:Vector.<Number>;
        public var 4M:Vector.<Number>;
        public var sortVal_:Number;

        public function BasicObject(){
            this.14e = new Vector.<Number>();
            this.4M = new Vector.<Number>();
            super();
            this.clear();
        }

        public static function 0Zh():int{
            return ((0x7F000000 | xO++));
        }


        public function clear():void{
            this.map_ = null;
            this.xy = null;
            this.objectId_ = -1;
            this.x_ = 0;
            this.y_ = 0;
            this.z_ = 0;
            this.1QM = false;
            this.1th = false;
            this.14e.length = 0;
            this.4M.length = 0;
            this.sortVal_ = 0;
        }

        public function dispose():void{
            this.map_ = null;
            this.xy = null;
            this.14e = null;
            this.4M = null;
        }

        public function update(_arg1:int, _arg2:int):Boolean{
            return (true);
        }

        public function draw3d(_arg1:Vector.<4b>):void{
        }

        public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
        }

        public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
        }

        public function 14-(_arg1:1C8):void{
            this.14e.length = 0;
            this.14e.push(this.x_, this.y_, 0, this.x_, this.y_, this.z_);
            this.4M.length = 0;
            _arg1.wToS_.transformVectors(this.14e, this.4M);
            this.sortVal_ = this.4M[1];
        }

        public function 0On(_arg1:Number=12):void{
            this.14e.length = 0;
            this.14e.push(this.x_, this.y_, 0, this.x_, this.y_, this.z_);
            this.4M.length = 0;
            this.4M.push((this.x_ * _arg1), (this.y_ * _arg1), 0, (this.x_ * _arg1), (this.y_ * _arg1), 0);
            this.sortVal_ = this.4M[1];
        }

        public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean{
            this.map_ = _arg1;
            this.xy = this.map_.getSquare(_arg2, _arg3);
            if (this.xy == null)
            {
                this.map_ = null;
                return (false);
            };
            this.x_ = _arg2;
            this.y_ = _arg3;
            return (true);
        }

        public function removeFromMap():void{
            this.map_ = null;
            this.xy = null;
        }


    }
}//package com.company.assembleegameclient.objects

