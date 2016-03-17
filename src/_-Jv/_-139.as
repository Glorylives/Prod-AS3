// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//JV.139

package JV{
    import 1uF.1Mf;
    import 1Bg.1zl;
    import WZ.07B;
    import 1Bg.24H;
    import flash.display.Sprite;

    public class 139 extends 1Mf {

        [Inject]
        public var view:yf;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var model:07B;
        [Inject]
        public var 1Lo:24H;


        override public function initialize():void{
            this.21r.add(this.0tc);
            this.1Lo.add(this.Ks);
        }

        override public function destroy():void{
            this.21r.remove(this.0tc);
            this.1Lo.add(this.Ks);
        }

        private function 0tc(_arg1:Sprite):void{
            this.model.1jV((Object(_arg1).constructor as Class));
            this.view.21r(_arg1);
        }

        private function Ks():void{
            this.view.21r(this.view.11b());
        }


    }
}//package JV

