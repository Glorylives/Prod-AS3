// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0DE.k

package _0DE{
import _h0._1mR;

import flash.display.Sprite;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.display.IGraphicsData;
    import flash.display.Shape;
    import com.company.util._tu;
    import _0Px._0J9;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.objects.Player;

    public class _k extends Sprite {

        public static const TILE_DOUBLE_CLICK:String = "TILE_DOUBLE_CLICK";
        public static const TILE_SINGLE_CLICK:String = "TILE_SINGLE_CLICK";
        public static const WIDTH:int = 40;
        public static const HEIGHT:int = 40;
        public static const BORDER:int = 4;

        private var _1Au:GraphicsSolidFill;
        private var path_:GraphicsPath;
        private var graphicsData_:Vector.<IGraphicsData>;
        private var _7W:Shape;
        public var _0ep:_0bw;
        public var _1eu:int;
        public var _0ZD:_1mR;
        public var blockingItemUpdates:Boolean;

        public function _k(_arg1:int, _arg2:_1mR){
            this._1Au = new GraphicsSolidFill(this.getBackgroundColor(), 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.graphicsData_ = new <IGraphicsData>[this._1Au, this.path_, _tu.END_FILL];
            super();
            this._1eu = _arg1;
            this._0ZD = _arg2;
            this._7W = new Shape();
            addChild(this._7W);
            this.setItemSprite(new _0bw());
        }

        public function _0aJ(_arg1:Array):void{
            tu.ln(this.path_);
            _tu._0S(0, 0, WIDTH, HEIGHT, 4, _arg1, this.path_);
            graphics.clear();
            graphics.drawGraphicsData(this.graphicsData_);
            var _local2:GraphicsSolidFill = new GraphicsSolidFill(6036765, 1);
            _tu.ln(this.path_);
            var _local3:Vector.<IGraphicsData> = new <IGraphicsData>[_local2, this.path_, _tu.END_FILL];
            _tu._0S(0, 0, WIDTH, HEIGHT, 4, _arg1, this.path_);
            this._7W.graphics.drawGraphicsData(_local3);
            this._7W.cacheAsBitmap = true;
            this._7W.visible = false;
        }

        public function setItem(_arg1:int):Boolean{
            if (_arg1 == this._0ep.itemId)
            {
                return (false);
            };
            if (this.blockingItemUpdates)
            {
                return (true);
            };
            this._0ep.setType(_arg1);
            this._0bZ(this._0ZD.curPlayer);
            return (true);
        }

        public function setItemSprite(_arg1:_0bw):void{
            this._0ep = _arg1;
            this._0ep.x = (WIDTH / 2);
            this._0ep.y = (HEIGHT / 2);
            addChild(this._0ep);
        }

        public function _0bZ(_arg1:Player):void{
            if (this._0ep.itemId != _0J9._1Qx)
            {
                this._7W.visible = !(ObjectLibrary._0dd(this._0ep.itemId, _arg1));
            } else
            {
                this._7W.visible = false;
            };
        }

        public function canHoldItem(_arg1:int):Boolean{
            return (true);
        }

        public function u0():void{
            this.setItemSprite(this._0ep);
        }

        public function mh():int{
            return (this._0ep.itemId);
        }

        protected function getBackgroundColor():int{
            return (0x545454);
        }


    }
}//package _0DE

