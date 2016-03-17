// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//zr.1-E

package zr{
    import _0OG._22M;
    import flash.utils.Dictionary;

    public class _1E implements _1yq {

        public var provider:_1yq;

        public function _1E(_arg1:_1yq){
            this.provider = _arg1;
        }

        public function apply(_arg1:Class, _arg2:_22M, _arg3:Dictionary):Object{
            return (this.provider.apply(_arg1, _arg2, _arg3));
        }

        public function destroy():void{
            this.provider.destroy();
        }


    }
}//package zr

