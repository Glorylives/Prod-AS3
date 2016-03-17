// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ix.1UX

package 0Ix{
    import 1dX.1Ai;
    import flash.display.DisplayObject;
    import 0gd.GTween;

    public class 1UX extends 1Ai {

        public function 1UX(_arg1:DisplayObject){
            super(_arg1);
        }

        override public function start():void{
            var _local1:GTween = new GTween(target, 1, {alpha:0});
            _local1.onComplete = this.0T0;
        }

        private function 0T0(_arg1:GTween):void{
            var _local2:GTween = new GTween(target, (1.4 / 2), {alpha:1});
            _local2.onComplete = this.0ni;
        }

        private function 0ni(_arg1:GTween):void{
            onComplete();
        }


    }
}//package 0Ix

