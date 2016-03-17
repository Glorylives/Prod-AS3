// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ux.1ta

package 0Ux{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import qQ.26n;
    import flash.events.MouseEvent;
    import XF.lY;
    import com.company.assembleegameclient.util.99;
    import N6.0PD;

    public class 1ta extends Sprite {

        public static var KN:Class = 0B;

        public var close:_1HZ;
        public var select:26n;
        public var 0qq:Sprite;
        public var 0CQ:Sprite;
        public var google:Sprite;

        public function 1ta(){
            this.close = new _1HZ();
            this.select = new 26n(MouseEvent.CLICK, String);
            this.lg();
            this.1gH();
            this.0yH();
        }

        public function 9L():void{
            x = ((stage.stageWidth - width) * 0.5);
            y = (((stage.stageHeight - height) * 0.5) - 5);
        }

        private function lg():void{
            addChild(new KN());
        }

        private function 1gH():void{
            var _local1:Sprite = this.cX(550, 30, 30, 30);
            this.close = new lY(_local1, MouseEvent.CLICK);
        }

        private function 0yH():void{
            this.0qq = this.cX(220, 180, 180, 35);
            this.0CQ = this.cX(220, 224, 180, 35);
            this.google = this.cX(220, 268, 180, 35);
            this.select.map(this.0qq, 99.19r.label_);
            this.select.map(this.0CQ, 99.17q.label_);
            this.select.map(this.google, 99.2-z.label_);
        }

        private function cX(_arg1:int, _arg2:int, _arg3:int, _arg4:int):Sprite{
            var _local5:0PD = new 0PD(_arg1, _arg2, _arg3, _arg4);
            addChild(_local5);
            return (_local5);
        }


    }
}//package 0Ux

