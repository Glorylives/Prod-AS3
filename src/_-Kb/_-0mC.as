// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Kb.0mC

package Kb{
    import 1mG.20-;
    import 1Bg.1AE;
    import 1cI.3D;
    import WZ.0Te;
    import 1Cs.ds;
    import 0ci.1WK;
    import 1cI.0wV;
    import 1cI.06P;
    import 1cI.9f;

    public class 0mC {

        [Inject]
        public var 1LU:20-;
        [Inject]
        public var update:j4;
        [Inject]
        public var error:1AE;
        [Inject]
        public var ES:3D;
        [Inject]
        public var player:0Te;
        [Inject]
        public var death:ds;
        [Inject]
        public var model:1WK;


        public function execute():void{
            this.1LU.charId = this.f3();
            var _local1:0wV = new 0wV(this.1LU, this.Q0(), this.1QZ());
            this.ES.add(_local1);
            _local1.start();
        }

        private function f3():int{
            if (((this.player.kU()) && (this.death.UD())))
            {
                return (this.death.17C().charId_);
            }
            return (-1);
        }

        private function Q0():9f{
            return (new 06P(this.update));
        }

        private function 1QZ():9f{
            return (new 06P(this.error, this.1LU));
        }


    }
}//package Kb

