// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.T4

package 0hd{
    import flash.display.Sprite;
    import 1PB.cO;
    import com.company.assembleegameclient.util.offer.Offer;
    import jH.0eh;
    import 0lB.03r;
    import OZ.1VE;
    import flash.display.BitmapData;
    import _CU._13j;
    import flash.events.MouseEvent;
    import com.company.util.AssetLibrary;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.BitmapUtil;
    import flash.display.Bitmap;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import 0lB.*;

    public class T4 extends Sprite implements 156 {

        private static const 3K:int = 0x777777;
        private static const 0pE:int = 0x5B5B5B;
        private static const Oj:int = 0x454545;

        private const 1he:cO = new cO();

        public var offer:Offer;
        private var config:0eh;
        private var background:03r;
        private var container:Sprite;
        private var 0rS:1VE;
        private var 0Ku:BitmapData;
        private var 0ox:_13j;
        private var z6:_13j;
        private var IT:_13j;
        private var taglineText:_13j;
        private var jf:Boolean;
        private var 0Ga:Boolean;

        public function T4(_arg1:Offer, _arg2:0eh){
            this.offer = _arg1;
            this.config = _arg2;
            this.0ze();
            this.makeContainer();
            this.sM();
            this.0n0();
            this.K1();
            this.1Ey();
            this.0Gn();
            this.24p();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            this.1he.complete.add(this.alignUI);
        }

        public function getValue():String{
            return (this.offer.realmGold_.toString());
        }

        public function pS(_arg1:Boolean):void{
            this.0Ga = _arg1;
            this.2-K();
        }

        public function setSelected(_arg1:Boolean):void{
            this.jf = _arg1;
            this.0rS.setSelected(_arg1);
            this.2-K();
        }

        public function showBonus(_arg1:Boolean):void{
            if (this.IT)
            {
                this.IT.visible = _arg1;
            }
        }

        private function 0ze():void{
            this.background = new 03r();
            this.background.setSize(520, 36);
            this.2-K();
            addChild(this.background);
        }

        private function makeContainer():void{
            this.container = new Sprite();
            this.container.x = (this.container.y = 3);
            addChild(this.container);
        }

        private function sM():void{
            this.0rS = new 1VE();
            this.0rS.x = 3;
            this.container.addChild(this.0rS);
        }

        private function 0n0():void{
            this.0Ku = AssetLibrary.1JR("lofiObj3", 225);
            this.0Ku = TextureRedrawer.redraw(this.0Ku, 50, true, 0, false);
            this.0Ku = BitmapUtil.0Bs(this.0Ku, 8, 8, (this.0Ku.width - 16), (this.0Ku.height - 16));
            var _local1:Bitmap = new Bitmap(this.0Ku);
            _local1.x = (this.0rS.x + 35);
            this.container.addChild(_local1);
        }

        private function K1():void{
            this.0ox = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true);
            this.0ox.setStringBuilder(new 1cA().setParams(du.8o, {amount:this.offer.realmGold_}));
            this.0ox.filters = [new DropShadowFilter(0, 0, 0)];
            this.1he.push(this.0ox.textChanged);
            this.container.addChild(this.0ox);
        }

        private function 1Ey():void{
            this.z6 = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true);
            this.z6.setStringBuilder(this.config.1Ds(this.offer));
            this.z6.filters = [new DropShadowFilter(0, 0, 0)];
            this.1he.push(this.z6.textChanged);
            this.container.addChild(this.z6);
        }

        private function 0Gn():void{
            if (!this.15W())
            {
                return;
            }
            this.IT = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true);
            this.IT.setStringBuilder(new 1cA().setParams(du.3F, {percent:this.offer.bonus}));
            this.IT.filters = [new DropShadowFilter(0, 0, 0)];
            this.1he.push(this.IT.textChanged);
            this.container.addChild(this.IT);
        }

        private function 24p():void{
            if (this.0ZA())
            {
                this.makeTaglineText();
            }
        }

        private function makeTaglineText():void{
            this.taglineText = new _13j().setSize(18).setColor(8891485);
            this.taglineText.setStringBuilder(new 1cA().setParams(this.offer.tagline));
            this.taglineText.filters = [new DropShadowFilter(0, 0, 0)];
            this.1he.push(this.taglineText.textChanged);
            this.container.addChild(this.taglineText);
        }

        private function 0ZA():Boolean{
            return (!((this.offer.tagline == null)));
        }

        private function 15W():Boolean{
            return (((!((this.offer == null))) && (!((this.offer.bonus == 0)))));
        }

        private function alignUI():void{
            this.0ox.x = (this.0rS.x + 70);
            this.0ox.y = ((this.0Ku.height / 2) - (this.0ox.height / 2));
            this.z6.x = 200;
            this.z6.y = ((this.0Ku.height / 2) - (this.z6.height / 2));
            if (((this.15W()) && (!((this.IT == null)))))
            {
                this.IT.x = 280;
                this.IT.y = ((this.0Ku.height / 2) - (this.IT.height / 2));
            }
            if (((this.0ZA()) && (!((this.taglineText == null)))))
            {
                this.taglineText.x = 400;
                this.taglineText.y = ((this.0Ku.height / 2) - (this.taglineText.height / 2));
            }
        }

        private function 2-K():void{
            var _local1:int = ((this.jf) ? 3K : ((this.0Ga) ? 0pE : Oj));
            this.background.setColor(_local1);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.pS(true);
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.pS(false);
        }


    }
}//package 0hd

