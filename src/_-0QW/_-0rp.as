// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.0rp

package 0QW{
    import 5I.1BA;
    import com.company.util.02E;
    import 5I.0V2;
    import 5I.1AD;

    public class 0rp extends 1BA {

        public static const 24Y:int = 0;
        public static const 1ts:int = 1;
        public static const 0tp:int = 2;
        public static const Mn:int = 3;
        public static const Pd:int = 4;
        public static const 1tm:int = 5;
        public static const 224:int = 6;
        public static const 1ul:int = 7;

        public function 0rp(){
            G4("(D)raw", 02E.D, this.select, 1ts);
            G4("(E)rase", 02E.E, this.select, 0tp);
            G4("S(A)mple", 02E.A, this.select, Mn);
            G4("Ed(I)t", 02E.I, this.select, Pd);
            G4("(U)ndo", 02E.U, this.15H, 24Y);
            G4("(R)edo", 02E.R, this.P1, 24Y);
            G4("(C)lear", 02E.C, this.1I9, 24Y);
            G4("Cut", -1, this.select, 1tm);
            G4("Copy", -1, this.select, 224);
            G4("Paste", -1, this.select, 1ul);
            G4("(L)oad", 02E.L, this.Wk, 24Y);
            G4("(S)ave", 02E.S, this.1q0, 24Y);
            G4("(T)est", 02E.T, this.Di, 24Y);
        }

        private function select(_arg1:1AD):void{
            setSelected(_arg1);
            dispatchEvent(new 0V2(0V2.SELECT_COMMAND_EVENT));
        }

        private function 15H(_arg1:1AD):void{
            dispatchEvent(new 0V2(0V2.UNDO_COMMAND_EVENT));
        }

        private function P1(_arg1:1AD):void{
            dispatchEvent(new 0V2(0V2.REDO_COMMAND_EVENT));
        }

        private function 1I9(_arg1:1AD):void{
            dispatchEvent(new 0V2(0V2.CLEAR_COMMAND_EVENT));
        }

        private function Wk(_arg1:1AD):void{
            dispatchEvent(new 0V2(0V2.LOAD_COMMAND_EVENT));
        }

        private function 1q0(_arg1:1AD):void{
            dispatchEvent(new 0V2(0V2.SAVE_COMMAND_EVENT));
        }

        private function Di(_arg1:1AD):void{
            dispatchEvent(new 0V2(0V2.TEST_COMMAND_EVENT));
        }


    }
}//package 0QW

