// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sC.1u7

package sC{
    import 1uF.1Mf;
    import ZE.0t6;
    import WZ._NV;
    import 5z.zL;
    import com.company.assembleegameclient.objects.18p;
    import com.company.assembleegameclient.objects.Pet;

    public class 1u7 extends 1Mf {

        [Inject]
        public var view:0t6;
        [Inject]
        public var 8e:_NV;
        [Inject]
        public var 1G5:zL;
        private var 1l-:18p;


        override public function initialize():void{
            this.view.0RY = this.1Rg;
        }

        override public function destroy():void{
            super.destroy();
        }

        public function 1Rg():18p{
            if (!this.1Pk())
            {
                return (this.8e.25S);
            }
            if (this.0eY())
            {
                this.1l- = this.8e.25S;
            }
            return (this.1l-);
        }

        private function 0eY():Boolean{
            return ((((this.8e.25S is Pet)) ? this.1Oj() : true));
        }

        private function 1Oj():Boolean{
            if (((!(this.1l-)) && (this.1Pk())))
            {
                return (true);
            }
            if ((((((this.1l- is Pet)) && (this.1Pk()))) && (!((Pet(this.8e.25S).vo.try () == Pet(this.1l-).vo.try ())))))
            {
                return (true);
            }
            return (false);
        }

        private function 1Pk():Boolean{
            return (this.view.gs_.map.isPetYard);
        }


    }
}//package sC

