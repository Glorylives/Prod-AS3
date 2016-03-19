// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1a.Y3

package _1a{
    import com.company.assembleegameclient.objects.BasicObject;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsPath;
    import flash.geom.Matrix;
    import flash.display.BitmapData;
    import com.company.util._tu;
    import com.company.assembleegameclient.map.Square;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;

    public class _Y3 extends BasicObject {

        protected var bitmapFill_:GraphicsBitmapFill;
        protected var path_:GraphicsPath;
        protected var vS_:Vector.<Number>;
        protected var _1rx:Matrix;
        public var size_:int;
        public var _0Pk:BitmapData;
        protected var _1Z8:Number = 0;
        public var _0r:Number = 0;

        public function _Y3(_arg1:BitmapData, _arg2:Number){
            this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
            this.path_ = new GraphicsPath(_tu._0xS, null);
            this.vS_ = new Vector.<Number>();
            this._1rx = new Matrix();
            super();
            _1QM = false;
            objectId_ = _0Zh();
            this._0Pk = _arg1;
            z_ = _arg2;
        }

        public function moveTo(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Square;
            _local3 = map_.getSquare(_arg1, _arg2);
            if (!_local3)
            {
                return (false);
            };
            x_ = _arg1;
            y_ = _arg2;
            xy = _local3;
            return (true);
        }

        public function setSize(_arg1:int):void{
            this.size_ = ((_arg1 / 100) * 5);
        }

        override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            var texture:BitmapData;
            var w:int;
            var h:int;
            var graphicsData:Vector.<IGraphicsData> = _arg1;
            var camera:_1C8 = _arg2;
            var time:int = _arg3;
            try
            {
                texture = this._0Pk;
                w = texture.width;
                h = texture.height;
                if (((!(w)) || (!(h))))
                {
                    return;
                };
                this.vS_.length = 0;
                this.vS_.push((_4M[3] - (w / 2)), (_4M[4] - (h / 2)), (_4M[3] + (w / 2)), (_4M[4] - (h / 2)), (_4M[3] + (w / 2)), (_4M[4] + (h / 2)), (_4M[3] - (w / 2)), (_4M[4] + (h / 2)));
                this.path_.data = this.vS_;
                this.bitmapFill_.bitmapData = texture;
                this._1rx.identity();
                if (((this._0r) || (this._1Z8)))
                {
                    if (this._1Z8)
                    {
                        this._0r = (this._0r + this._1Z8);
                    };
                    this._1rx.translate((-(w) / 2), (-(h) / 2));
                    this._1rx.rotate(this._0r);
                    this._1rx.translate((w / 2), (h / 2));
                };
                this._1rx.translate(this.vS_[0], this.vS_[1]);
                this.bitmapFill_.matrix = this._1rx;
                graphicsData.push(this.bitmapFill_);
                graphicsData.push(this.bitmapFill_);
                graphicsData.push(this.path_);
                graphicsData.push(_tu.END_FILL);
            } catch(error:Error)
            {
                return;
            };
        }


    }
}//package 1a

