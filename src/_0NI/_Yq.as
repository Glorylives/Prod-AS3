// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI._Yq

package _0NI{
    import flash.utils.Dictionary;

    public class _Yq {

        private const _1IU:Dictionary = new Dictionary(false);


        public function _4F(_arg1:Object):void{
            this._1IU[_arg1] = true;
        }

        public function release(_arg1:Object):void{
            delete this._1IU[_arg1];
        }

        public function flush():void{
            var _local1:Object;
            for (_local1 in this._1IU)
            {
                delete this._1IU[_local1];
            }
        }


    }
}//package 0NI

