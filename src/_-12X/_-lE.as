// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//12X.lE

package 12X{
    import 0hd.Frame;
    import _Jy._1HZ;
    import 0hd.pv;
    import aq.Account;
    import 0uE.KC;
    import qs.1T5;
    import AO.du;
    import _04_._1JZ;
    import flash.events.MouseEvent;
    import com.company.util.1wL;
    import _0BB._Fu;
    import com.company.util.1X3;
    import _CU._13j;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;

    public class lE extends Frame {

        public var register:_1HZ;
        public var cancel:_1HZ;
        private var 0G1:pv;
        private var account:Account;
        private var 1tf:KC;
        private var 22L:Boolean = false;

        public function lE(){
            this.register = new _1HZ(1T5);
            super(du.1HT, du.26S, du.0Vz);
            this.1Jq();
            removeChild(0er);
            this.account = _1JZ.0JF().getInstance(Account);
            this.0JR();
            this.k8();
            this.addEventListeners();
        }

        private function addEventListeners():void{
            9u.addEventListener(MouseEvent.CLICK, this.03a);
            this.1tf.addEventListener(MouseEvent.CLICK, this.onCancel);
        }

        private function 0JR():void{
            this.0G1 = new pv(du.0Xh, false);
            if (1wL.0xF(this.account.getUserId()))
            {
                this.0G1.inputText_.1wG(this.account.getUserId());
            } else
            {
                this.0G1.inputText_.1wG("");
                this.22L = true;
            }
            I2(this.0G1);
            this.1tf = new KC();
            this.1tf.y = -2;
            this.1tf.x = ((w_ - this.1tf.width) - 8);
            addChild(this.1tf);
        }

        private function k8():void{
            this.0G1.tabIndex = 1;
            9u.tabIndex = 2;
            this.0G1.tabEnabled = true;
            9u.tabEnabled = true;
        }

        private function onCancel(_arg1:MouseEvent):void{
            this.close();
        }

        private function close():void{
            if (((parent) && (parent.contains(this))))
            {
                parent.removeChild(this);
            }
        }

        private function 03a(_arg1:MouseEvent):void{
            var _local2:_Fu;
            var _local3:Object;
            if (this.0n5())
            {
                _local2 = _1JZ.0JF().getInstance(_Fu);
                _local2.complete.addOnce(this.onComplete);
                _local3 = {newGuid:this.0G1.text()}
                1X3.1J7(_local3, this.account.1Y());
                _local2.sendRequest("account/changeEmail", _local3);
                9u.removeEventListener(MouseEvent.CLICK, this.03a);
            }
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.21l();
            } else
            {
                this.0ys(_arg2);
            }
            9u.addEventListener(MouseEvent.CLICK, this.03a);
        }

        private function 21l():void{
            var _local1:Account = _1JZ.0JF().getInstance(Account);
            if (!this.22L)
            {
                _local1.19R(this.0G1.text(), _local1.DX());
            }
            removeChild(064);
            064 = new _13j().setSize(12).setColor(0xB3B3B3);
            064.setStringBuilder(new 1cA().setParams("WebAccountDetailDialog.sent"));
            064.filters = [new DropShadowFilter(0, 0, 0)];
            064.x = 5;
            064.y = 3;
            064.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            addChild(064);
        }

        private function 0ys(_arg1:String):void{
            removeChild(064);
            064 = new _13j().setSize(12).setColor(16549442);
            064.setStringBuilder(new 1cA().setParams(_arg1));
            064.filters = [new DropShadowFilter(0, 0, 0)];
            064.x = 5;
            064.y = 3;
            064.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            addChild(064);
        }

        private function 0n5():Boolean{
            var _local1:Boolean = 1wL.0xF(this.0G1.text());
            if (!_local1)
            {
                this.0G1.07n(du.PU);
            }
            return (_local1);
        }

        private function 1Jq():void{
            this.x = ((WebMain._0Kr.stageWidth / 2) - (this.w_ / 2));
            this.y = ((WebMain._0Kr.stageHeight / 2) - (this.h_ / 2));
        }


    }
}//package 12X

