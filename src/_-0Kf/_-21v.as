// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Kf.21v

package 0Kf{
    import 1uF.1Mf;
    import 0OB.Ze;
    import 0WR.1Yp;
    import 1qg.11S;
    import com.company.assembleegameclient.appengine.SavedCharacter;

    public class 21v extends 1Mf {

        [Inject]
        public var view:ConfirmDeleteCharacterDialog;
        [Inject]
        public var model:Ze;
        [Inject]
        public var deleteCharacter:1Yp;
        [Inject]
        public var closeDialogs:11S;
        private var character:SavedCharacter;


        override public function initialize():void{
            this.view.deleteCharacter.add(this.061);
            this.view.cancel.add(this.KW);
            this.character = this.model.0NO();
            this.view.1wG(this.character.name(), this.character.0ki());
        }

        override public function destroy():void{
            this.view.deleteCharacter.remove(this.061);
            this.view.cancel.remove(this.KW);
        }

        private function 061():void{
            this.deleteCharacter.dispatch(this.character);
        }

        private function KW():void{
            this.closeDialogs.dispatch();
        }


    }
}//package 0Kf

