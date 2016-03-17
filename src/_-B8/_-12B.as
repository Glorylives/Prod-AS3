// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//B8.12B

package B8{
    import _0OG._22M;
    import 1E8.23r;
    import flash.net.Socket;
    import 0qs.0MV;
    import 0qs.J1;
    import 1E8.Rc;
    import 0Fr.*;

    public class 12B implements 1bp {

        [Inject]
        public var kf:_22M;
        private var 1Us:23r;


        public function configure():void{
            this.1Us = new 23r().setInjector(this.kf);
            this.kf.map(Socket);
            this.kf.map(0MV).1eo(this.1Us);
            this.kf.map(J1).1eo(this.1Us);
            this.kf.map(Rc).1nL();
        }


    }
}//package B8

