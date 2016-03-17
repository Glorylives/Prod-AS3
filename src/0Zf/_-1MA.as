// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Zf.1MA

package 0Zf{
    import _0OG._22M;
    import flash.display.DisplayObjectContainer;
    import 0mS.1nT;
    import flash.display.LoaderInfo;
    import 06v.0do;
    import qG.0bJ;
    import qG.0GV;
    import 06v.FA;
    import 0mS.0XK;
    import 0ao.0hz;
    import 0ao.0I2;
    import 0ao.0Y2;
    import 0ao.xY;
    import 0ao.c8;
    import 0ao.0He;
    import 0Fr.*;

    public class 1MA implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var root:DisplayObjectContainer;
        [Inject]
        public var data:1nT;
        [Inject]
        public var loaderInfo:LoaderInfo;
        [Inject]
        public var 0Ta:0do;


        public function configure():void{
            var _local1:0bJ = this.0fn();
            this.kf.map(0GV).1eo(_local1);
            this.kf.map(0bJ).1eo(_local1);
            this.kf.map(FA).1nL();
        }

        private function 0fn():0bJ{
            var _local1:0XK = this.data.yC();
            switch (_local1)
            {
                case 0XK.Eg:
                    return (new 0hz());
                case 0XK.1Lb:
                    return (this.054());
                case 0XK.dA:
                    return (new 0I2());
                case 0XK.1xf:
                    return (new 0Y2());
                case 0XK.TESTING2:
                    return (new xY());
                default:
                    return (new c8());
            };
        }

        private function 054():0He{
            return (new 0He().setAddress(this.data.hQ()));
        }


    }
}//package 0Zf

