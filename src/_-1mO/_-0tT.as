// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.0tT

package 1mO{
    import 1uF.1Mf;
    import dq.1Jj;
    import 1wn.0Py;
    import flash.net.URLRequest;
    import flash.net.navigateToURL;
    import 0sk.1Of;
    import 0sk.BZ;

    public class 0tT extends 1Mf {

        [Inject]
        public var view:230;
        [Inject]
        public var pI:1Jj;
        [Inject]
        public var 1ON:0Py;


        override public function initialize():void{
            this.view.1bw.add(this.1yv);
        }

        override public function destroy():void{
            this.view.1bw.remove(this.1yv);
        }

        private function 1yv(_arg1:BZ):void{
            var _local2:URLRequest;
            switch (_arg1.linkType)
            {
                case 1Of.0oO:
                    _local2 = new URLRequest(_arg1.linkDetail);
                    navigateToURL(_local2, "_blank");
                    return;
                case 1Of.00i:
                    this.pI.dispatch(int(_arg1.linkDetail));
                    return;
                case 1Of.0RX:
                    this.1ON.dispatch(_arg1.linkDetail);
                    return;
            };
        }


    }
}//package 1mO

