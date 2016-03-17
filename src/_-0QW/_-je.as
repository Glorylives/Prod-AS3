// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.je

package 0QW{
    import flash.events.Event;
    import __AS3__.vec.Vector;
    import com.company.util.IntPoint;

    class je extends Event {

        public static const TILES_EVENT:String = "TILES_EVENT";

        public var tiles_:Vector.<IntPoint>;

        public function je(_arg1:Vector.<IntPoint>){
            super(TILES_EVENT);
            this.tiles_ = _arg1;
        }

    }
}//package 0QW

