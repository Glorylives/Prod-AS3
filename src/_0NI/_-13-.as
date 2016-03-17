// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.13-

package 0NI{
    import 1i-.1o;
    import 0wp.allOf;
    import 1Xd.instanceOf;
    import 0wp.not;
    import flash.display.DisplayObject;
    import flash.utils.Dictionary;
    import _0OG._22M;
    import 0Fr.1da;
    import 0Fr.0qM;
    import 0Fr.dW;
    import 0Fr.1bp;

    public class 13- {

        private static const Zn:1o = allOf(instanceOf(Object), not(instanceOf(Class)), not(instanceOf(DisplayObject)));

        private const 1NG:String = 0cf.create(13-);
        private const XS:ObjectProcessor = new ObjectProcessor();
        private const 0zE:Dictionary = new Dictionary();
        private const 1pn:Array = [];

        private var dM:_22M;
        private var 1Za:1da;
        private var zW:Boolean;

        public function 13-(_arg1:dW){
            this.dM = _arg1.kf;
            this.1Za = _arg1.1uk(this);
            this.1MC(instanceOf(Class), this.E3);
            this.1MC(Zn, this.0kD);
            _arg1.9g.addEventListener(0qM.16E, this.initialize, false, -100);
        }

        public function AX(_arg1:Object):void{
            if (!this.0zE[_arg1])
            {
                this.0zE[_arg1] = true;
                this.XS.17M(_arg1);
            };
        }

        public function 1MC(_arg1:1o, _arg2:Function):void{
            this.XS.0Pz(_arg1, _arg2);
        }

        public function toString():String{
            return (this.1NG);
        }

        private function initialize(_arg1:0qM):void{
            if (!this.zW)
            {
                this.zW = true;
                this.1Yu();
            };
        }

        private function E3(_arg1:Class):void{
            if (this.zW)
            {
                this.1Za.debug("Already initialized. Instantiating config class {0}", [_arg1]);
                this.0ON(_arg1);
            } else
            {
                this.1Za.debug("Not yet initialized. Queuing config class {0}", [_arg1]);
                this.1pn.push(_arg1);
            };
        }

        private function 0kD(_arg1:Object):void{
            if (this.zW)
            {
                this.1Za.debug("Already initialized. Injecting into config object {0}", [_arg1]);
                this.17M(_arg1);
            } else
            {
                this.1Za.debug("Not yet initialized. Queuing config object {0}", [_arg1]);
                this.1pn.push(_arg1);
            };
        }

        private function 1Yu():void{
            var _local1:Object;
            for each (_local1 in this.1pn)
            {
                if ((_local1 is Class))
                {
                    this.1Za.debug("Now initializing. Instantiating config class {0}", [_local1]);
                    this.0ON((_local1 as Class));
                } else
                {
                    this.1Za.debug("Now initializing. Injecting into config object {0}", [_local1]);
                    this.17M(_local1);
                };
            };
            this.1pn.length = 0;
        }

        private function 0ON(_arg1:Class):void{
            var _local2:1bp = (this.dM.getInstance(_arg1) as 1bp);
            ((_local2) && (_local2.configure()));
        }

        private function 17M(_arg1:Object):void{
            this.dM.G3(_arg1);
            var _local2:1bp = (_arg1 as 1bp);
            ((_local2) && (_local2.configure()));
        }


    }
}//package 0NI

