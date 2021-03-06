﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.Particle

package _1Np{
    import com.company.assembleegameclient.objects.BasicObject;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsPath;
    import flash.geom.Matrix;
    import com.company.util._tu;
    import com.company.assembleegameclient.map.Square;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.display.BitmapData;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;

    public class Particle extends BasicObject {

        public var size_:int;
        public var color_:uint;
        protected var bitmapFill_:GraphicsBitmapFill;
        protected var path_:GraphicsPath;
        protected var vS_:Vector.<Number>;
        protected var _1rx:Matrix;

        public function Particle(_arg1:uint, _arg2:Number, _arg3:int){
            this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
            this.path_ = new GraphicsPath(_tu._0xS, null);
            this.vS_ = new Vector.<Number>();
            this._1rx = new Matrix();
            super();
            objectId_ = _0Zh();
            this._0Rj(_arg2);
            this.setColor(_arg1);
            this.setSize(_arg3);
        }

        public function moveTo(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Square;
            _local3 = map_.getSquare(_arg1, _arg2);
            if (_local3 == null)
            {
                return (false);
            }
            x_ = _arg1;
            y_ = _arg2;
            xy = _local3;
            return (true);
        }

        public function rm(_arg1:Number, _arg2:Number):Boolean{
            x_ = _arg1;
            y_ = _arg2;
            return (true);
        }

        public function setColor(_arg1:uint):void{
            this.color_ = _arg1;
        }

        public function _0Rj(_arg1:Number):void{
            z_ = _arg1;
        }

        public function setSize(_arg1:int):void{
            this.size_ = ((_arg1 / 100) * 5);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            var _local4:BitmapData = TextureRedrawer.redrawSolidSquare(this.color_, this.size_);
            var _local5:int = _local4.width;
            var _local6:int = _local4.height;
            this.vS_.length = 0;
            this.vS_.push((_4M[3] - (_local5 / 2)), (_4M[4] - (_local6 / 2)), (_4M[3] + (_local5 / 2)), (_4M[4] - (_local6 / 2)), (_4M[3] + (_local5 / 2)), (_4M[4] + (_local6 / 2)), (_4M[3] - (_local5 / 2)), (_4M[4] + (_local6 / 2)));
            this.path_.data = this.vS_;
            this.bitmapFill_.bitmapData = _local4;
            this._1rx.identity();
            this._1rx.translate(this.vS_[0], this.vS_[1]);
            this.bitmapFill_.matrix = this._1rx;
            _arg1.push(this.bitmapFill_);
            _arg1.push(this.path_);
            _arg1.push(_tu.END_FILL);
        }


    }
}//package 1Np

