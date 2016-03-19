// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.0zy

package Ct{
    import 1uF.1Mf;
    import 2--.CaretakerQueryDialog;
    import 5z.zL;
    import 1qg.11S;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.BitmapData;

    public class 0zy extends 1Mf {

        [Inject]
        public var view:CaretakerQueryDialog;
        [Inject]
        public var model:zL;
        [Inject]
        public var closeDialogs:11S;


        override public function initialize():void{
            this.view.closed.addOnce(this.1qf);
            this.view.0Pe(this.hY());
        }

        private function hY():BitmapData{
            var _local1:int = this.model.Gr();
            return (ObjectLibrary.getRedrawnTextureFromType(_local1, 80, true));
        }

        override public function destroy():void{
            this.view.closed.removeAll();
        }

        private function 1qf():void{
            this.closeDialogs.dispatch();
        }


    }
}//package Ct

