// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1m5.FameView

package 1m5{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.display.DisplayObjectContainer;
    import flash.display.Bitmap;
    import _CU._13j;
    import _1aA.1k8;
    import _1aA.0Nh;
    import _1aA.Lz;
    import zD.05l;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import XF.lY;
    import flash.events.MouseEvent;
    import 0gd.GTween;
    import _ZS.0ZC;
    import flash.display.BitmapData;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import 1n4.1cA;
    import com.company.rotmg.graphics.FameIconBackgroundDesign;
    import flash.geom.Rectangle;
    import com.company.assembleegameclient.util.09g;
    import com.company.util.BitmapUtil;
    import com.company.rotmg.graphics.ScreenGraphic;

    public class FameView extends Sprite {

        public var closed:_1HZ;
        private var 1nZ:DisplayObjectContainer;
        private var CQ:Bitmap;
        private var title:_13j;
        private var date:_13j;
        private var 1Tx:1k8;
        private var Ew:0Nh;
        private var 0GL:Lz;
        private var 0qT:Boolean;
        private var 1kY:Boolean;
        private var 1gz:Boolean;

        public function FameView(){
            addChild(new 05l());
            addChild((this.1nZ = new Sprite()));
            addChild((this.CQ = new Bitmap()));
            this.0GL = new Lz(du.16g, 36, false);
            this.0GL.setAutoSize(TextFieldAutoSize.CENTER);
            this.0GL.setVerticalAlign(_13j.MIDDLE);
            this.closed = new lY(this.0GL, MouseEvent.CLICK);
        }

        public function UI(_arg1:Boolean):void{
            this.0qT = _arg1;
        }

        public function 0mR(_arg1:BitmapData):void{
            this.CQ.bitmapData = _arg1;
            var _local2:GTween = new GTween(this.CQ, 2, {alpha:0});
            _local2.onComplete = this.0Vf;
            0ZC.play("death_screen");
        }

        public function u8():void{
            this.CQ.bitmapData = null;
        }

        private function 0Vf(_arg1:GTween):void{
            removeChild(this.CQ);
            this.1kY = true;
            if (this.1gz)
            {
                this.5U();
            }
        }

        public function 0xb(_arg1:String, _arg2:int, _arg3:int):void{
            this.title = new _13j().setSize(38).setColor(0xCCCCCC);
            this.title.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.title.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            var _local4:String = ObjectLibrary.118[_arg3];
            this.title.setStringBuilder(new 1cA().setParams(du.0IZ, {
                name:_arg1,
                level:_arg2,
                type:_local4
            }));
            this.title.x = (stage.stageWidth / 2);
            this.title.y = 225;
            this.1nZ.addChild(this.title);
        }

        public function Vg(_arg1:String, _arg2:String):void{
            this.date = new _13j().setSize(24).setColor(0xCCCCCC);
            this.date.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.date.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            var _local3:1cA = new 1cA();
            if (_arg2)
            {
                _local3.setParams(du.1SN, {
                    date:_arg1,
                    killer:_arg2
                });
            } else
            {
                _local3.setParams(du.1Ww, {date:this.date});
            }
            this.date.setStringBuilder(_local3);
            this.date.x = (stage.stageWidth / 2);
            this.date.y = 272;
            this.1nZ.addChild(this.date);
        }

        public function setIcon(_arg1:BitmapData):void{
            var _local2:Sprite;
            var _local4:Bitmap;
            _local2 = new Sprite();
            var _local3:Sprite = new FameIconBackgroundDesign();
            _local3.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            _local2.addChild(_local3);
            _local4 = new Bitmap(_arg1);
            _local4.x = ((_local2.width / 2) - (_local4.width / 2));
            _local4.y = ((_local2.height / 2) - (_local4.height / 2));
            _local2.addChild(_local4);
            _local2.y = 20;
            _local2.x = ((stage.stageWidth / 2) - (_local2.width / 2));
            this.1nZ.addChild(_local2);
        }

        public function 0Vq(_arg1:int, _arg2:XML):void{
            this.1Tx = new 1k8(new Rectangle(0, 0, 784, 150), _arg2);
            this.1Tx.x = 8;
            this.1Tx.y = 316;
            addChild(this.1Tx);
            this.1nZ.addChild(this.1Tx);
            var _local3:BitmapData = 09g.0jZ();
            _local3 = BitmapUtil.0Bs(_local3, 6, 6, (_local3.width - 12), (_local3.height - 12));
            this.Ew = new 0Nh(24, 0xCCCCCC, 0xFFC800, du.0iu, null, 0, _arg1, "", "", new Bitmap(_local3));
            this.Ew.x = 10;
            this.Ew.y = 470;
            this.1nZ.addChild(this.Ew);
            this.1gz = true;
            if (((!(this.0qT)) || (this.1kY)))
            {
                this.5U();
            }
        }

        private function 5U():void{
            this.1nZ.addChild(new ScreenGraphic());
            this.0GL.x = (stage.stageWidth / 2);
            this.0GL.y = 550;
            this.1nZ.addChild(this.0GL);
            if (this.0qT)
            {
                this.1Tx.2-D();
            } else
            {
                this.1Tx.08r();
            }
        }


    }
}//package 1m5

