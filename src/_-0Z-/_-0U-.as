// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Z-.0U-

package 0Z-{
    import _Jy._1HZ;
    import 0uE.0Gd;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.events.MouseEvent;
    import AO.du;
    import 0uE.Py;
    import 5z.0tK;
    import 1n4.AppendingLineBuilder;
    import 5z.0NW;
    import flash.geom.ColorTransform;

    public class 0U- extends 0Aq {

        public const 1oD:_1HZ = new _1HZ();

        public var 1U7:Boolean = false;
        public var 25g:Boolean = false;
        private var sB:0Gd;
        private var 1q-:ColorMatrixFilter;

        public function 0U-(){
            this.sB = new 0Gd();
            this.1q- = new ColorMatrixFilter(MoreColorUtil.1Z6);
            super();
            addEventListener(MouseEvent.CLICK, this.21K);
            this.updateTitle();
        }

        public function updateTitle():void{
            if (((!(icon)) || (contains(icon))))
            {
                setTitle(du.1Qu, {});
            };
        }

        private function 21K(_arg1:MouseEvent):void{
            if (!this.25g)
            {
                this.1oD.dispatch();
            };
        }

        public function mL(_arg1:0tK):void{
            var _local2:Py = this.sB.create(_arg1, 48);
            setIcon(_local2);
        }

        public function Sz(_arg1:0tK):void{
            var _local2:AppendingLineBuilder;
            if (_arg1)
            {
                this.mL(_arg1);
                setTitle(du.1h6, {data:_arg1.getName()});
                _local2 = new AppendingLineBuilder();
                _local2.pushParams(_arg1.1qz());
                ((this.1U7) && (_local2.pushParams(0NW.1So(_arg1.1m7()))));
                iY(du.1h6, {data:_local2});
            };
        }

        public function dm(_arg1:Boolean):void{
            var _local2:ColorTransform;
            if (this.25g != _arg1)
            {
                this.25g = _arg1;
                icon.filters = ((_arg1) ? [this.1q-] : []);
                _local2 = ((_arg1) ? MoreColorUtil.1lu : new ColorTransform());
                icon.transform.colorTransform = _local2;
            };
        }


    }
}//package 0Z-

