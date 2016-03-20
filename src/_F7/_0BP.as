// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//F7.0BP

package _F7{
    import flash.events.Event;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.objects.Player;

    public class _0BP extends Event {

        public static const DEATH:String = "DEATH";

        public var background_:BitmapData;
        public var player_:Player;
        public var accountId_:int;
        public var charId_:int;

        public function _0BP(_arg1:BitmapData, _arg2:int, _arg3:int){
            super(DEATH);
            this.background_ = _arg1;
            this.accountId_ = _arg2;
            this.charId_ = _arg3;
        }

    }
}//package F7

