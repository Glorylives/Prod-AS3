// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r4.1T2

package 1r4{
    import _Jy._1HZ;
    import com.company.assembleegameclient.game.nx;
    import 0y3.Server;
    import flash.utils.ByteArray;
    import 1E8.Rc;
    import com.company.assembleegameclient.objects.GameObject;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.objects.Projectile;
    import com.company.assembleegameclient.objects.Player;

    public class 1T2 {

        public static const FAILURE:int = 0;
        public static const CREATE_SUCCESS:int = 86;
        public static const CREATE:int = 90;
        public static const PLAYERSHOOT:int = 16;
        public static const MOVE:int = 14;
        public static const PLAYERTEXT:int = 67;
        public static const TEXT:int = 10;
        public static const 1uv:int = 88;
        public static const DAMAGE:int = 57;
        public static const UPDATE:int = 49;
        public static const 0ol:int = 37;
        public static const NOTIFICATION:int = 99;
        public static const 1s5:int = 47;
        public static const INVSWAP:int = 44;
        public static const USEITEM:int = 92;
        public static const 1nI:int = 89;
        public static const HELLO:int = 83;
        public static const GOTO:int = 50;
        public static const INVDROP:int = 8;
        public static const INVRESULT:int = 45;
        public static const RECONNECT:int = 101;
        public static const PING:int = 38;
        public static const PONG:int = 68;
        public static const MAPINFO:int = 58;
        public static const LOAD:int = 66;
        public static const PIC:int = 28;
        public static const SETCONDITION:int = 46;
        public static const TELEPORT:int = 5;
        public static const USEPORTAL:int = 4;
        public static const DEATH:int = 75;
        public static const BUY:int = 24;
        public static const BUYRESULT:int = 3;
        public static const AOE:int = 53;
        public static const GROUNDDAMAGE:int = 59;
        public static const PLAYERHIT:int = 22;
        public static const ENEMYHIT:int = 97;
        public static const AOEACK:int = 82;
        public static const SHOOTACK:int = 7;
        public static const OTHERHIT:int = 94;
        public static const SQUAREHIT:int = 19;
        public static const GOTOACK:int = 9;
        public static const EDITACCOUNTLIST:int = 60;
        public static const ACCOUNTLIST:int = 79;
        public static const QUESTOBJID:int = 77;
        public static const CHOOSENAME:int = 27;
        public static const NAMERESULT:int = 76;
        public static const CREATEGUILD:int = 69;
        public static const 1BQ:int = 21;
        public static const GUILDREMOVE:int = 40;
        public static const GUILDINVITE:int = 25;
        public static const ALLYSHOOT:int = 74;
        public static const 1Hw:int = 20;
        public static const REQUESTTRADE:int = 78;
        public static const TRADEREQUESTED:int = 23;
        public static const TRADESTART:int = 11;
        public static const CHANGETRADE:int = 56;
        public static const TRADECHANGED:int = 17;
        public static const ACCEPTTRADE:int = 98;
        public static const CANCELTRADE:int = 15;
        public static const TRADEDONE:int = 36;
        public static const TRADEACCEPTED:int = 26;
        public static const CLIENTSTAT:int = 62;
        public static const CHECKCREDITS:int = 35;
        public static const ESCAPE:int = 33;
        public static const 1u:int = 84;
        public static const INVITEDTOGUILD:int = 1;
        public static const JOINGUILD:int = 48;
        public static const CHANGEGUILDRANK:int = 6;
        public static const PLAYSOUND:int = 55;
        public static const GLOBAL_NOTIFICATION:int = 31;
        public static const RESKIN:int = 61;
        public static const sn:int = 12;
        public static const e:int = 63;
        public static const 1fk:int = 95;
        public static const 1-7:int = 30;
        public static const O7:int = 80;
        public static const 0e-:int = 91;
        public static const aA:int = 85;
        public static const 3-:int = 18;
        public static const ENTER_ARENA:int = 51;
        public static const VR:int = 34;
        public static const nR:int = 39;
        public static const jn:int = 93;
        public static const 09z:int = 65;
        public static const 0z1:int = 100;
        public static const 0R2:int = 96;
        public static const 151:int = 41;
        public static const 1Ip:int = 87;
        public static const 1CV:int = 52;
        public static const Sk:int = 64;
        public static const 4W:int = 42;
        public static const 1_ZS:int = 13;
        public static const 0vJ:int = 81;

        public static var 1hP:1T2;

        public var 1H2:_1HZ;
        public var gs_:nx;
        public var server_:Server;
        public var gameId_:int;
        public var lk:Boolean;
        public var charId_:int;
        public var keyTime_:int;
        public var key_:ByteArray;
        public var cq:String;
        public var isFromArena_:Boolean = false;
        public var lastTickId_:int = -1;
        public var jitterWatcher_:JitterWatcher;
        public var 18Q:Rc;
        public var outstandingBuy_:Yf = null;


        public function chooseName(_arg1:String):void{
        }

        public function createGuild(_arg1:String):void{
        }

        public function connect():void{
        }

        public function disconnect():void{
        }

        public function checkCredits():void{
        }

        public function escape():void{
        }

        public function useItem(_arg1:int, _arg2:int, _arg3:int, _arg4:int, _arg5:Number, _arg6:Number, _arg7:int):void{
        }

        public function useItem_new(_arg1:GameObject, _arg2:int):Boolean{
            return (false);
        }

        public function enableJitterWatcher():void{
        }

        public function disableJitterWatcher():void{
        }

        public function editAccountList(_arg1:int, _arg2:Boolean, _arg3:int):void{
        }

        public function guildRemove(_arg1:String):void{
        }

        public function guildInvite(_arg1:String):void{
        }

        public function requestTrade(_arg1:String):void{
        }

        public function changeTrade(_arg1:Vector.<Boolean>):void{
        }

        public function acceptTrade(_arg1:Vector.<Boolean>, _arg2:Vector.<Boolean>):void{
        }

        public function cancelTrade():void{
        }

        public function joinGuild(_arg1:String):void{
        }

        public function changeGuildRank(_arg1:String, _arg2:int):void{
        }

        public function isConnected():Boolean{
            return (false);
        }

        public function teleport(_arg1:int):void{
        }

        public function usePortal(_arg1:int):void{
        }

        public function getNextDamage(_arg1:uint, _arg2:uint):uint{
            return (0);
        }

        public function groundDamage(_arg1:int, _arg2:Number, _arg3:Number):void{
        }

        public function playerShoot(_arg1:int, _arg2:Projectile):void{
        }

        public function playerHit(_arg1:int, _arg2:int):void{
        }

        public function enemyHit(_arg1:int, _arg2:int, _arg3:int, _arg4:Boolean):void{
        }

        public function otherHit(_arg1:int, _arg2:int, _arg3:int, _arg4:int):void{
        }

        public function squareHit(_arg1:int, _arg2:int, _arg3:int):void{
        }

        public function playerText(_arg1:String):void{
        }

        public function invSwap(_arg1:Player, _arg2:GameObject, _arg3:int, _arg4:int, _arg5:GameObject, _arg6:int, _arg7:int):Boolean{
            return (false);
        }

        public function invSwapPotion(_arg1:Player, _arg2:GameObject, _arg3:int, _arg4:int, _arg5:GameObject, _arg6:int, _arg7:int):Boolean{
            return (false);
        }

        public function invDrop(_arg1:GameObject, _arg2:int, _arg3:int):void{
        }

        public function setCondition(_arg1:uint, _arg2:Number):void{
        }

        public function buy(_arg1:int, _arg2:int):void{
        }

        public function questFetch():void{
        }

        public function questRedeem(_arg1:int, _arg2:int, _arg3:int):void{
        }


    }
}//package 1r4

