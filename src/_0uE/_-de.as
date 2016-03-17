// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.de

package 0uE{
    import 1uF.1Mf;
    import 5z.zL;

    public class de extends 1Mf {

        [Inject]
        public var view:12q;
        [Inject]
        public var model:zL;


        override public function initialize():void{
            this.view.init(this.model.1tI());
        }

        override public function destroy():void{
        }


    }
}//package 0uE

