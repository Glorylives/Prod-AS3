// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1JQ.1Gg

package 1JQ{
    import flash.utils.Dictionary;
    import rK.0sO;
    import rz.0Mw;
    import 114.0lw;
    import rz.1cl;
    import 114.*;

    public class 1Gg implements 250, 0w0, 0ME {

        private const Xn:Dictionary = new Dictionary();

        private var _matcher:0sO;
        private var _handler:0Mw;

        public function 1Gg(_arg1:0sO, _arg2:0Mw){
            this._matcher = _arg1;
            this._handler = _arg2;
        }

        public function 1TU(_arg1:Class):0lw{
            return (((this.1GY(_arg1)) || (this.pN(_arg1))));
        }

        public function 0lF(_arg1:Class):1cl{
            return (this.Xn[_arg1]);
        }

        public function qW(_arg1:Class):void{
            var _local2:1cl = this.Xn[_arg1];
            delete this.Xn[_arg1];
            this._handler.oE(_local2);
        }

        public function 0qi():void{
            var _local1:1cl;
            for each (_local1 in this.Xn)
            {
                delete this.Xn[_local1.1Y1];
                this._handler.oE(_local1);
            };
        }

        private function pN(_arg1:Class):04G{
            var _local2:04G = new 04G(this._matcher, _arg1);
            this._handler.1cM(_local2);
            this.Xn[_arg1] = _local2;
            return (_local2);
        }

        private function 1GY(_arg1:Class):04G{
            var _local2:04G = this.Xn[_arg1];
            if (_local2)
            {
                _local2.0gc();
            };
            return (_local2);
        }


    }
}//package 1JQ

