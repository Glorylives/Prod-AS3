// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0pT.18X

package 0pT{
    import flash.display.Sprite;
    import flash.display.Bitmap;

    import flash.text.TextField;
    import flash.filters.GlowFilter;
    import flash.display.BitmapData;
    import com.company.util.AssetLibrary;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.text.TextFormat;
    import flash.text.TextFormatAlign;
    import 1n4.1cA;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.text.TextFieldAutoSize;
    import 0gd.GTween;
    import flash.ui.Mouse;
    import com.company.assembleegameclient.parameters.Parameters;


    public class 18X extends Sprite {

        public static const  if:int = 1;
        public static const 0jy:int = 2;
        public static const 1-z:int = 3;
        private static const 1gj:int = 100;
        public static const 1Lm:int = 1;
        public static const 0Be:int = 2;
        private static const 11s:Number = 5;

        private const 0YZ:Number = 3;
        private const 1BP:Number = 80;
        private const 0M6:int = 3500;

        public var 04c:Bitmap;
        public var 19A:Bitmap;
        private var item:g-;
        private var 22G:Number;
        private var 1A7:Number;
        private var 08H:Vector.<Bitmap>;
        private var d2:Number = 50;
        private var It:Boolean = false;
        private var 1ah:Boolean = false;
        public var active:Boolean = false;
        private var 16W:Number = 0;
        private var 09x:Number = 0;
        private var 25L:Number = 0;
        private var 0KG:Number;
        public var 0vv:int;
        public var size_:int = 100;
        private var 1S0:TextField;
        private var 1Cz:Number = 0;
        private var 16K:Number = 0;
        private var 273:Boolean = false;
        private var 1iG:int = 0;
        private var 24j:int = -1;
        private var 1fA:Boolean = false;
        private var 0Sv:GlowFilter;

        public function 18X(){
            var _local1:BitmapData;
            var _local2:uint;
            this.1S0 = new TextField();
            super();
            this.08H = new Vector.<Bitmap>();
            _local2 = 0;
            while (_local2 < 3)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", (this.1BP + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 3)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 16) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 7)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 32) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 7)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 48) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 5)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 64) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 8)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 80) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local1 = AssetLibrary.1JR("lofiCharBig", 0x0100);
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0, true);
            this.04c = new Bitmap(_local1);
            this.04c.alpha = 0;
            addChild(this.04c);
            this.19A = new Bitmap(_local1);
            this.19A.filters = [new ColorMatrixFilter(MoreColorUtil.1Z6)];
            this.19A.alpha = 1;
            this.active = false;
            addChild(this.19A);
            this.0Sv = new GlowFilter(49151, 1, 45, 45, 1.5);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            addEventListener(MouseEvent.ROLL_OVER, this.onMouseOver, false, 0, true);
            addEventListener(MouseEvent.ROLL_OUT, this.Li, false, 0, true);
            this.setInactive();
        }

        public function setXPos(_arg1:Number):void{
            this.x = (_arg1 - (this.width / 2));
        }

        public function setYPos(_arg1:Number):void{
            this.y = (_arg1 - (this.height / 2));
        }

        private function k9(_arg1:Number):Number{
            return ((_arg1 - (this.width / 2)));
        }

        private function 0QC(_arg1:Number):Number{
            return ((_arg1 - (this.height / 2)));
        }

        public function getCenterX():Number{
            return ((this.x + (this.width / 2)));
        }

        public function getCenterY():Number{
            return ((this.y + (this.height / 2)));
        }

        public function returnCenterX():Number{
            return ((this.22G + (this.width / 2)));
        }

        public function returnCenterY():Number{
            return ((this.1A7 + (this.width / 2)));
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.removeItemReveal();
            this.04c = null;
            this.19A = null;
            this.item = null;
            this.08H = null;
        }

        public function setGlowState(_arg1:int):void{
            this.24j = _arg1;
            if (this.24j == 0Be)
            {
                this.0Sv.alpha = 1;
            }
        }

        public function 0K4(_arg1:int):void{
            if ((((this.parent == null)) || ((this.parent.parent == null))))
            {
                return;
            }
            this.removeItemReveal();
            this.item = new g-(_arg1);
            this.item.mQ.alpha = 1;
            parent.addChild(this.item);
            this.item.setXPos(this.getCenterX());
            this.item.setYPos(this.getCenterY());
            1IT.Bv(this.item, {
                scaleX:1.25,
                scaleY:1.25
            }, {
                scaleX:1,
                scaleY:1
            });
            this.setInactive();
        }

        public function removeItemReveal():void{
            if (((!((this.item == null))) && (this.item.parent)))
            {
                parent.removeChild(this.item);
            }
            if (((!((this.1S0 == null))) && (this.1S0.parent)))
            {
                parent.removeChild(this.1S0);
            }
        }

        public function doItemShow(_arg1:int):void{
            if ((((this.parent == null)) || ((this.parent.parent == null))))
            {
                return;
            }
            this.removeItemReveal();
            var _local2:TextFormat = new TextFormat();
            _local2.size = 18;
            _local2.font = "Myriad Pro";
            _local2.bold = false;
            _local2.align = TextFormatAlign.LEFT;
            _local2.leftMargin = 0;
            _local2.indent = 0;
            _local2.leading = 0;
            this.1S0.text = 1cA.1SQ(ObjectLibrary.118[_arg1]);
            this.1S0.textColor = 0xFFFFFF;
            this.1S0.autoSize = TextFieldAutoSize.CENTER;
            this.1S0.selectable = false;
            this.1S0.defaultTextFormat = _local2;
            this.1S0.setTextFormat(_local2);
            this.item = new g-(_arg1, 1gj);
            this.item.mQ.alpha = 1;
            parent.addChild(this.item);
            this.item.alpha = 0;
            this.item.setXPos(this.getCenterX());
            this.item.setYPos(this.getCenterY());
            this.1S0.x = (this.item.getCenterX() - (this.1S0.width / 2));
            this.1S0.y = (this.item.y + 80);
            parent.addChild(this.1S0);
            var _local3:GTween = new GTween(this.item, 1, {alpha:1});
            1IT.Bv(this.item, {
                scaleX:1.25,
                scaleY:1.25
            }, {
                scaleX:1,
                scaleY:1
            });
            this.0BQ();
        }

        public function 1RE(_arg1:Number, _arg2:Number):void{
            this.22G = this.x;
            this.1A7 = this.y;
            var _local3:Number = this.k9(_arg1);
            var _local4:Number = this.0QC(_arg2);
            var _local5:GTween = new GTween(this, 0.5, {
                x:_local3,
                y:_local4
            });
        }

        public function saveReturnPotion():void{
            this.22G = this.x;
            this.1A7 = this.y;
            this.1Cz = this.returnCenterX();
            this.16K = this.returnCenterY();
        }

        public function doItemReturn():void{
            var _local1:GTween = new GTween(this, 0.12, {
                x:this.22G,
                y:this.1A7
            });
            this.filters = [this.0Sv];
            this.setGlowState(0Be);
        }

        public function 0BQ():void{
            if (!this.active)
            {
                this.04c.alpha = 0;
                this.19A.alpha = 1;
                this.setAnimation(0, 3);
                this.setAnimationDuration(100);
            }
            this.active = true;
        }

        public function setActive2():void{
        }

        public function setInactive():void{
            if (this.active)
            {
                if (this.04c != null)
                {
                    this.04c.alpha = 1;
                }
                if (this.19A != null)
                {
                    this.19A.alpha = 0;
                }
            }
            this.active = false;
        }

        public function update(_arg1:int, _arg2:int):void{
            var _local3:int;
            var _local4:Number;
            if (this.active)
            {
                if ((((this.04c.alpha < 1)) && ((this.19A.alpha > 0))))
                {
                    this.19A.alpha = (this.19A.alpha - 0.03);
                    this.04c.alpha = (this.04c.alpha + 0.03);
                } else
                {
                    this.19A.alpha = 0;
                    this.04c.alpha = 1;
                }
            } else
            {
                if ((((this.04c.alpha > 0)) && ((this.19A.alpha < 1))))
                {
                    this.19A.alpha = (this.19A.alpha + 0.03);
                    this.04c.alpha = (this.04c.alpha - 0.03);
                } else
                {
                    this.19A.alpha = 1;
                    this.04c.alpha = 0;
                }
            }
            if (this.24j == 1Lm)
            {
                this.0Sv.alpha = (this.0Sv.alpha - 0.07);
                this.filters = [this.0Sv];
                if (this.0Sv.alpha <= 0.03)
                {
                    this.filters = [];
                }
            } else
            {
                if (this.24j == 0Be)
                {
                    if ((((this.0Sv.alpha >= 0.95)) && (this.1fA)))
                    {
                        this.1fA = false;
                    } else
                    {
                        if ((((this.0Sv.alpha <= 0.5)) && (!(this.1fA))))
                        {
                            this.1fA = true;
                        }
                    }
                    _local3 = ((this.1fA) ? 1 : -1);
                    this.0Sv.alpha = (this.0Sv.alpha + (0.01 * _local3));
                    this.filters = [this.0Sv];
                }
            }
            if (this.It)
            {
                _local4 = this.uy(1IT.07Z, 1IT.1fj);
                if (_local4 <= this.0M6)
                {
                    if (this.0vv != 0jy)
                    {
                        this.1La();
                    }
                    this.d2 = Math.max((_local4 / 8), 70);
                    this.d2 = Math.min(this.d2, 170);
                } else
                {
                    if (this.0vv !=  if)
                    {
                        this.setAnimationPulse();
                    }
                }
            }
            if (this.273)
            {
                this.setXPos((this.1Cz + ((Math.random() * 6) - 3)));
                this.setYPos((this.16K + ((Math.random() * 6) - 3)));
                this.1iG++;
                if (this.1iG == 11s)
                {
                    this.273 = false;
                    this.1iG = 0;
                }
            }
            this.Ql(_arg1, _arg2);
        }

        public function setShake(_arg1:Boolean):void{
            this.273 = _arg1;
        }

        public function Ql(_arg1:int, _arg2:int):void{
            if (this.active)
            {
                removeChild(this.04c);
                this.25L = (this.25L + _arg2);
                if (this.25L > this.d2)
                {
                    this.09x = ((this.09x + 1) % this.0KG);
                    this.25L = 0;
                } else
                {
                    if (this.09x > this.0KG)
                    {
                        this.09x = 0;
                    }
                }
                this.04c = this.08H[(this.16W + this.09x)];
                if (this.0vv == 1-z)
                {
                    if (this.scaleX > 0.01)
                    {
                        this.scaleX = (this.scaleX - (_arg2 * 0.002));
                        this.scaleY = (this.scaleY - (_arg2 * 0.002));
                        this.setXPos((this.1Cz + (Math.random() * 5)));
                        this.setYPos((this.16K + (Math.random() * 5)));
                    } else
                    {
                        this.scaleX = 0.01;
                        this.scaleY = 0.01;
                    }
                }
                addChild(this.04c);
            }
        }

        public function setAnimationDuration(_arg1:Number):void{
            this.d2 = _arg1;
        }

        public function onMouseOver(_arg1:MouseEvent):void{
            Mouse.cursor = "hand";
        }

        private function Li(_arg1:MouseEvent):void{
            Mouse.cursor = Parameters.data_.cursorSelect;
        }

        public function setMouseTracking(_arg1:Boolean):void{
            this.It = _arg1;
        }

        private function uy(_arg1:Number, _arg2:Number):Number{
            return ((((this.getCenterX() - _arg1) * (this.getCenterX() - _arg1)) + ((this.getCenterY() - _arg2) * (this.getCenterY() - _arg2))));
        }

        public function reset():void{
            this.active = false;
            this.d2 = 50;
            this.It = false;
        }

        public function setAnimation(_arg1:Number, _arg2:Number):void{
            this.16W = _arg1;
            this.09x = 0;
            this.25L = 0;
            this.0KG = _arg2;
            this.0vv = -1;
        }

        public function setAnimationPulse():void{
            this.setAnimation(0, 3);
            this.d2 = 250;
            this.0vv =  if;
        }

        public function 1La():void{
            this.setAnimation(20, 13);
            this.0vv = 0jy;
        }

        public function setAnimationClicked():void{
            this.setAnimation(3, 3);
            this.d2 = 20;
            this.0vv = 1-z;
            this.setMouseTracking(false);
        }

        public function resetVars():void{
            this.active = false;
            this.09x = 0;
            this.0vv = -1;
            this.d2 = 50;
            this.It = false;
            this.25L = 0;
            this.16W = 0;
            this.scaleX = 1;
            this.scaleY = 1;
        }


    }
}//package 0pT

