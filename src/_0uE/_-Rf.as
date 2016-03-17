// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.Rf

package 0uE{
    import 1uF.1Mf;
    import 1qg.0An;
    import 1qg.0io;
    import flash.events.MouseEvent;
    import Ct.q5;
    import Ct.18G;

    public class Rf extends 1Mf {

        [Inject]
        public var view:1Pn;
        [Inject]
        public var d:0An;
        [Inject]
        public var 0n2:0io;


        override public function initialize():void{
            this.view.init();
            this.view.1kJ.addEventListener(MouseEvent.CLICK, this.oq);
            this.view.KO.addEventListener(MouseEvent.CLICK, this.dw);
        }

        override public function destroy():void{
            super.destroy();
        }

        protected function dw(_arg1:MouseEvent):void{
            this.0n2.dispatch(new q5());
        }

        protected function oq(_arg1:MouseEvent):void{
            this.d.dispatch(new 18G());
        }


    }
}//package 0uE

