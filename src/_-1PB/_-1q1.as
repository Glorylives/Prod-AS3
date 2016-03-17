// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.1q1

package 1PB{
    import 1uF.1Mf;
    import com.company.assembleegameclient.screens.charrects.CharacterRectList;
    import 1Bg.0oS;
    import 1ay.0W-;
    import _1aA.20c;

    public class 1q1 extends 1Mf {

        [Inject]
        public var view:CharacterRectList;
        [Inject]
        public var fP:0oS;
        [Inject]
        public var 0VT:0W-;


        override public function initialize():void{
            this.view.newCharacter.add(this.k0);
            this.view.buyCharacterSlot.add(this.1Hk);
        }

        override public function destroy():void{
            this.view.newCharacter.remove(this.k0);
            this.view.buyCharacterSlot.remove(this.1Hk);
        }

        private function k0():void{
            this.fP.dispatch(new 20c());
        }

        private function 1Hk(_arg1:int):void{
            this.0VT.dispatch(_arg1);
        }


    }
}//package 1PB

