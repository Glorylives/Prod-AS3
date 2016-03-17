// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.1lR

package 1PB{
    import 1uF.1Mf;
    import 0xo.lZ;
    import 1ay.1UQ;
    import 1ay.0SL;
    import 1ay.tG;
    import D5.1c8;
    import com.company.assembleegameclient.objects.1F9;
    import 1u-.0xT;
    import com.company.googleanalytics.GA;
    import com.company.assembleegameclient.parameters.Parameters;
    import _1zp.Options;
    import com.company.assembleegameclient.objects.Player;

    public class 1lR extends 1Mf {

        [Inject]
        public var view:CharacterDetailsView;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 05N:1UQ;
        [Inject]
        public var II:0SL;
        [Inject]
        public var 057:tG;
        [Inject]
        public var 22k:1c8;
        [Inject]
        public var xt:1F9;
        [Inject]
        public var 0KU:0xT;


        override public function initialize():void{
            this.Pa();
            this.view.init(this.11u.04d(), this.11u.Fv());
            this.II.addOnce(this.0G0);
            this.II.add(this.1ia);
            this.057.add(this.0OL);
            this.view.1Wb.add(this.7o);
            this.view.HZ.add(this.0Kn);
        }

        private function Pa():void{
            this.view.22k = this.22k;
            this.view.xt = this.xt;
        }

        override public function destroy():void{
            this.II.remove(this.1ia);
            this.057.remove(this.0OL);
            this.view.1Wb.remove(this.7o);
            this.view.HZ.remove(this.0Kn);
        }

        private function 7o():void{
            this.0KU.0yI();
            this.11u.ja.gsc_.escape();
            GA.global().trackEvent("enterPortal", "Nexus Button");
            Parameters.data_.needsRandomRealm = false;
            Parameters.save();
        }

        private function 0Kn():void{
            this.11u.ja.mui_.clearInput();
            GA.global().trackEvent("options", "Options Button");
            this.11u.ja.addChild(new Options(this.11u.ja));
        }

        private function 0G0(_arg1:Player):void{
            this.view.update(_arg1);
        }

        private function 1ia(_arg1:Player):void{
            this.view.draw(_arg1);
        }

        private function 0OL(_arg1:String):void{
            this.view.setName(_arg1);
        }


    }
}//package 1PB

