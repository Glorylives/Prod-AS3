// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yA._oF

package _yA{
import _0IN._1qO;

import _0xo._lZ;

import _1zG._1lm;

import _N._08e;

import _ZE.Panel;
    import _CU._13j;
    import _0IN._1qO;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.ui._1Ge;
    import _1n4._1WS;
    import com.company.assembleegameclient.game.GameSprite;
    import _04_._1JZ;

    public class _oF extends Panel {

        private static var _3a:Boolean = false;

        private const Yi:_13j = _1qO._1H(0xFFFFFF, 18, true);

        private var icon:Bitmap;
        private var title:String = "The Tinkerer";
        private var _19S:String = "See Offers";
        private var C9:String = "Check Back Later";
        private var objectType:int;
        var _1kJ:_1Ge;

        public function _oF(_arg1:GameSprite){
            super(_arg1);
            this.icon = _1qO._4d(5972);
            this.icon.x = -4;
            this.icon.y = -8;
            addChild(this.icon);
            this.objectType = 5972;
            this.Yi.setStringBuilder(new _1WS(this.title));
            this.Yi.x = 78;
            this.Yi.y = 28;
            addChild(this.Yi);
            if (_08Y())
            {
                this._1ou();
            } else
            {
                this._0qB();
            }
        }

        public static function Ft():void{
            var _local1:_lZ = _1JZ._0JF().getInstance(_lZ);
            var _local2:_08e = _1JZ._0JF().getInstance(_08e);
            if (((((!((_local1 == null))) && (!((_local1.ja == null))))) && (!((_local1.ja.gsc_ == null)))))
            {
                _local2.add(_0WM);
                _local1.ja.gsc_.questFetch();
            }
        }

        public static function _0WM(_arg1:_1lm):void{
            var _local2:int = _arg1.tier;
            if (_local2 > 0)
            {
                _3a = true;
            } else
            {
                _3a = false;
            }
        }

        public static function _08Y():Boolean{
            if (((_3a) || (((!((_0d._1E0 == -1))) && ((_0d._1E0 == new Date().dayUTC))))))
            {
                return (true);
            }
            return (false);
        }


        public function _1ou():void{
            this._1kJ = new _1Ge(16, this._19S);
            this._1kJ.textChanged.addOnce(this.M3);
            addChild(this._1kJ);
        }

        public function _0qB():void{
            this._1kJ = new _1Ge(16, this.C9);
            this._1kJ.textChanged.addOnce(this.M3);
            addChild(this._1kJ);
        }

        public function init():void{
        }

        private function M3():void{
            this._1kJ.x = ((WIDTH / 2) - (this._1kJ.width / 2));
            this._1kJ.y = ((HEIGHT - this._1kJ.height) - 4);
        }


    }
}//package yA

