// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0OB.182

package 0OB{
    import WZ.0Te;
    import com.company.assembleegameclient.appengine.SavedCharacter;

    public class 182 implements Ze {

        [Inject]
        public var yW:0Te;
        private var selected:SavedCharacter;


        public function 1pq():int{
            return (this.yW.1pq());
        }

        public function 0JE(_arg1:int):SavedCharacter{
            return (this.yW.0mo(_arg1));
        }

        public function deleteCharacter(_arg1:int):void{
            this.yW.deleteCharacter(_arg1);
            if (this.selected.charId() == _arg1)
            {
                this.selected = null;
            };
        }

        public function select(_arg1:SavedCharacter):void{
            this.selected = _arg1;
        }

        public function 0NO():SavedCharacter{
            return (this.selected);
        }


    }
}//package 0OB

