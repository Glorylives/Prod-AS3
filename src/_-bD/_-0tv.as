// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//bD.0tv

package bD{
    import 1uF.1Mf;
    import 099.1Bn;
    import 0UV.0rh;
    import 1u-.1Ys;
    import com.company.assembleegameclient.parameters.Parameters;

    public class 0tv extends 1Mf {

        [Inject]
        public var view:1Bn;
        [Inject]
        private var 12K:0rh;


        override public function initialize():void{
            this.view.0-l.add(this.la);
        }

        override public function destroy():void{
            this.view.0-l.remove(this.la);
        }

        private function la():void{
            this.12K.dispatch(1Ys.make(Parameters.1Wj, "No players are eligible for teleporting"));
        }


    }
}//package bD

