// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//zr.1HP

package zr{
    import _0OG._22M;
    import flash.utils.Dictionary;
    import _0OG.03A;
    import flash.utils.getQualifiedClassName;
    import i0.SsInternal;
    import sc.3A;
    import sc.1-W;

    public class 1HP implements 1yq {

        private var 00m:Class;
        private var 1TN:_22M;
        private var zv:Object;
        private var 1Rr:Boolean;

        public function 1HP(_arg1:Class, _arg2:_22M){
            this.00m = _arg1;
            this.1TN = _arg2;
        }

        public function apply(_arg1:Class, _arg2:_22M, _arg3:Dictionary):Object{
            return ((this.zv = ((this.zv) || (this.0fD(this.1TN)))));
        }

        private function 0fD(_arg1:_22M):Object{
            if (this.1Rr)
            {
                throw (new 03A(("Forbidden usage of unmapped singleton provider for type " + getQualifiedClassName(this.00m))));
            };
            return (_arg1.SsInternal::18Y(this.00m));
        }

        public function destroy():void{
            this.1Rr = true;
            if (!this.zv)
            {
                return;
            };
            var _local1:3A = this.1TN.2I(this.00m);
            var _local2:1-W = _local1.1iP;
            while (_local2)
            {
                _local2.applyInjection(this.zv, this.00m, this.1TN);
                _local2 = 1-W(_local2.next);
            };
            this.zv = null;
        }


    }
}//package zr

