// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.0O6

package Ct{
    import 1uF.1Mf;
    import 1qg.0io;
    import 5z.0TC;
    import 0YY.0FI;
    import _0OG._22M;
    import 2--.0xA;
    import 5z.0Lz;
    import 1r4.1kP;
    import 1t6.ErrorDialog;

    public class 0O6 extends 1Mf {

        private const 0uk:String = "Pets.fuseError";

        [Inject]
        public var view:q5;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 1UK:0TC;
        [Inject]
        public var 0tR:0FI;
        [Inject]
        public var kf:_22M;


        override public function initialize():void{
            this.view.init(this.1UK);
            this.view.1oD.add(this.21K);
            this.view.1jE.add(this.1cQ);
            this.view.0Or.add(this.0ED);
            this.view.closed.addOnce(this.1qf);
        }

        override public function destroy():void{
            this.view.1oD.remove(this.21K);
            this.view.1jE.remove(this.1cQ);
            this.view.0Or.remove(this.0ED);
        }

        private function 21K(_arg1:String):void{
            this.1UK.caller = q5;
            this.1UK.selected = _arg1;
            this.0n2.dispatch(this.kf.getInstance(0xA));
        }

        private function 0ED(_arg1:int):void{
            var _local2:0Lz;
            if (this.1UK.0fw())
            {
                _local2 = new 0Lz(this.1UK.06h.try (), this.1UK.1lT.try (), 1kP.0Z8);
                this.1qf();
                this.0tR.dispatch(_local2);
            } else
            {
                this.0n2.dispatch(new ErrorDialog(this.0uk));
            }
        }

        private function 1cQ(_arg1:int):void{
            var _local2:0Lz;
            if (this.1UK.0fw())
            {
                _local2 = new 0Lz(this.1UK.06h.try (), this.1UK.1lT.try (), 1kP.1--);
                this.1qf();
                this.0tR.dispatch(_local2);
            } else
            {
                this.0n2.dispatch(new ErrorDialog(this.0uk));
            }
        }

        private function 1qf():void{
            this.1UK.clear();
        }


    }
}//package Ct

