// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//xk.0RS

package xk{
    import 1zG.1wd;
    import 1qg.11S;
    import 1Cs.ds;
    import WZ.0Te;

    public class 0RS {

        [Inject]
        public var death:1wd;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var model:ds;
        [Inject]
        public var player:0Te;
        [Inject]
        public var 0kB:eJ;
        [Inject]
        public var 07y:f8;
        [Inject]
        public var normal:4h;


        public function execute():void{
            this.closeDialogs.dispatch();
            if (this.0Uv())
            {
                this.006();
            } else
            {
                this.0Um();
            }
        }

        private function 0Uv():Boolean{
            return (this.model.UD());
        }

        private function 006():void{
            this.normal.dispatch(this.model.17C());
        }

        private function 0Um():void{
            this.model.Lt(this.death);
            if (this.death.1LW)
            {
                this.07y.dispatch(this.death);
            } else
            {
                if (!this.player.Qk())
                {
                    this.0kB.dispatch(this.death);
                } else
                {
                    this.normal.dispatch(this.death);
                }
            }
        }


    }
}//package xk

