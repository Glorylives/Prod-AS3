// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.1PW

package 1oP{
    import 1uF.1Mf;
    import tn.0ec;

    import flash.display.DisplayObject;
    import tn.0dE;

    public class 1PW extends 1Mf {

        [Inject]
        public var view:0sb;
        [Inject]
        public var model:0ec;
        [Inject]
        public var factory:1H;


        override public function initialize():void{
            this.model.selected.add(this.08J);
            this.08J(this.model.0NO());
        }

        override public function destroy():void{
            this.model.selected.remove(this.08J);
        }

        private function 08J(_arg1:0dE):void{
            var _local2:Vector.<DisplayObject> = this.factory.make(_arg1.0sP);
            this.view.setItems(_local2);
        }


    }
}//package 1oP

