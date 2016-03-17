// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//zr.pf

package zr{
    import _0OG._22M;
    import flash.utils.Dictionary;

    public class pf extends 1-E {

        public var kf:_22M;

        public function pf(_arg1:_22M, _arg2:1yq){
            super(_arg2);
            this.kf = _arg1;
        }

        override public function apply(_arg1:Class, _arg2:_22M, _arg3:Dictionary):Object{
            return (provider.apply(_arg1, this.kf, _arg3));
        }


    }
}//package zr

