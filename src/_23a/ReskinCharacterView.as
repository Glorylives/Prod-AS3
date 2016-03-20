// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//23a.ReskinCharacterView

package 23a{
    import flash.display.Sprite;
    import 1oP.0sb;
    import 1PB.cO;
    import OZ.23F;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import _Jy._1HZ;
    import XF.lY;
    import flash.events.MouseEvent;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import AO.du;
    import __AS3__.vec.Vector;
    import flash.display.DisplayObject;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import 1js.1sT;

    public class ReskinCharacterView extends Sprite {

        private static const 0qr:int = 10;
        private static const 01X:int = (0sb.WIDTH + (0qr * 2));
        private static const 0um:int = 120;
        private static const MJ:int = 16;
        private static const 1Dp:int = 40;
        private static const 1cm:int = 27;

        private const 1CP:cO = ReskinCharacterView.1DX();
        private const background:23F = ReskinCharacterView.lg();
        private const title:_13j = ReskinCharacterView.Kr();
        private const list:0sb = ReskinCharacterView.25D();
        private const cancel:1nN = ReskinCharacterView.0Kj();
        private const select:1nN = ReskinCharacterView.1Ry();
        public const zu:_1HZ = new XF.lY(ReskinCharacterView.cancel, flash.events.MouseEvent.CLICK);
        public const selected:_1HZ = new XF.lY(ReskinCharacterView.select, flash.events.MouseEvent.CLICK);

        public var Is:int;


        private function 1DX():cO{
            var _local1:cO = new cO();
            _local1.complete.add(this.2W);
            return (_local1);
        }

        private function lg():23F{
            var _local1:23F = new 23F();
            addChild(_local1);
            return (_local1);
        }

        private function Kr():_13j{
            var _local1:_13j = new _13j().setSize(18).setColor(0xB6B6B6).setTextWidth(01X);
            _local1.setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
            _local1.setStringBuilder(new 1cA().setParams(du.14G));
            _local1.y = (0qr * 0.5);
            addChild(_local1);
            return (_local1);
        }

        private function 25D():0sb{
            var _local1:0sb;
            _local1 = new 0sb();
            _local1.x = 0qr;
            _local1.y = (0qr + 1cm);
            addChild(_local1);
            return (_local1);
        }

        private function 0Kj():1nN{
            var _local1:1nN = new 1nN(MJ, du.02D, 0um);
            addChild(_local1);
            this.1CP.push(_local1.textChanged);
            return (_local1);
        }

        private function 1Ry():1nN{
            var _local1:1nN = new 1nN(MJ, du.0nC, 0um);
            addChild(_local1);
            this.1CP.push(_local1.textChanged);
            return (_local1);
        }

        public function 1_ZS(_arg1:Vector.<DisplayObject>):void{
            this.list.setItems(_arg1);
            this.12y();
            this.1qv();
            this.2W();
        }

        private function 12y():void{
            this.Is = Math.min((0sb.HEIGHT + 0qr), this.list.2a());
            this.Is = (this.Is + ((1Dp + (0qr * 2)) + 1cm));
        }

        private function 1qv():void{
            this.background.draw(01X, this.Is);
            this.background.graphics.lineStyle(2, 0x5B5B5B, 1, false, LineScaleMode.NONE, CapsStyle.NONE, JointStyle.BEVEL);
            this.background.graphics.moveTo(1, 1cm);
            this.background.graphics.lineTo((01X - 1), 1cm);
        }

        private function 2W():void{
            var _local1:1sT = new 1sT();
            _local1.layout(01X, this.cancel, this.select);
            this.cancel.y = (this.select.y = (this.Is - 1Dp));
        }


    }
}//package 23a

