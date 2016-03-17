// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//13t.0-2

package 13t{
    import 1uF.1Mf;
    import 0a-.0iQ;
    import 0a-.1lD;
    import 0a-.Zt;
    import 0lR.0MH;
    import 1zG.0BS;

    public class 0-2 extends 1Mf {

        [Inject]
        public var view:003;
        [Inject]
        public var 1Sh:0iQ;
        [Inject]
        public var 0bA:1lD;
        [Inject]
        public var 1Jf:Zt;
        [Inject]
        public var 1nv:0MH;


        override public function initialize():void{
            this.view.1Fh(this.1nv.make());
            this.1Sh.addOnce(this.22I);
            this.0bA.add(this.08A);
            this.1Jf.add(this.1kw);
        }

        private function 22I(_arg1:0BS):void{
            this.view.0EA(_arg1.1Vu, _arg1.0Ov);
        }

        override public function destroy():void{
            this.0bA.remove(this.08A);
        }

        private function 08A():void{
            this.view.disable();
        }

        private function 1kw():void{
            this.view.0Cf();
        }


    }
}//package 13t

