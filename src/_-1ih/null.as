﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1ih.null

package 1ih{
    import 1uF.1Mf;
    import aq.Account;
    import 1PV.aN;
    import 1qg.11S;
    import 1qg.0io;
    import com.company.util.1wL;
    import 12X.RegisterWebAccountDialog;

    public class null extends 1Mf {

        [Inject]
        public var view:SteamAccountDetailDialog;
        [Inject]
        public var account:Account;
        [Inject]
        public var steam:aN;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 0n2:0io;


        override public function initialize():void{
            this.06R();
            this.view.eO.add(this.0-p);
            this.view.register.add(this.0VB);
            this.view.link.add(this.onLink);
        }

        private function 06R():void{
            var _local1:String = this.steam.0RA();
            var _local2:String = this.account.j2();
            var _local3:Boolean = 1wL.0xF(_local2);
            this.view.00K(_local1, _local2, _local3);
        }

        override public function destroy():void{
            this.view.eO.remove(this.0-p);
            this.view.register.remove(this.0VB);
            this.view.link.remove(this.onLink);
        }

        private function 0-p():void{
            this.KW.dispatch();
        }

        private function 0VB():void{
            this.0n2.dispatch(new RegisterWebAccountDialog());
        }

        private function onLink():void{
        }


    }
}//package 1ih

