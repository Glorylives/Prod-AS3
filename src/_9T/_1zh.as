// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//9T.1zh

package _9T{
import _1n4._1Jo;

import com.company.assembleegameclient.map._1C8;

import flash.display.Sprite;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.geom.Point;
    import _CU._13j;
    import flash.filters.GlowFilter;
    import flash.display.Bitmap;
    import flash.display.BitmapData;
    import flash.geom.Matrix;

    public class _1zh extends Sprite implements _0CC {

        public const _1wl:int = 40;

        public var go_:GameObject;
        public var _0aO:Point;
        public var color_:uint;
        public var lifetime_:int;
        public var pb:int;
        private var startTime_:int = 0;
        private var _1kL:_13j;

        public function _1zh(_arg1:GameObject, _arg2:uint, _arg3:int, _arg4:int=0){
            this.go_ = _arg1;
            this._0aO = new Point(0, (((-(_arg1.texture_.height) * (_arg1.size_ / 100)) * 5) - 20));
            this.color_ = _arg2;
            this.lifetime_ = _arg3;
            this.pb = _arg4;
            this._1kL = new _13j().setSize(24).setColor(_arg2).setBold(true);
            this._1kL.filters = [new GlowFilter(0, 1, 4, 4, 2, 1)];
            addChild(this._1kL);
            visible = false;
        }

        public function draw(_arg1:_1C8, _arg2:int):Boolean{
            if (this.startTime_ == 0)
            {
                this.startTime_ = (_arg2 + this.pb);
            };
            if (_arg2 < this.startTime_)
            {
                visible = false;
                return (true);
            };
            var _local3:int = (_arg2 - this.startTime_);
            if ((((_local3 > this.lifetime_)) || (((!((this.go_ == null))) && ((this.go_.map_ == null))))))
            {
                return (false);
            };
            if ((((this.go_ == null)) || (!(this.go_._1th))))
            {
                visible = false;
                return (true);
            };
            visible = true;
            x = ((((this.go_)!=null) ? this.go_._1zh[0] : 0) + (((this._0aO)!=null) ? this._0aO.x : 0));
            var _local4:Number = ((_local3 / this.lifetime_) * this._1wl);
            y = (((((this.go_)!=null) ? this.go_._4M[1] : 0) + (((this._0aO)!=null) ? this._0aO.y : 0)) - _local4);
            return (true);
        }

        public function _1db():GameObject{
            return (this.go_);
        }

        public function dispose():void{
            parent.removeChild(this);
        }

        public function setStringBuilder(_arg1:_1Jo):void{
            this._1kL.textChanged.add(this.onTextChanged);
            this._1kL.setStringBuilder(_arg1);
        }

        private function onTextChanged():void{
            var _local2:Bitmap;
            var _local1:BitmapData = new BitmapData(this._1kL.width, this._1kL.height, true, 0);
            _local2 = new Bitmap(_local1);
            _local1.draw(this._1kL, new Matrix());
            _local2.x = (_local2.x - (_local2.width * 0.5));
            _local2.y = (_local2.y - (_local2.height * 0.5));
            addChild(_local2);
            removeChild(this._1kL);
            this._1kL = null;
        }


    }
}//package 9T

