// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.0-h

package 1PB{
    import 1uF.1Mf;
    import _1aA.1zu;
    import kY.0v-;
    import 0ci.H9;

    public class 0-h extends 1Mf {

        [Inject]
        public var view:1zu;
        [Inject]
        public var 07D:0v-;


        override public function initialize():void{
            this.view.1bO.add(this.5C);
        }

        override public function destroy():void{
            this.view.1bO.remove(this.5C);
        }

        private function 5C(_arg1:int):void{
            this.07D.dispatch(new H9(this.view.accountId, _arg1));
        }


    }
}//package 1PB

