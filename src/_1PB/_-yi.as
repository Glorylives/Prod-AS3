// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.yi

package 1PB{
    import flash.display.Sprite;
    import flash.geom.Point;
    import oa.Dy;
    import h0.0Jr;
    import com.company.assembleegameclient.objects.Player;
    import eC.WK;
    import ZE.0t6;
    import com.company.assembleegameclient.ui.1Hs;
    import com.company.assembleegameclient.game.GameSprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import com.company.util._tu;
    import flash.events.Event;
    import com.company.assembleegameclient.game.nx;
    import 1zG.ff;
    import 1zG.1pI;
    import 1zG.0dB;
    import com.company.util.0IB;
    import __AS3__.vec.*;

    public class yi extends Sprite implements 0Ge {

        private const 1Mn:Point = new Point(0, 0);
        private const 1gv:Point = new Point(4, 4);
        private const 1vE:Point = new Point(0, 198);
        private const 9d:Point = new Point(12, 230);
        private const 1Rn:Point = new Point(14, 304);
        private const eU:Point = new Point(7, 346);
        private const 0tL:Point = new Point(0, 500);

        private var background:1x3;
        private var uR:Dy;
        private var 22g:0Jr;
        private var 1LA:1dr;
        private var 0Zp:CharacterDetailsView;
        private var 1in:Sprite;
        private var player:Player;
        public var 1Ke:WK;
        public var interactPanel:0t6;
        public var 0c7:1Hs;

        public function yi(){
            this.0JR();
            this.0Cs();
            this.1bZ();
        }

        private function 0JR():void{
            this.background = new 1x3();
            this.uR = new Dy(192, 192);
            this.1Ke = new WK();
            this.0Zp = new CharacterDetailsView();
            this.1LA = new 1dr();
        }

        private function 0Cs():void{
            addChild(this.background);
            addChild(this.uR);
            addChild(this.1Ke);
            addChild(this.0Zp);
            addChild(this.1LA);
        }

        private function 1bZ():void{
            this.background.x = this.1Mn.x;
            this.background.y = this.1Mn.y;
            this.uR.x = this.1gv.x;
            this.uR.y = this.1gv.y;
            this.1Ke.x = this.eU.x;
            this.1Ke.y = this.eU.y;
            this.0Zp.x = this.1vE.x;
            this.0Zp.y = this.1vE.y;
            this.1LA.x = this.9d.x;
            this.1LA.y = this.9d.y;
        }

        public function 1K1(_arg1:GameSprite):void{
            this.player = _arg1.map.player_;
            this.0KI();
            this.1a7();
            this.1Yn(_arg1);
        }

        private function 1Yn(_arg1:GameSprite):void{
            this.interactPanel = new 0t6(_arg1, this.player, 200, 100);
            this.interactPanel.x = this.0tL.x;
            this.interactPanel.y = this.0tL.y;
            addChild(this.interactPanel);
        }

        private function 1a7():void{
            this.22g = new 0Jr(this.player, this.player.px, this.player);
            this.22g.x = this.1Rn.x;
            this.22g.y = this.1Rn.y;
            addChild(this.22g);
        }

        private function 0KI():void{
            var _local3:Vector.<IGraphicsData>;
            var _local1:GraphicsSolidFill = new GraphicsSolidFill(0x676767, 1);
            var _local2:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            _local3 = new <IGraphicsData>[_local1, _local2, _tu.END_FILL];
            _tu.0S-(0, 0, 178, 46, 6, [1, 1, 1, 1], _local2);
            this.1in = new Sprite();
            this.1in.x = (this.1Rn.x - 3);
            this.1in.y = (this.1Rn.y - 3);
            this.1in.graphics.drawGraphicsData(_local3);
            addChild(this.1in);
        }

        public function draw():void{
            if (this.22g)
            {
                this.22g.draw();
            };
            if (this.interactPanel)
            {
                this.interactPanel.draw();
            };
        }

        public function startTrade(_arg1:nx, _arg2:ff):void{
            if (!this.0c7)
            {
                this.0c7 = new 1Hs(_arg1, _arg2);
                this.0c7.y = 200;
                this.0c7.addEventListener(Event.CANCEL, this.0Cm);
                addChild(this.0c7);
                this.0Qn(false);
            };
        }

        private function 0Qn(_arg1:Boolean):void{
            this.0Zp.visible = _arg1;
            this.1LA.visible = _arg1;
            this.1Ke.visible = _arg1;
            this.22g.visible = _arg1;
            this.1in.visible = _arg1;
            this.interactPanel.visible = _arg1;
        }

        public function tradeDone():void{
            this.7F();
        }

        public function tradeChanged(_arg1:1pI):void{
            if (this.0c7)
            {
                this.0c7.QC(_arg1.offer_);
            };
        }

        public function tradeAccepted(_arg1:0dB):void{
            if (this.0c7)
            {
                this.0c7.1X1(_arg1.myOffer_, _arg1.yourOffer_);
            };
        }

        private function 0Cm(_arg1:Event):void{
            this.7F();
        }

        private function 7F():void{
            if (this.0c7)
            {
                0IB.13h(this, this.0c7);
                this.0c7.removeEventListener(Event.CANCEL, this.0Cm);
                this.0c7 = null;
                this.0Qn(true);
            };
        }


    }
}//package 1PB

