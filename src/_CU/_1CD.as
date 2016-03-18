// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CU.1CD

package _CU{
import _1n4._1Jo;

import _AO._Xk;

import _AO._nz;

import flash.filters.GlowFilter;
    import flash.geom.Matrix;
    import flash.display.BitmapData;
    import flash.text.TextFieldAutoSize;
    import com.company.util.PointUtil;

    public class _1CD {

        private const _0Sv:GlowFilter = new GlowFilter(0, 1, 3, 3, 2, 1);

        public var padding:int = 0;
        private var _1el:_13j;

        public function _1CD(_arg1:_nz, _arg2:_Xk){
            this._1el = new _13j();
            this._1el._9j(_arg1._0sD());
            this._1el.ri(_arg2.bF());
            this._1el._1jM(_arg2._0BA());
        }

        public function make(_arg1:_1Jo, _arg2:int, _arg3:uint, _arg4:Boolean, _arg5:Matrix, _arg6:Boolean):BitmapData{
            this._1fF(_arg2, _arg3, _arg4, _arg1);
            return (this._1Yy(_arg6, _arg5));
        }

        private function _1fF(_arg1:int, _arg2:uint, _arg3:Boolean, _arg4:_1Jo):void{
            this._1el.setSize(_arg1).setColor(_arg2).setBold(_arg3).setAutoSize(TextFieldAutoSize.LEFT);
            this._1el.setStringBuilder(_arg4);
        }

        private function _1Yy(_arg1:Boolean, _arg2:Matrix):BitmapData{
            var _local3:int = ((this._1el.width + this.padding) + _arg2.tx);
            var _local4:int = (this._1el.height + this.padding);
            var _local5:BitmapData = new HL(_local3, _local4, true, 0);
            _local5.draw(this._1el, _arg2);
            ((_arg1) && (_local5.applyFilter(_local5, _local5.rect, PointUtil._1EH, this._0Sv)));
            return (_local5);
        }


    }
}//package _CU

