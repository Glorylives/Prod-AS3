// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.Yq

package 0NI{
    import flash.utils.Dictionary;

    public class Yq {

        private const 1IU:Dictionary = new Dictionary(false);


        public function 4F(_arg1:Object):void{
            this.1IU[_arg1] = true;
        }

        public function release(_arg1:Object):void{
            delete this.1IU[_arg1];
        }

        public function flush():void{
            var _local1:Object;
            for (_local1 in this.1IU)
            {
                delete this.1IU[_local1];
            }
        }


    }
}//package 0NI

