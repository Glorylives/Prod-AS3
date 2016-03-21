// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.0sb

package 1oP{
    import flash.display.Sprite;
    import OZ.1v8;

    import flash.display.DisplayObject;
    import 0q4.Size;

    public class 0sb extends Sprite {

        public static const 1ss:int = 5;
        public static const WIDTH:int = 442;
        public static const HEIGHT:int = 400;

        private const list:1v8 = 0sb.0Ue();

        private var 1YB:Vector.<DisplayObject>;


        private function 0Ue():1v8{
            var _local1:1v8 = new 1v8();
            _local1.setSize(new Size(WIDTH, HEIGHT));
            _local1.VG.add(this.TQ);
            _local1.1Xp(1ss);
            addChild(_local1);
            return (_local1);
        }

        public function setItems(_arg1:Vector.<DisplayObject>):void{
            this.1YB = _arg1;
            this.list.setItems(_arg1);
            this.TQ(this.list.0xf());
        }

        private function TQ(_arg1:Boolean):void{
            var _local3:CharacterSkinListItem;
            var _local2:int = CharacterSkinListItem.WIDTH;
            if (!_arg1)
            {
                _local2 = (_local2 + 1v8.1KI);
            }
            for each (_local3 in this.1YB)
            {
                _local3.setWidth(_local2);
            }
        }

        public function 2a():Number{
            return (this.list.2a());
        }


    }
}//package 1oP

