// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.1hb

package Ct{
    import 1uF.1Mf;
    import 5z.0TC;
    import 0a-.264;

    public class 1hb extends 1Mf {

        [Inject]
        public var 1UK:0TC;
        [Inject]
        public var 1H2:264;


        override public function initialize():void{
            this.1H2.add(this.28);
        }

        override public function destroy():void{
            this.1H2.remove(this.28);
        }

        private function 28():void{
            this.1UK.clear();
        }


    }
}//package Ct

