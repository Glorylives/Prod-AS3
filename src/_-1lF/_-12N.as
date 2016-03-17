// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1lF.12N

package 1lF{
    import 0Fr.dW;
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 1nd.Console;
    import go.0Ip;
    import go.0By;
    import go.ZP;
    import go.06U;
    import go.1ga;
    import 0O7.X-;
    import go.0AC;
    import 0O7.047;
    import go.Rr;
    import 0O7.1ds;
    import go.Sr;
    import go.1YO;
    import go.0kt;
    import go.o8;
    import go.1Gu;
    import 1YL.N8;
    import 1YL.0Y;
    import 1YL.1Z7;
    import 1YL.sh;
    import 1YL.YU;
    import 1YL.1tb;
    import 1YL.24s;
    import 0bP.Xr;
    import JV.1OM;

    public class 12N {

        [Inject]
        public var context:dW;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        [PostConstruct]
        public function setup():void{
            this.8e();
            this.1Td();
            this.a1();
            this.109();
            this.context.9g.0qQ(this.init);
        }

        private function 8e():void{
            this.kf.map(Console).1nL();
            this.kf.map(0Ip).1nL();
            this.kf.map(0By).1nL();
            this.kf.map(ZP).1nL();
            this.kf.map(06U).1nL();
        }

        private function 1Td():void{
            this.13d.map(1ga).0Hs(X-);
            this.13d.map(0AC).0Hs(047);
            this.13d.map(Rr).0Hs(1ds);
        }

        private function a1():void{
            this.kf.map(Sr).1nL();
            this.kf.map(1YO).1nL();
            this.kf.map(0kt).1nL();
            this.kf.map(o8).1nL();
            this.kf.map(1Gu).1nL();
        }

        private function 109():void{
            this.mediatorMap.map(N8).1TU(0Y);
            this.mediatorMap.map(1Z7).1TU(sh);
            this.mediatorMap.map(YU).1TU(1tb);
            this.mediatorMap.map(YU).1TU(24s);
        }

        private function init():void{
            this.context.uu(new Xr(this.context));
            this.kf.getInstance(Rr).dispatch();
            var _local1:1OM = this.context.kf.getInstance(1OM);
            _local1.console.addChild(new YU());
        }


    }
}//package 1lF

