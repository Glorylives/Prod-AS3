// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.0Kk

package TN{
    import 1uF.1Mf;
    import 1tt.DT;
    import 1tt.0jv;
    import dq.1Jj;
    import 0wP.kM;

    public class 0Kk extends 1Mf {

        [Inject]
        public var 24c:DT;
        [Inject]
        public var view:PackageButton;
        [Inject]
        public var 2M:0jv;
        [Inject]
        public var pI:1Jj;
        private var ww:kM;
        private var 1JG:Boolean;


        override public function initialize():void{
            this.2M.0vG.add(this.DP);
            this.view.clicked.add(this.0hN);
            this.view.init();
            if (this.2M.oC())
            {
                this.Va();
            } else
            {
                this.view.visible = false;
                this.24c.start();
            }
        }

        override public function destroy():void{
            this.view.clicked.remove(this.0hN);
            if (this.1JG)
            {
                this.ww.ey.remove(this.6K);
                this.ww.05X.remove(this.23g);
                this.ww.0vG.remove(this.DP);
            }
        }

        private function 23g(_arg1:int):void{
            this.view.0Fv(_arg1);
        }

        private function 6K(_arg1:int):void{
            if (_arg1 <= 0)
            {
                this.view.visible = false;
            } else
            {
                this.view.03o(_arg1);
            }
        }

        private function DP():void{
            this.view.visible = true;
            this.Va();
        }

        private function Va():void{
            this.ww = this.2M.04r();
            this.1JG = true;
            this.ww.ey.add(this.6K);
            this.ww.05X.add(this.23g);
            this.view.0Fv(this.ww.0BH());
            this.view.03o(this.ww.quantity);
        }

        private function 0hN():void{
            this.pI.dispatch(this.2M.04r().packageID);
        }


    }
}//package TN

