// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.HS

package 0Fa{
    import 1uF.1Mf;
    import 1u-.tM;
    import 0N9.0hf;
    import 0N9.02A;
    import 0N9.1BC;
    import qG.0bJ;
    import 1u-.1Ys;
    import com.company.assembleegameclient.parameters.Parameters;

    public class HS extends 1Mf {

        [Inject]
        public var view:1Q7;
        [Inject]
        public var model:tM;
        [Inject]
        public var 1w-:0hf;
        [Inject]
        public var 1Tu:02A;
        [Inject]
        public var 0se:1BC;
        [Inject]
        public var 0iz:053;
        [Inject]
        public var setup:0bJ;


        override public function initialize():void{
            var _local1:1Ys;
            this.view.setup(this.model);
            for each (_local1 in this.model.2-N)
            {
                this.view.1_CU(this.0iz.make(_local1, true));
            };
            this.view.1kg();
            this.1w-.add(this.0Pb);
            this.1Tu.add(this.1-b);
            this.0se.add(this.0f7);
            this.0f7(1Ys.make(Parameters.uL, this.0zR()));
        }

        override public function destroy():void{
            this.1w-.remove(this.0Pb);
            this.1Tu.remove(this.1-b);
            this.0se.remove(this.0f7);
        }

        private function 0Pb(_arg1:Boolean, _arg2:String):void{
            this.view.y = (this.model.1Xo.height - ((_arg1) ? this.model.1jC : 0));
        }

        private function 1-b(_arg1:int):void{
            if (_arg1 > 0)
            {
                this.view.1qN();
            } else
            {
                if (_arg1 < 0)
                {
                    this.view.0ve();
                };
            };
        }

        private function 0f7(_arg1:1Ys):void{
            this.view.1_CU(this.0iz.make(_arg1));
        }

        private function 0zR():String{
            var _local1:String = this.setup.04j();
            _local1 = _local1.replace(/<font .+>(.+)<\/font>/g, "$1");
            return (_local1);
        }


    }
}//package 0Fa

