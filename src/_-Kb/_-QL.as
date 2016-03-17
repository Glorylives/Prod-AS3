// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Kb.QL

package Kb{
    import 1Cs.ds;
    import 1Bg.h8;
    import 1Bg.0oS;
    import _1aA.CharacterSelectionAndNewsScreen;
    import 1PB.TitleView;

    public class QL {

        [Inject]
        public var model:ds;
        [Inject]
        public var 0gc:h8;
        [Inject]
        public var 21r:0oS;


        public function execute():void{
            if (this.model.UD())
            {
                this.CF();
            } else
            {
                this.0vB();
            };
        }

        private function CF():void{
            this.model.46();
            this.0gc.dispatch();
            this.21r.dispatch(new CharacterSelectionAndNewsScreen());
        }

        private function 0vB():void{
            this.21r.dispatch(new TitleView());
        }


    }
}//package Kb

