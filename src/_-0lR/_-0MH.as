// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0lR.0MH

package 0lR{
    import WZ.0Te;
    import kabam.rotmg.assets.services.0Vx;
    import tn.0ec;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import tn.0dE;
    import tn.1iY;
    import kabam.rotmg.assets.model.Animation;

    public class 0MH {

        [Inject]
        public var SP:0Te;
        [Inject]
        public var factory:0Vx;
        [Inject]
        public var 1z8:0ec;
        private var 1Pd:SavedCharacter;
        private var SE:0dE;
        private var skin:1iY;
        private var tex2:int;
        private var tex1:int;


        public function make():Animation{
            this.1Pd = this.SP.zO(this.SP.1IA);
            this.SE = ((this.1Pd) ? this.Gw() : this.0zJ());
            this.skin = this.SE.0sP.05i();
            this.tex1 = ((this.1Pd) ? this.1Pd.tex1() : 0);
            this.tex2 = ((this.1Pd) ? this.1Pd.tex2() : 0);
            return (this.factory.0QF(this.skin.26-, 100, this.tex1, this.tex2));
        }

        private function 0zJ():0dE{
            return (this.1z8.0NO());
        }

        private function Gw():0dE{
            return (this.1z8.7k(this.1Pd.objectType()));
        }


    }
}//package 0lR

