// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.override

package Ct{
    import 1uF.1Mf;
    import 0YY.125;
    import 5z.0tK;

    public class override extends 1Mf {

        [Inject]
        public var view:1-9;
        [Inject]
        public var 0Bk:125;


        override public function initialize():void{
            this.view.pC.add(this.1jl);
            this.view.init();
        }

        private function 1jl(_arg1:0tK):void{
            this.0Bk.dispatch(_arg1);
        }

        override public function destroy():void{
        }


    }
}//package Ct

