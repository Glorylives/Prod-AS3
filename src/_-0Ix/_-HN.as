// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ix.HN

package 0Ix{
    import 1dX.1Ai;
    import flash.display.DisplayObject;
    import 0gd.GTween;

    public class HN extends 1Ai {

        public function HN(_arg1:DisplayObject){
            super(_arg1);
        }

        override public function start():void{
            var _local1:GTween = new GTween(target, 1, {alpha:1});
            _local1.onComplete = this.0T0;
        }

        private function 0T0(_arg1:GTween):void{
            new GTween(target, 1, {alpha:0});
        }


    }
}//package 0Ix

