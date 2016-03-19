// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RM.kX

package 1RM{
    import 0qj.1ae;
    import _CU.sb;
    import com.company.assembleegameclient.ui.1sK;
    import flash.display.Bitmap;
    import 1n4.1WS;
    import h0.0Jr;
    import Wn.0EB;

    public class kX extends 1ae {

        public function kX(_arg1:0EB){
            var _local3:sb;
            var _local5:1sK;
            var _local2:Bitmap = new Bitmap();
            _local2.bitmapData = _arg1.1me;
            _local2.scaleX = 0.75;
            _local2.scaleY = 0.75;
            _local2.y = 5;
            addChild(_local2);
            _local3 = new sb();
            _local3.setSize(14).setBold(true).setColor(0xFFFFFF);
            _local3.setStringBuilder(new 1WS(_arg1.name));
            _local3.x = 40;
            _local3.y = 5;
            addChild(_local3);
            if (_arg1.guildName)
            {
                _local5 = new 1sK(_arg1.guildName, _arg1.ew);
                _local5.x = 40;
                _local5.y = 20;
                addChild(_local5);
            }
            super(0x363636, 0.5, 0xFFFFFF, 1);
            var _local4:0Jr = new 0Jr(null, _arg1.Zm, null);
            _local4.x = 5;
            _local4.y = ((_local5) ? ((_local5.y + _local5.height) - 5) : 55);
            _local4.setItems(_arg1.1AM);
            addChild(_local4);
        }

    }
}//package 1RM

