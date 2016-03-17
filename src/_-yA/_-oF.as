// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yA.oF

package yA{
    import ZE.Panel;
    import _CU._13j;
    import 0IN.1qO;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.ui.1Ge;
    import 1n4.1WS;
    import com.company.assembleegameclient.game.GameSprite;
    import _04_._1JZ;
    import 0xo.lZ;
    import N.08e;
    import 1zG.1lm;

    public class oF extends Panel {

        private static var 3a:Boolean = false;

        private const Yi:_13j = 1qO.1H-(0xFFFFFF, 18, true);

        private var icon:Bitmap;
        private var title:String = "The Tinkerer";
        private var 19S:String = "See Offers";
        private var C9:String = "Check Back Later";
        private var objectType:int;
        var 1kJ:1Ge;

        public function oF(_arg1:GameSprite){
            super(_arg1);
            this.icon = 1qO.4d(5972);
            this.icon.x = -4;
            this.icon.y = -8;
            addChild(this.icon);
            this.objectType = 5972;
            this.Yi.setStringBuilder(new 1WS(this.title));
            this.Yi.x = 78;
            this.Yi.y = 28;
            addChild(this.Yi);
            if (08Y())
            {
                this.1ou();
            } else
            {
                this.0qB();
            };
        }

        public static function Ft():void{
            var _local1:lZ = _1JZ.0JF().getInstance(lZ);
            var _local2:08e = _1JZ.0JF().getInstance(08e);
            if (((((!((_local1 == null))) && (!((_local1.ja == null))))) && (!((_local1.ja.gsc_ == null)))))
            {
                _local2.add(0WM);
                _local1.ja.gsc_.questFetch();
            };
        }

        public static function 0WM(_arg1:1lm):void{
            var _local2:int = _arg1.tier;
            if (_local2 > 0)
            {
                3a = true;
            } else
            {
                3a = false;
            };
        }

        public static function 08Y():Boolean{
            if (((3a) || (((!((0d.1E0 == -1))) && ((0d.1E0 == new Date().dayUTC))))))
            {
                return (true);
            };
            return (false);
        }


        public function 1ou():void{
            this.1kJ = new 1Ge(16, this.19S);
            this.1kJ.textChanged.addOnce(this.M3);
            addChild(this.1kJ);
        }

        public function 0qB():void{
            this.1kJ = new 1Ge(16, this.C9);
            this.1kJ.textChanged.addOnce(this.M3);
            addChild(this.1kJ);
        }

        public function init():void{
        }

        private function M3():void{
            this.1kJ.x = ((WIDTH / 2) - (this.1kJ.width / 2));
            this.1kJ.y = ((HEIGHT - this.1kJ.height) - 4);
        }


    }
}//package yA

