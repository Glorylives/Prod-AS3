// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.1l2

package 2--{
    import 0uE.0Gd;
    import 0uE.Py;
    import 5z.0tK;

    public class 1l2 {

        [Inject]
        public var sB:0Gd;


        public function create(_arg1:0tK, _arg2:int):08G{
            var _local3:08G = new 08G();
            var _local4:Py = this.sB.create(_arg1, _arg2);
            _local3.mL(_local4);
            _local3.setSize(_arg2);
            _local3.0mR(08G.HJ);
            return (_local3);
        }


    }
}//package 2--

