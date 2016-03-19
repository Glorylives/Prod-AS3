// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Z-.0U-

package _0Z{
import _1n4.AppendingLineBuilder;

import _5z._0NW;

import _5z._0tK;

import _AO._du;

import _Jy._1HZ;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.events.MouseEvent;
    import flash.geom.ColorTransform;

    public class _0U extends _0Aq {

        public const _1oD:_1HZ = new _1HZ();

        public var _1U7:Boolean = false;
        public var _25g:Boolean = false;
        private var sB:_0Gd;
        private var _1q:ColorMatrixFilter;

        public function _0U(){
            this.sB = new _0Gd();
            this._1q = new ColorMatrixFilter(MoreColorUtil._1Z6);
            super();
            addEventListener(MouseEvent.CLICK, this._21K);
            this.updateTitle();
        }

        public function updateTitle():void{
            if (((!(icon)) || (contains(icon))))
            {
                setTitle(_du._1Qu, {});
            };
        }

        private function _21K(_arg1:MouseEvent):void{
            if (!this._25g)
            {
                this._1oD.dispatch();
            };
        }

        public function mL(_arg1:_0tK):void{
            var _local2:Py = this.sB.create(_arg1, 48);
            setIcon(_local2);
        }

        public function Sz(_arg1:_0tK):void{
            var _local2:AppendingLineBuilder;
            if (_arg1)
            {
                this.mL(_arg1);
                setTitle(_du._1h6, {data:_arg1.getName()});
                _local2 = new AppendingLineBuilder();
                _local2.pushParams(_arg1._1qz());
                ((this._1U7) && (_local2.pushParams(_0NW._1So(_arg1._1m7()))));
                iY(_du._1h6, {data:_local2});
            };
        }

        public function dm(_arg1:Boolean):void{
            var _local2:ColorTransform;
            if (this._25g != _arg1)
            {
                this._25g = _arg1;
                icon.filters = ((_arg1) ? [this._1q] : []);
                _local2 = ((_arg1) ? MoreColorUtil._1lu : new ColorTransform());
                icon.transform.colorTransform = _local2;
            };
        }


    }
}//package 0Z-

