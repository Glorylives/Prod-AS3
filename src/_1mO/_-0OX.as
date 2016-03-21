// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.0OX

package 1mO{
    import 1uF.1Mf;
    import 1wn.1t;
    import 0sk.26Z;

    import 0sk.BZ;

    public class 0OX extends 1Mf {

        [Inject]
        public var view:0Uy;
        [Inject]
        public var update:1t;
        [Inject]
        public var model:26Z;


        override public function initialize():void{
            this.view.update(this.model.news);
            this.update.add(this.Q1);
        }

        override public function destroy():void{
            this.update.remove(this.Q1);
        }

        private function Q1(_arg1:Vector.<BZ>):void{
            this.view.update(_arg1);
        }


    }
}//package 1mO

