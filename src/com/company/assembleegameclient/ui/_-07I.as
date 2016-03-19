// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.07I

package com.company.assembleegameclient.ui{
    import flash.geom.Matrix;
    import 1r-.1L6;
    import flash.display.Shape;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import _CU.1CD;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import com.company.util._tu;
    import com.company.util.MoreColorUtil;
    import flash.geom.Point;
    import flash.display.Bitmap;
    import flash.display.BitmapData;
    import com.company.util.0IB;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import 1n4.1WS;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1jB.1Ha;
    import com.company.assembleegameclient.objects.Player;
    import __AS3__.vec.*;
    import 1r-.*;

    public class 07I extends Slot implements u- {

        private static const 1Ab:Matrix = new Matrix();
        public static const iX:int = -1;
        private static const 0sv:Matrix = Cz();

        public const 1-P:1L6 = new 1L6();

        public var included_:Boolean;
        public var 0a2:0CL;
        private var id:uint;
        private var item_:int;
        private var S:Shape;
        private var 1Mg:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var hW:GraphicsPath;
        private var graphicsData_:Vector.<IGraphicsData>;
        private var nE:1CD;

        public function 07I(_arg1:int, _arg2:Boolean, _arg3:Boolean, _arg4:int, _arg5:int, _arg6:Array, _arg7:uint){
            this.0a2 = new 0CL();
            this.1Mg = new GraphicsSolidFill(16711310, 1);
            this.1F4 = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.1Mg);
            this.hW = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.graphicsData_ = new <IGraphicsData>[this.1F4, this.hW, _tu.1l4];
            super(_arg4, _arg5, _arg6);
            this.id = _arg7;
            this.item_ = _arg1;
            this.included_ = _arg3;
            this.1tQ();
            if (!_arg2)
            {
                transform.colorTransform = MoreColorUtil.0gn;
            }
            this.S = this.0iA();
            addChild(this.S);
            this.setIncluded(_arg3);
            this.1-P.1pS(this);
        }

        private static function Cz():Matrix{
            var _local1:Matrix = new Matrix();
            _local1.translate(10, 5);
            return (_local1);
        }


        private function 1tQ():void{
            if (!this.isEmpty())
            {
                this.1vN();
            }
        }

        private function 1vN():void{
            var _local3:Point;
            var _local4:Bitmap;
            var _local5:BitmapData;
            0IB.13h(this, 0pq);
            var _local1:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.item_, 80, true);
            var _local2:XML = ObjectLibrary.GD[this.item_];
            if (((_local2.hasOwnProperty("Doses")) && (this.nE)))
            {
                _local1 = _local1.clone();
                _local5 = this.nE.make(new 1WS(String(_local2.Doses)), 12, 0xFFFFFF, false, 1Ab, false);
                _local1.draw(_local5, 0sv);
            }
            _local3 = 09l(this.item_, type_, false);
            _local4 = new Bitmap(_local1);
            _local4.x = (((WIDTH / 2) - (_local4.width / 2)) + _local3.x);
            _local4.y = (((HEIGHT / 2) - (_local4.height / 2)) + _local3.y);
            0IB.0pa(this, _local4);
        }

        public function setIncluded(_arg1:Boolean):void{
            this.included_ = _arg1;
            this.S.visible = this.included_;
            if (this.included_)
            {
                1Au.color = 16764247;
            } else
            {
                1Au.color = 0x545454;
            }
            0aJ();
        }

        public function Hk(_arg1:1CD):void{
            this.nE = _arg1;
            this.1tQ();
        }

        private function 0iA():Shape{
            var _local1:Shape = new Shape();
            tu.ln(this.hW);
            tu.0S-(0, 0, WIDTH, HEIGHT, 4, 7R, this.hW);
            _local1.graphics.drawGraphicsData(this.graphicsData_);
            return (_local1);
        }

        public function 4-(_arg1:1hy):void{
            this.1-P.4-(_arg1);
        }

        public function Bs():1hy{
            return (this.1-P.Bs());
        }

        public function na(_arg1:of):void{
            this.1-P.na(_arg1);
        }

        public function w1():of{
            return (this.1-P.w1());
        }

        public function 1t3(_arg1:Player):void{
            if (!this.isEmpty())
            {
                this.1-P.tooltip = this.0a2.make(this.item_, _arg1, -1, 1Ha.OTHER_PLAYER, this.id);
            }
        }

        public function isEmpty():Boolean{
            return ((this.item_ == iX));
        }


    }
}//package com.company.assembleegameclient.ui

