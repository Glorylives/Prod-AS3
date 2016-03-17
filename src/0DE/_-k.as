// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0DE.k

package 0DE{
    import flash.display.Sprite;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import flash.display.Shape;
    import h0.1mR;
    import com.company.util._tu;
    import 0Px.0J9;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.objects.Player;
    import __AS3__.vec.*;

    public class k extends Sprite {

        public static const TILE_DOUBLE_CLICK:String = "TILE_DOUBLE_CLICK";
        public static const TILE_SINGLE_CLICK:String = "TILE_SINGLE_CLICK";
        public static const WIDTH:int = 40;
        public static const HEIGHT:int = 40;
        public static const BORDER:int = 4;

        private var 1Au:GraphicsSolidFill;
        private var path_:GraphicsPath;
        private var graphicsData_:Vector.<IGraphicsData>;
        private var 7W:Shape;
        public var 0ep:0bw;
        public var 1eu:int;
        public var 0ZD:1mR;
        public var blockingItemUpdates:Boolean;

        public function k(_arg1:int, _arg2:1mR){
            this.1Au = new GraphicsSolidFill(this.getBackgroundColor(), 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.graphicsData_ = new <IGraphicsData>[this.1Au, this.path_, _tu.END_FILL];
            super();
            this.1eu = _arg1;
            this.0ZD = _arg2;
            this.7W = new Shape();
            addChild(this.7W);
            this.setItemSprite(new 0bw());
        }

        public function 0aJ(_arg1:Array):void{
            tu.ln(this.path_);
            _tu.0S-(0, 0, WIDTH, HEIGHT, 4, _arg1, this.path_);
            graphics.clear();
            graphics.drawGraphicsData(this.graphicsData_);
            var _local2:GraphicsSolidFill = new GraphicsSolidFill(6036765, 1);
            _tu.ln(this.path_);
            var _local3:Vector.<IGraphicsData> = new <IGraphicsData>[_local2, this.path_, _tu.END_FILL];
            _tu.0S-(0, 0, WIDTH, HEIGHT, 4, _arg1, this.path_);
            this.7W.graphics.drawGraphicsData(_local3);
            this.7W.cacheAsBitmap = true;
            this.7W.visible = false;
        }

        public function setItem(_arg1:int):Boolean{
            if (_arg1 == this.0ep.itemId)
            {
                return (false);
            };
            if (this.blockingItemUpdates)
            {
                return (true);
            };
            this.0ep.setType(_arg1);
            this.0bZ(this.0ZD.curPlayer);
            return (true);
        }

        public function setItemSprite(_arg1:0bw):void{
            this.0ep = _arg1;
            this.0ep.x = (WIDTH / 2);
            this.0ep.y = (HEIGHT / 2);
            addChild(this.0ep);
        }

        public function 0bZ(_arg1:Player):void{
            if (this.0ep.itemId != 0J9.1Qx)
            {
                this.7W.visible = !(ObjectLibrary.0dd(this.0ep.itemId, _arg1));
            } else
            {
                this.7W.visible = false;
            };
        }

        public function canHoldItem(_arg1:int):Boolean{
            return (true);
        }

        public function u0():void{
            this.setItemSprite(this.0ep);
        }

        public function mh():int{
            return (this.0ep.itemId);
        }

        protected function getBackgroundColor():int{
            return (0x545454);
        }


    }
}//package 0DE

