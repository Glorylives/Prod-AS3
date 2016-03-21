// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.1kb

package 0qj{

    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.ui.0S7;
    import _CU._13j;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;


    public class 1kb extends 1ae {

        public var 1K:Vector.<Player> = null;
        private var wd:Vector.<0S7>;
        private var 1MV:_13j;

        public function 1kb(_arg1:Vector.<Player>, _arg2:Boolean=true){
            this.wd = new Vector.<0S7>();
            super(0x363636, 0.5, 0xFFFFFF, 1, _arg2);
            this.1MV = new _13j().setSize(12).setColor(0xB3B3B3);
            this.1MV.setStringBuilder(new 1cA().setParams(du.1mD));
            this.1MV.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.1MV);
            this.1jb(_arg1);
            if (!_arg2)
            {
                filters = [];
            }
            1he.push(this.1MV.textChanged);
        }

        public function 1jb(_arg1:Vector.<Player>):void{
            var _local3:Player;
            var _local4:0S7;
            this.clear();
            this.1K = _arg1.slice();
            if ((((this.1K == null)) || ((this.1K.length == 0))))
            {
                return;
            }
            var _local2:int;
            for each (_local3 in _arg1)
            {
                _local4 = new 0S7(0xB3B3B3, true, _local3);
                _local4.x = 0;
                _local4.y = _local2;
                addChild(_local4);
                this.wd.push(_local4);
                _local2 = (_local2 + 32);
            }
            this.1MV.x = ((width / 2) - (this.1MV.width / 2));
            this.1MV.y = _local2;
            draw();
        }

        private function clear():void{
            var _local1:0S7;
            graphics.clear();
            for each (_local1 in this.wd)
            {
                removeChild(_local1);
            }
            this.wd.length = 0;
        }


    }
}//package 0qj

