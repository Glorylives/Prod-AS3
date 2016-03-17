// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.7w

package 1PB{
    import 1uF.1Mf;
    import aq.Account;
    import 14V.0Pv;
    import 1qg.11S;
    import 0eZ.5l;

    public class 7w extends 1Mf {

        [Inject]
        public var account:Account;
        [Inject]
        public var 0G2:0Pv;
        [Inject]
        public var view:pu;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 1yT:5l;


        override public function initialize():void{
            this.0G2.start();
            this.view.UY.add(this.1Tk);
            this.view.cancel.add(this.onCancel);
        }

        override public function destroy():void{
            this.view.UY.remove(this.1Tk);
            this.view.cancel.remove(this.onCancel);
        }

        public function onCancel():void{
            this.closeDialogs.dispatch();
        }

        public function 1Tk():void{
            this.1yT.dispatch();
        }


    }
}//package 1PB

