// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.C6

package 0QW{
    import flash.display.Shape;
    import com.company.assembleegameclient.map.T8;
    import 0qj.1ae;

    public class C6 extends 0VH {

        public var 0eF:XML;

        public function C6(_arg1:XML){
            super(int(_arg1.@type));
            this.0eF = _arg1;
            var _local2:Shape = new Shape();
            _local2.graphics.beginFill(T8.getColor(type_), 0.5);
            _local2.graphics.drawRect(0, 0, (WIDTH - 8), (HEIGHT - 8));
            _local2.graphics.endFill();
            _local2.x = ((WIDTH / 2) - (_local2.width / 2));
            _local2.y = ((HEIGHT / 2) - (_local2.height / 2));
            addChild(_local2);
        }

        override protected function getToolTip():1ae{
            return (new 0fP(this.0eF));
        }


    }
}//package 0QW

