// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1YL.sh

package 1YL{
    import 1uF.1Mf;
    import go.0Ip;
    import go.0By;
    import go.ZP;
    import go.Sr;
    import go.1YO;
    import 1nd.1Qv;
    import flash.system.System;

    public final class sh extends 1Mf {

        [Inject]
        public var log:0Ip;
        [Inject]
        public var 1XE:0By;
        [Inject]
        public var 0EI:ZP;
        [Inject]
        public var clear:Sr;
        [Inject]
        public var copy:1YO;
        [Inject]
        public var view:1Z7;


        override public function initialize():void{
            this.log.add(this.Ut);
            this.1XE.add(this.0YS);
            this.0EI.add(this.1Jc);
            this.clear.add(this.1I9);
            this.copy.add(this.Hb);
        }

        override public function destroy():void{
            this.log.remove(this.Ut);
            this.1XE.remove(this.0YS);
            this.0EI.remove(this.1Jc);
            this.clear.remove(this.1I9);
            this.copy.remove(this.Hb);
        }

        private function Ut(_arg1:String):void{
            this.view.log(_arg1);
        }

        private function 0YS(_arg1:1Qv):void{
            this.view.1XE(_arg1);
        }

        private function 1Jc(_arg1:String):void{
            this.view.0EI(_arg1);
        }

        private function 1I9():void{
            this.view.clear();
        }

        private function Hb():void{
            System.setClipboard(this.view.1UU());
        }


    }
}//package 1YL

