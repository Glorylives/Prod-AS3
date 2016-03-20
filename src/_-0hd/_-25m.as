// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.25m

package 0hd{
    import 1uF.1Mf;
    import aq.Account;
    import 1qg.0io;
    import 1qg.11S;
    import 1ay.tG;
    import _0BB._Fu;
    import WZ.0Te;
    import com.company.util.1X3;

    public class 25m extends 1Mf {

        [Inject]
        public var view:NewChooseNameFrame;
        [Inject]
        public var account:Account;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 057:tG;
        [Inject]
        public var client:_Fu;
        [Inject]
        public var SP:0Te;
        private var name:String;


        override public function initialize():void{
            this.view.choose.add(this.21F);
            this.view.cancel.add(this.onCancel);
        }

        override public function destroy():void{
            this.view.choose.remove(this.21F);
            this.view.cancel.remove(this.onCancel);
        }

        private function 21F(_arg1:String):void{
            this.name = _arg1;
            if (_arg1.length < 1)
            {
                this.view.07n("Name too short");
            } else
            {
                this.1J3();
            }
        }

        private function 1J3():void{
            var _local1:Object = {name:this.name}
            1X3.1J7(_local1, this.account.1Y());
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/setName", _local1);
            this.view.disable();
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.pj();
            } else
            {
                this.1ep(_arg2);
            }
        }

        private function pj():void{
            if (this.SP != null)
            {
                this.SP.setName(this.name);
            }
            this.057.dispatch(this.name);
            this.closeDialogs.dispatch();
        }

        private function 1ep(_arg1:String):void{
            this.view.07n(_arg1);
            this.view.0Eb();
        }

        private function onCancel():void{
            this.closeDialogs.dispatch();
        }


    }
}//package 0hd

