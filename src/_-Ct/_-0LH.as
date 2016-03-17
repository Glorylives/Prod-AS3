// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.0LH

package Ct{
    import 1uF.1Mf;
    import 5z.0OH;
    import 21k.0LB;
    import 5z.2w;
    import 5z.1dH;
    import 5z.0tK;

    public class 0LH extends 1Mf {

        [Inject]
        public var view:uX;
        [Inject]
        public var 1j2:0OH;
        [Inject]
        public var 1fR:0LB;


        override public function initialize():void{
            var _local1:2w = this.1j2.19J[this.view.index];
            var _local2:1dH = _local1.0bg;
            this.1fR.add(this.0JC);
            this.view.0aH.add(this.1CR);
            this.view.disabled = this.1UD(_local2);
            this.view.init(_local1);
        }

        private function 1CR(_arg1:0tK):void{
            this.1j2.W7(_arg1.u5());
            this.1fR.dispatch();
        }

        private function 0JC():void{
            this.view.0vg(this.1j2.05i());
        }

        private function 1UD(_arg1:1dH):Boolean{
            var _local2:0tK = this.1j2.0Qq();
            var _local3:1dH = 1dH.0Yx(_local2.1qz());
            var _local4:int = _local3.17h;
            return ((_arg1.17h > _local4));
        }


    }
}//package Ct

