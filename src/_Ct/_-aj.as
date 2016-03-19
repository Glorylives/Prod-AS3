// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.aj

package Ct{
    import 1uF.1Mf;
    import 5z.zL;
    import 0YY.0FI;
    import aq.Account;
    import 1qg.0io;
    import 1qg.11S;
    import 5z.0FX;
    import 5z.1dH;
    import 5z.1jA;

    public class aj extends 1Mf {

        [Inject]
        public var view:YardUpgraderView;
        [Inject]
        public var vM:zL;
        [Inject]
        public var 0tR:0FI;
        [Inject]
        public var account:Account;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;


        override public function initialize():void{
            var _local1:0FX = new 0FX();
            var _local2:int = this.vM.0XL();
            var _local3:int = (((_local2 < 1dH.cn.17h)) ? 1dH.1tV((_local2 + 1)).17h : 1dH.cn.17h);
            _local1.22J = 1dH.1tV(_local2).value;
            _local1.wK = 1dH.1tV(_local3).value;
            _local1.0m9 = this.vM.0rF();
            _local1.02o = this.vM.22q();
            this.view.init(_local1);
            this.view.0Or.add(this.0ED);
            this.view.1jE.add(this.1cQ);
        }

        private function 1cQ(_arg1:int):void{
            this.vm(0);
        }

        private function 0ED(_arg1:int):void{
            this.vm(1);
        }

        private function vm(_arg1:uint):void{
            var _local2:int = this.vM.Gr();
            var _local3:1jA = new 1jA(_local2, _arg1);
            this.KW.dispatch();
            this.0tR.dispatch(_local3);
        }


    }
}//package Ct

