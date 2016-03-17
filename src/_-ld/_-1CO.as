// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//ld.1CO

package ld{
    import flash.events.Event;
    import com.company.assembleegameclient.appengine.SavedCharacter;

    public class 1CO extends Event {

        public static const DELETE_CHARACTER_EVENT:String = "DELETE_CHARACTER_EVENT";

        public var savedChar_:SavedCharacter;

        public function 1CO(_arg1:SavedCharacter){
            super(DELETE_CHARACTER_EVENT);
            this.savedChar_ = _arg1;
        }

    }
}//package ld

