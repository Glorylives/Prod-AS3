// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//a2.0KM

package a2{
    import _0OG._22M;
    import 0mS.1nT;
    import 1Hx.Mw;
    import 0mS.0XK;
    import 0y3.0gx;
    import Jc.197;
    import Jc.1dY;
    import Jc.0da;
    import 0eZ.0P3;
    import 0LT.0an;
    import 0Fr.*;

    public class 0KM implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var data:1nT;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            var _local1:0XK = this.data.yC();
            switch (_local1)
            {
                case 0XK.1Lb:
                    this.1af();
                    return;
                case 0XK.Eg:
                case 0XK.dA:
                    this.VD();
                    return;
                default:
                    this.1ik();
            };
        }

        private function VD():void{
            this.kf.map(0gx).1GE(197);
        }

        private function 1af():void{
            this.kf.map(0gx).1eo(this.0si());
        }

        private function 0si():1dY{
            return (new 1dY().setIP(this.data.hQ()));
        }

        private function 1ik():void{
            this.kf.map(0gx).1GE(0da);
            this.13d.map(0P3).0Hs(0an);
        }


    }
}//package a2

