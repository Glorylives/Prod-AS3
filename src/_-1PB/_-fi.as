// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.fi

package 1PB{
    import 1uF.1Mf;
    import 1qg.11S;
    import 0eZ.5l;
    import WZ.0Te;

    public class fi extends 1Mf {

        [Inject]
        public var view:CharacterSlotNeedGoldDialog;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 1yT:5l;
        [Inject]
        public var model:0Te;


        override public function initialize():void{
            this.view.UY.add(this.1Tk);
            this.view.cancel.add(this.onCancel);
            this.view.setPrice(this.model.CO());
        }

        override public function destroy():void{
            this.view.UY.remove(this.1Tk);
            this.view.cancel.remove(this.onCancel);
        }

        public function onCancel():void{
            this.KW.dispatch();
        }

        public function 1Tk():void{
            this.1yT.dispatch();
        }


    }
}//package 1PB

