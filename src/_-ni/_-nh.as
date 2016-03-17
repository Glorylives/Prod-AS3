// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//ni.nh

package ni{
    import _0OG._22M;
    import rz.1Qt;
    import 0a1.PE;
    import 0dW.2-J;
    import 0dW.0jz;

    public class nh {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;


        [PostConstruct]
        public function setup():void{
            this.kf.map(PE).1nL();
            this.mediatorMap.map(2-J).1TU(0jz);
        }


    }
}//package ni

