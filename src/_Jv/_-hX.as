// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//JV.hX

package JV{
    import flash.display.Sprite;
    import flash.text.TextField;
    import flash.text.TextFormat;

    public class hX extends Sprite {

        private static const 14o:String = ((('<p align="center"><font color="#FFFFFF">Play at: ' + '<br/></font><font color="#7777EE">') + '<a href="http://www.realmofthemadgod.com/">') + "www.realmofthemadgod.com</font></a></p>");

        public function hX(){
            var _local1:TextField = new TextField();
            _local1.selectable = false;
            var _local2:TextFormat = new TextFormat();
            _local2.size = 20;
            _local1.defaultTextFormat = _local2;
            _local1.htmlText = 14o;
            _local1.width = 800;
            _local1.y = ((600 / 2) - (_local1.height / 2));
            addChild(_local1);
        }

    }
}//package JV

