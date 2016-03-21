// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.Qd

package _1aA{
    import flash.display.Sprite;
    import _CU._13j;
    import flash.display.Shape;
    import com.company.assembleegameclient.ui.0DJ;

    import 0y3.Server;
    import _Jy._1HZ;
    import zD.05l;
    import flash.events.Event;
    import com.company.googleanalytics.GA;
    import zD.1mY;
    import 1PB.oj;
    import flash.display.Graphics;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;

    public class Qd extends Sprite {

        private var 0w6:_13j;
        private var 0mg:Shape;
        private var 0dl:Sprite;
        private var r2:086;
        private var VQ:0DJ;
        private var servers:Vector.<Server>;
        public var 1KG:_1HZ;

        public function Qd(){
            addChild(new 05l());
            this.1KG = new _1HZ();
            addChild(new 05l());
            addChild(new 01l());
        }

        private function ef(_arg1:Event):void{
            this.r2.y = (8 - (this.VQ.0md() * (this.r2.height - 400)));
        }

        public function initialize(_arg1:Vector.<Server>):void{
            this.servers = _arg1;
            this.0Sk();
            this.8G();
            this.makeContainer();
            this.1rP();
            (((this.r2.height > 400)) && (this.VB()));
            this.hm();
            GA.global().trackPageview("/serversScreen");
        }

        private function hm():void{
            var _local1:1mY = new 1mY();
            var _local2:Lz = oj.QS();
            _local1.0J-(_local2, 1mY.CENTER);
            _local2.clicked.add(this.0-p);
            addChild(_local1);
        }

        private function VB():void{
            this.VQ = new 0DJ(16, 400);
            this.VQ.x = ((800 - this.VQ.width) - 4);
            this.VQ.y = 104;
            this.VQ.1OQ(400, this.r2.height);
            this.VQ.addEventListener(Event.CHANGE, this.ef);
            addChild(this.VQ);
        }

        private function 1rP():void{
            this.r2 = new 086(this.servers);
            this.r2.y = 8;
            this.r2.addEventListener(Event.COMPLETE, this.0-p);
            this.0dl.addChild(this.r2);
        }

        private function makeContainer():void{
            this.0dl = new Sprite();
            this.0dl.x = 4;
            this.0dl.y = 100;
            var _local1:Shape = new Shape();
            _local1.graphics.beginFill(0xFFFFFF);
            _local1.graphics.drawRect(0, 0, 776, 430);
            _local1.graphics.endFill();
            this.0dl.addChild(_local1);
            this.0dl.mask = _local1;
            addChild(this.0dl);
        }

        private function 8G():void{
            this.0mg = new Shape();
            var _local1:Graphics = this.0mg.graphics;
            _local1.clear();
            _local1.lineStyle(2, 0x545454);
            _local1.moveTo(0, 100);
            _local1.lineTo(stage.stageWidth, 100);
            _local1.lineStyle();
            addChild(this.0mg);
        }

        private function 0Sk():void{
            this.0w6 = new _13j().setSize(18).setColor(0xB3B3B3).setBold(true);
            this.0w6.setStringBuilder(new 1cA().setParams(du.03Q));
            this.0w6.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.0w6.x = 18;
            this.0w6.y = 72;
            addChild(this.0w6);
        }

        private function 0-p():void{
            this.1KG.dispatch();
        }


    }
}//package _1aA

