// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//12X.MoneyFrame

package 12X{
    import flash.display.Sprite;
    import AO.du;
    import _Jy._1HZ;
    import com.company.assembleegameclient.util.offer.Offers;
    import jH.0eh;
    import 0hd.Frame;
    import 0hd.0Ia;
    import 0hd.0LD;
    import com.company.assembleegameclient.ui.1nN;
    import com.company.assembleegameclient.ui.1im;
    import com.company.assembleegameclient.util.offer.Offer;
    import flash.events.MouseEvent;

    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.util.99;
    import flash.display.Shape;
    import flash.text.TextFieldAutoSize;


    public class MoneyFrame extends Sprite {

        private static const TITLE:String = du.kd;//"MoneyFrame.title"
        private static const 1mP:String = "/money";
        private static const 6f:String = du.1D1;//"MoneyFrame.payment"
        private static const 1g4:String = du.nF;//"MoneyFrame.gold"
        private static const 0p2:String = du.0BG;//"MoneyFrame.buy"
        private static const WIDTH:int = 550;

        public var buyNow:_1HZ;
        public var cancel:_1HZ;
        private var Qo:Offers;
        private var config:0eh;
        private var 6r:Frame;
        private var H:0Ia;
        private var zG:0LD;
        public var 0rn:1nN;
        public var 0RV:1im;

        public function MoneyFrame(){
            this.buyNow = new _1HZ(Offer, String);
            this.cancel = new _1HZ();
        }

        public function initialize(_arg1:Offers, _arg2:0eh):void{
            this.Qo = _arg1;
            this.config = _arg2;
            this.6r = new Frame(TITLE, "", "", 1mP, WIDTH);
            ((_arg2.kp()) && (this.1Bi()));
            this.eA();
            this.1h();
            addChild(this.6r);
            this.0y0(du.1M1);
            this.0RV.addEventListener(MouseEvent.CLICK, this.onCancel);
        }

        public function 1Bi():void{
            this.9p();
            this.6r.0sK(6f);
            this.6r.IV(this.H);
            this.6r.1e-(14);
            this.1ZF(0x7F7F7F, 536, 2, 10);
            this.6r.1e-(6);
        }

        private function 9p():void{
            var _local1:Vector.<String> = this.1gF();
            this.H = new 0Ia(_local1);
            this.H.setSelected(Parameters.data_.paymentMethod);
        }

        private function 1gF():Vector.<String>{
            var _local2:99;
            var _local1:Vector.<String> = new Vector.<String>();
            for each (_local2 in 99.050)
            {
                _local1.push(_local2.label_);
            }
            return (_local1);
        }

        private function 1ZF(_arg1:int, _arg2:int, _arg3:int, _arg4:int):void{
            var _local5:Shape = new Shape();
            _local5.graphics.beginFill(_arg1);
            _local5.graphics.drawRect(_arg4, 0, (_arg2 - (_arg4 * 2)), _arg3);
            _local5.graphics.endFill();
            this.6r.0Gq(_local5, 0);
        }

        private function eA():void{
            this.zG = new 0LD(this.Qo, this.config);
            this.zG.1nw(this.config.1nw());
            this.6r.0sK(1g4);
            this.6r.0Gq(this.zG);
        }

        public function 1h():void{
            this.0rn = new 1nN(16, 0p2);
            this.0rn.addEventListener(MouseEvent.CLICK, this.Gu);
            this.0rn.x = 8;
            this.0rn.y = (this.6r.h_ - 52);
            this.6r.addChild(this.0rn);
        }

        public function 0y0(_arg1:String):void{
            this.0RV = new 1im(18, true, _arg1);
            if (_arg1 != "")
            {
                this.0RV.buttonMode = true;
                this.0RV.x = ((((800 / 2) + (this.6r.w_ / 2)) - this.0RV.width) - 26);
                this.0RV.y = (((600 / 2) + (this.6r.h_ / 2)) - 52);
                this.0RV.setAutoSize(TextFieldAutoSize.RIGHT);
                addChild(this.0RV);
            }
        }

        protected function Gu(_arg1:MouseEvent):void{
            this.disable();
            var _local2:Offer = this.zG.0FV().offer;
            var _local3:String = ((this.H) ? this.H.0NO() : null);
            this.buyNow.dispatch(_local2, ((_local3) || ("")));
        }

        public function disable():void{
            this.6r.disable();
            this.0RV.hs(0xB3B3B3);
            this.0RV.mouseEnabled = false;
            this.0RV.mouseChildren = false;
        }

        public function 0VC():void{
            this.0RV.0U1();
            this.0RV.mouseEnabled = true;
            this.0RV.mouseChildren = true;
        }

        protected function onCancel(_arg1:MouseEvent):void{
            stage.focus = stage;
            this.cancel.dispatch();
        }


    }
}//package 12X

