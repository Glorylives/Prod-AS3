// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0N9.iy

package 0N9{
    import 1uF.Command;
    import 1u-.1Ys;
    import AO.Xk;
    import 1u-.tM;
    import 1n4.1cA;
    import com.company.assembleegameclient.parameters.Parameters;

    public class iy extends Command {

        [Inject]
        public var 0py:1Ys;
        [Inject]
        public var i-:Xk;
        [Inject]
        public var 0se:1BC;
        [Inject]
        public var model:tM;


        override public function execute():void{
            this.qh();
            this.1GW();
            this.model.0Bn(this.0py);
            this.0se.dispatch(this.0py);
        }

        private function 1GW():void{
            var _local1:1cA;
            var _local2:String;
            if ((((this.0py.name.length > 0)) && ((this.0py.name.charAt(0) == "#"))))
            {
                _local1 = new 1cA().setParams(this.0py.name.substr(1, (this.0py.name.length - 1)), this.0py.tokens);
                _local1.1jM(this.i-.0BA());
                _local2 = _local1.getString();
                this.0py.name = ((_local2) ? ("#" + _local2) : this.0py.name);
            };
        }

        private function qh():void{
            if ((((((((((this.0py.name == Parameters.uL)) || ((this.0py.name == Parameters.si)))) || ((this.0py.name == Parameters.1Wj)))) || ((this.0py.name == Parameters.Iu)))) || ((this.0py.name.charAt(0) == "#"))))
            {
                this.0P7();
            };
        }

        public function 0P7():void{
            var _local1:1cA = new 1cA().setParams(this.0py.text, this.0py.tokens);
            _local1.1jM(this.i-.0BA());
            var _local2:String = _local1.getString();
            this.0py.text = ((_local2) ? _local2 : this.0py.text);
        }


    }
}//package 0N9

