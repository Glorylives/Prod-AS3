// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0dW.0jz

package 0dW{
    import 1uF.1Mf;
    import 0a1.PE;
    import flash.display.DisplayObject;
    import flash.display.Stage;
    import flash.geom.Rectangle;

    public class 0jz extends 1Mf {

        [Inject]
        public var view:2-J;
        [Inject]
        public var resize:PE;


        override public function initialize():void{
            var _local1:Stage = (this.view as DisplayObject).stage;
            var _local2:Rectangle = new Rectangle(0, 0, _local1.stageWidth, _local1.stageHeight);
            this.resize.add(this.onResize);
            this.view.resize(_local2);
        }

        override public function destroy():void{
            this.resize.remove(this.onResize);
        }

        private function onResize(_arg1:Rectangle):void{
            this.view.resize(_arg1);
        }


    }
}//package 0dW

