// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CU.1CD

package _CU{
    import flash.filters.GlowFilter;
    import AO.nz;
    import AO.Xk;
    import 1n4.1Jo;
    import flash.geom.Matrix;
    import flash.display.BitmapData;
    import flash.text.TextFieldAutoSize;
    import com.company.util.PointUtil;

    public class 1CD {

        private const 0Sv:GlowFilter = new GlowFilter(0, 1, 3, 3, 2, 1);

        public var padding:int = 0;
        private var 1el:_13j;

        public function 1CD(_arg1:nz, _arg2:Xk){
            this.1el = new _13j();
            this.1el.9j(_arg1.0sD());
            this.1el.ri(_arg2.bF());
            this.1el.1jM(_arg2.0BA());
        }

        public function make(_arg1:1Jo, _arg2:int, _arg3:uint, _arg4:Boolean, _arg5:Matrix, _arg6:Boolean):BitmapData{
            this.1fF(_arg2, _arg3, _arg4, _arg1);
            return (this.1Yy(_arg6, _arg5));
        }

        private function 1fF(_arg1:int, _arg2:uint, _arg3:Boolean, _arg4:1Jo):void{
            this.1el.setSize(_arg1).setColor(_arg2).setBold(_arg3).setAutoSize(TextFieldAutoSize.LEFT);
            this.1el.setStringBuilder(_arg4);
        }

        private function 1Yy(_arg1:Boolean, _arg2:Matrix):BitmapData{
            var _local3:int = ((this.1el.width + this.padding) + _arg2.tx);
            var _local4:int = (this.1el.height + this.padding);
            var _local5:BitmapData = new HL(_local3, _local4, true, 0);
            _local5.draw(this.1el, _arg2);
            ((_arg1) && (_local5.applyFilter(_local5, _local5.rect, PointUtil.1EH, this.0Sv)));
            return (_local5);
        }


    }
}//package _CU

