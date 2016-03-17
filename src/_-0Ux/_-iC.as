// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ux.iC

package 0Ux{
    import 1uF.1Mf;
    import 1Bt.l-;
    import 1qg.11S;
    import 1g8.0Hw;
    import aq.0VE;

    public class iC extends 1Mf {

        [Inject]
        public var view:1ta;
        [Inject]
        public var model:l-;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 13l:0Hw;


        override public function initialize():void{
            this.view.close.add(this.D2);
            this.view.select.add(this.onSelect);
            this.view.9L();
        }

        override public function destroy():void{
            this.view.close.remove(this.D2);
            this.view.select.remove(this.onSelect);
        }

        private function D2():void{
            this.closeDialogs.dispatch();
        }

        private function onSelect(_arg1:String):void{
            var _local2:0VE = new 0VE();
            _local2.offer = this.model.9W();
            _local2.paymentMethod = _arg1;
            this.13l.dispatch(_local2);
            this.closeDialogs.dispatch();
        }


    }
}//package 0Ux

