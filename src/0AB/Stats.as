// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0AB.Stats

package 0AB{
    import flash.display.Sprite;
    import flash.text.TextField;
    import flash.text.StyleSheet;
    import flash.display.BitmapData;
    import flash.geom.Rectangle;
    import flash.events.Event;
    import flash.geom.Matrix;
    import flash.events.MouseEvent;
    import flash.utils.getTimer;
    import flash.system.System;

    public class Stats extends Sprite {

        protected const WIDTH:uint = 70;
        protected const HEIGHT:uint = 100;

        protected var xml:XML;
        protected var text:TextField;
        protected var style:StyleSheet;
        protected var timer:uint;
        protected var fps:uint;
        protected var ms:uint;
        protected var 01Q:uint;
        protected var mem:Number;
        protected var 10f:Number;
        protected var graph:BitmapData;
        protected var 0Qv:Rectangle;
        protected var vd:uint;
        protected var 1vn:uint;
        protected var 1NU:uint;
        protected var Vd:Colors;

        public function Stats():void{
            this.Vd = new Colors();
            super();
            mouseEnabled = false;
            doubleClickEnabled = false;
            mouseChildren = false;
            this.10f = 0;
            this.xml = <xml><fps>FPS:</fps><ms>MS:</ms><mem>MEM:</mem><memMax>MAX:</memMax></xml>
            ;
            this.style = new StyleSheet();
            this.style.setStyle("xml", {
                fontSize:"9px",
                fontFamily:"_sans",
                leading:"-2px"
            });
            this.style.setStyle("fps", {color:this.0aZ(this.Vd.fps)});
            this.style.setStyle("ms", {color:this.0aZ(this.Vd.ms)});
            this.style.setStyle("mem", {color:this.0aZ(this.Vd.mem)});
            this.style.setStyle("memMax", {color:this.0aZ(this.Vd.memmax)});
            this.text = new TextField();
            this.text.width = this.WIDTH;
            this.text.height = 50;
            this.text.styleSheet = this.style;
            this.text.condenseWhite = true;
            this.text.selectable = false;
            this.text.mouseEnabled = false;
            this.0Qv = new Rectangle((this.WIDTH - 1), 0, 1, (this.HEIGHT - 50));
            addEventListener(Event.ADDED_TO_STAGE, this.init, false, 0, true);
            addEventListener(Event.REMOVED_FROM_STAGE, this.destroy, false, 0, true);
        }

        private function init(_arg1:Event):void{
            graphics.beginFill(this.Vd.bg);
            graphics.drawRect(0, 0, this.WIDTH, this.HEIGHT);
            graphics.endFill();
            addChild(this.text);
            this.graph = new BitmapData(this.WIDTH, (this.HEIGHT - 50), false, this.Vd.bg);
            graphics.beginBitmapFill(this.graph, new Matrix(1, 0, 0, 1, 0, 50));
            graphics.drawRect(0, 50, this.WIDTH, (this.HEIGHT - 50));
            addEventListener(Event.ENTER_FRAME, this.update);
        }

        private function destroy(_arg1:Event):void{
            graphics.clear();
            while (numChildren > 0)
            {
                removeChildAt(0);
            }
            this.graph.dispose();
            removeEventListener(MouseEvent.CLICK, this.0eJ);
            removeEventListener(Event.ENTER_FRAME, this.update);
        }

        private function update(_arg1:Event):void{
            this.timer = getTimer();
            if ((this.timer - 1000) > this.01Q)
            {
                this.01Q = this.timer;
                this.mem = Number((System.totalMemory * 9.54E-7).toFixed(3));
                this.10f = (((this.10f > this.mem)) ? this.10f : this.mem);
                this.vd = Math.min(this.graph.height, ((this.fps / stage.frameRate) * this.graph.height));
                this.1vn = (Math.min(this.graph.height, Math.sqrt(Math.sqrt((this.mem * 5000)))) - 2);
                this.1NU = (Math.min(this.graph.height, Math.sqrt(Math.sqrt((this.10f * 5000)))) - 2);
                this.graph.scroll(-1, 0);
                this.graph.fillRect(this.0Qv, this.Vd.bg);
                this.graph.setPixel((this.graph.width - 1), (this.graph.height - this.vd), this.Vd.fps);
                this.graph.setPixel((this.graph.width - 1), (this.graph.height - ((this.timer - this.ms) >> 1)), this.Vd.ms);
                this.graph.setPixel((this.graph.width - 1), (this.graph.height - this.1vn), this.Vd.mem);
                this.graph.setPixel((this.graph.width - 1), (this.graph.height - this.1NU), this.Vd.memmax);
                this.xml.fps = ((("FPS: " + this.fps) + " / ") + stage.frameRate);
                this.xml.mem = ("MEM: " + this.mem);
                this.xml.memMax = ("MAX: " + this.10f);
                this.fps = 0;
            }
            this.fps++;
            this.xml.ms = ("MS: " + (this.timer - this.ms));
            this.ms = this.timer;
            this.text.htmlText = this.xml;
        }

        private function 0eJ(_arg1:MouseEvent):void{
            if (((mouseY / height) > 0.5))
            {
                stage.frameRate--;
            } else
            {
                stage.frameRate++;
            }
            this.xml.fps = ((("FPS: " + this.fps) + " / ") + stage.frameRate);
            this.text.htmlText = this.xml;
        }

        private function 0aZ(_arg1:int):String{
            return (("#" + _arg1.toString(16)));
        }


    }
}//package 0AB

class Colors {

    public var bg:uint = 51;
    public var fps:uint = 0xFFFF00;
    public var ms:uint = 0xFF00;
    public var mem:uint = 0xFFFF;
    public var memmax:uint = 0xFF0070;


}

