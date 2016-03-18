// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r4.2-c

package 1r4{
    import 0qs.J1;
    import com.company.assembleegameclient.objects.Player;
    import com.company.util.Random;
    import 0UV.13V;
    import 1zG.1wd;
    import flash.utils.Timer;
    import 0UV.0rh;
    import 0UV.105;
    import 2b.1gX;
    import 2b.0uL;
    import 0Fr.1da;
    import xk.8b;
    import xk.f8;
    import 0iw.0Cl;
    import 1ay.0vu;
    import 0YY.1Mx;
    import 1qg.11S;
    import 1qg.0io;
    import zf.0cK;
    import zf.0vS;
    import N.08e;
    import N.1dw;
    import Wn.1ot;
    import tn.0ec;
    import _0OG._22M;
    import gx.1Nb;
    import 0YY.Ip;
    import 5z.zL;
    import 0-O.0E8;
    import _04_._1JZ;
    import 0a-.264;
    import 1E8.Rc;
    import com.company.assembleegameclient.game.nx;
    import 0y3.Server;
    import flash.utils.ByteArray;
    import 1u-.1Ys;
    import com.company.assembleegameclient.parameters.Parameters;
    import AO.du;
    import 0qs.0MV;
    import yo.Create;
    import yo.Nf;
    import yo.0GI;
    import yo.ZU;
    import 1E8.1kN;
    import yo.1yA;
    import yo.0HK;
    import yo.OM;
    import yo.0MC;
    import yo.0H;
    import yo.gK;
    import yo.Sx;
    import yo.Teleport;
    import yo.0Cn;
    import yo.Buy;
    import yo.19H;
    import yo.0sB;
    import yo.0kT;
    import yo.0DB;
    import yo.11q;
    import yo.wm;
    import yo.1XP;
    import yo.jC;
    import yo.0n3;
    import yo.RS;
    import yo.cz;
    import yo.09X;
    import yo.1BF;
    import yo.23K;
    import yo.0QK;
    import yo.0f9;
    import yo.9y;
    import yo.1gN;
    import yo.0GO;
    import yo.1rp;
    import yo.QM;
    import yo.1K8;
    import 1nR.nw;
    import yo.0j1;
    import 1nR.0dr;
    import 1zG.3V;
    import 1zG.1bl;
    import 1zG.1hS;
    import 1zG.Damage;
    import 1zG.Update;
    import 1zG.19t;
    import 1zG.DZ;
    import 1zG.YR;
    import 1zG.e8;
    import 1zG.23y;
    import 1zG.0Y5;
    import 1zG.1w9;
    import 1zG.1e9;
    import 1zG.0BS;
    import 1zG.Pic;
    import 1zG.1Qn;
    import 1zG.063;
    import 1zG.bU;
    import 1zG.Yl;
    import 1zG.1r9;
    import 1zG.Oi;
    import 1zG.1XY;
    import 1zG.Tc;
    import 1zG.0-A;
    import 1zG.ff;
    import 1zG.1pI;
    import 1zG.0yD;
    import 1zG.0dB;
    import 1zG.1Qf;
    import 1zG.File;
    import 1zG.1Wp;
    import 1zG.1rH;
    import 1zG.v3;
    import 1zG.0-r;
    import 26u.1nD;
    import 26u.1Yd;
    import Sd.0x;
    import Sd.25N;
    import 1zG.0wc;
    import 1zG.22w;
    import 1zG.23W;
    import 1zG.1lm;
    import 1zG.1fI;
    import 0YY.1Uu;
    import 0YY.cv;
    import 0YY.So;
    import 0YY.Xc;
    import 1zG.1Tg;
    import com.hurlant.crypto.symmetric.ICipher;
    import com.hurlant.crypto.Crypto;
    import com.company.util.1N9;
    import tn.0dE;
    import 1UB.BattleSummaryDialog;
    import com.company.assembleegameclient.objects.Projectile;
    import _ZS.0ZC;
    import com.company.assembleegameclient.objects.GameObject;
    import 0Px.0J9;
    import gx.1z1;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.utils.getTimer;
    import 1ay.1v2;
    import com.company.assembleegameclient.objects.SellableObject;
    import com.company.assembleegameclient.util.Currency;
    import __AS3__.vec.Vector;
    import com.hurlant.util.der.PEM;
    import com.hurlant.crypto.rsa.RSAKey;
    import com.hurlant.util.Base64;
    import aq.Account;
    import com.company.assembleegameclient.map.1qi;
    import com.company.assembleegameclient.util.0Ep;
    import tn.1iY;
    import tn.Lm;
    import _ZE.TradeRequestPanel;
    import g0.ge;
    import 0xo.0Fn;
    import g0.0kZ;
    import g0.0Uf;
    import 23O.CH;
    import 1n4.1cA;
    import 9T.1zh;
    import eC.0A3;
    import 1ay.1Kv;
    import 0xo.1hX;
    import 1Np.0F-;
    import flash.geom.Point;
    import 1Np.206;
    import 1Np.TeleportEffect;
    import 1Np.StreamEffect;
    import 1Np.ThrowEffect;
    import 1Np.1wN;
    import 1Np.1Un;
    import 1Np.1em;
    import 1Np.nO;
    import 1Np.FlowEffect;
    import 1Np.0WV;
    import 1Np.Bg;
    import 1Np.05P;
    import 1Np.if;
    import com.company.assembleegameclient.objects.0Qy;
    import 1a.04n;
    import 1Np.0Xn;
    import 1Np.9D;
    import 1Np.1oJ;
    import g0.StatData;
    import com.company.assembleegameclient.objects.Merchant;
    import com.company.assembleegameclient.objects.Pet;
    import com.company.assembleegameclient.util.ConditionEffect;
    import com.company.assembleegameclient.objects.Portal;
    import com.company.assembleegameclient.objects.Container;
    import com.company.assembleegameclient.objects.NameChanger;
    import 0Px.1zw;
    import yo.1I8;
    import com.company.assembleegameclient.objects.ObjectProperties;
    import com.company.assembleegameclient.objects.22S;
    import F7.19s;
    import com.company.assembleegameclient.map.0s6;
    import com.company.assembleegameclient.ui.1SY;
    import flash.display.BitmapData;
    import 1PB.pu;
    import 1t6.NotEnoughFameDialog;
    import 1Np.MS;
    import F7.0N7;
    import F7.04M;
    import flash.net.FileReference;
    import ZE.0xn;
    import 1UB.ContinueOrQuitDialog;
    import 1PB.TitleView;
    import 0a-.1lD;
    import flash.events.TimerEvent;
    import 1t6.Dialog;
    import flash.events.Event;
    import com.company.assembleegameclient.objects.*;
    import __AS3__.vec.*;
    import 1Np.*;
    import 1zG.*;
    import yo.*;
    import g0.*;

    public class 2-c extends 1T2 {

        private static const Tp:int = 1000;

        private var 1wO:gr;
        private var 27M:J1;
        private var 5q:int = -1;
        private var player:Player;
        private var 0NU:Boolean = true;
        private var 1zQ:Random = null;
        private var 0xO:13V;
        private var death:1wd;
        private var 1kv:Timer;
        private var true:int = 2;
        private var 12K:0rh;
        private var addSpeechBalloon:105;
        private var iL:1gX;
        private var Xw:0uL;
        private var u3:1da;
        private var 01e:8b;
        private var 07y:f8;
        private var YY:0Cl;
        private var 0Pu:0vu;
        private var 071:1Mx;
        private var closeDialogs:11S;
        private var 0n2:0io;
        private var 1YD:0cK;
        private var S7:0vS;
        private var Fn:08e;
        private var 1HQ:1dw;
        private var 21B:1ot;
        private var 1z8:0ec;
        private var kf:_22M;
        private var model:1Nb;
        private var fN:Ip;
        private var 1G5:zL;
        private var 1RW:0E8;

        public function 2-c(_arg1:nx, _arg2:Server, _arg3:int, _arg4:Boolean, _arg5:int, _arg6:int, _arg7:ByteArray, _arg8:String, _arg9:Boolean){
            this.kf = _1JZ.0JF();
            this.0xO = this.kf.getInstance(13V);
            this.12K = this.kf.getInstance(0rh);
            this.addSpeechBalloon = this.kf.getInstance(105);
            this.iL = this.kf.getInstance(1gX);
            this.Xw = this.kf.getInstance(0uL);
            this.071 = this.kf.getInstance(1Mx);
            this.0Pu = _1JZ.0JF().getInstance(0vu);
            this.fN = this.kf.getInstance(Ip);
            this.1G5 = this.kf.getInstance(zL);
            this.1RW = this.kf.getInstance(0E8);
            this.closeDialogs = this.kf.getInstance(11S);
            1H2 = this.kf.getInstance(264);
            this.0n2 = this.kf.getInstance(0io);
            this.1YD = this.kf.getInstance(0cK);
            this.S7 = this.kf.getInstance(0vS);
            this.Fn = this.kf.getInstance(08e);
            this.1HQ = this.kf.getInstance(1dw);
            this.u3 = this.kf.getInstance(1da);
            this.01e = this.kf.getInstance(8b);
            this.07y = this.kf.getInstance(f8);
            this.YY = this.kf.getInstance(0Cl);
            this.1z8 = this.kf.getInstance(0ec);
            18Q = this.kf.getInstance(Rc);
            this.27M = this.kf.getInstance(J1);
            this.model = this.kf.getInstance(1Nb);
            this.21B = this.kf.getInstance(1ot);
            gs_ = _arg1;
            server_ = _arg2;
            gameId_ = _arg3;
            lk = _arg4;
            charId_ = _arg5;
            keyTime_ = _arg6;
            key_ = _arg7;
            cq = _arg8;
            isFromArena_ = _arg9;
            this.1RW.0Ow(server_);
            this.18R();
            1hP = this;
        }

        private static function 0Ax(_arg1:int):Boolean{
            return ((((((((((((((((_arg1 == 2591)) || ((_arg1 == 2592)))) || ((_arg1 == 2593)))) || ((_arg1 == 2612)))) || ((_arg1 == 2613)))) || ((_arg1 == 2636)))) || ((_arg1 == 2793)))) || ((_arg1 == 2794))));
        }


        private function 18R():void{
            this.kf.map(nx).1eo(gs_);
            this.1wO = this.kf.getInstance(gr);
            this.kf.sJ(nx);
        }

        override public function disconnect():void{
            this.11R();
            this.Vk();
            18Q.disconnect();
        }

        private function 11R():void{
            18Q.connected.remove(this.04y);
            18Q.closed.remove(this.1qf);
            18Q.error.remove(this.0ys);
        }

        override public function connect():void{
            this.1JV();
            this.0O0();
            var _local1:1Ys = new 1Ys();
            _local1.name = Parameters.uL;
            _local1.text = du.17F;
            _local1.tokens = {serverName:server_.name};
            this.12K.dispatch(_local1);
            18Q.connect(server_.address, server_.port);
        }

        public function 1JV():void{
            18Q.connected.add(this.04y);
            18Q.closed.add(this.1qf);
            18Q.error.add(this.0ys);
        }

        public function 0O0():void{
            var _local1:0MV = this.kf.getInstance(0MV);
            _local1.map(CREATE).hG(Create);
            _local1.map(PLAYERSHOOT).hG(Nf);
            _local1.map(MOVE).hG(0GI);
            _local1.map(PLAYERTEXT).hG(ZU);
            _local1.map(0ol).hG(1kN);
            _local1.map(INVSWAP).hG(1yA);
            _local1.map(USEITEM).hG(0HK);
            _local1.map(HELLO).hG(OM);
            _local1.map(INVDROP).hG(0MC);
            _local1.map(PONG).hG(0H);
            _local1.map(LOAD).hG(gK);
            _local1.map(SETCONDITION).hG(Sx);
            _local1.map(TELEPORT).hG(Teleport);
            _local1.map(USEPORTAL).hG(0Cn);
            _local1.map(BUY).hG(Buy);
            _local1.map(PLAYERHIT).hG(19H);
            _local1.map(ENEMYHIT).hG(0sB);
            _local1.map(AOEACK).hG(0kT);
            _local1.map(SHOOTACK).hG(0DB);
            _local1.map(OTHERHIT).hG(11q);
            _local1.map(SQUAREHIT).hG(wm);
            _local1.map(GOTOACK).hG(1XP);
            _local1.map(GROUNDDAMAGE).hG(jC);
            _local1.map(CHOOSENAME).hG(0n3);
            _local1.map(CREATEGUILD).hG(RS);
            _local1.map(GUILDREMOVE).hG(cz);
            _local1.map(GUILDINVITE).hG(09X);
            _local1.map(REQUESTTRADE).hG(1BF);
            _local1.map(CHANGETRADE).hG(23K);
            _local1.map(ACCEPTTRADE).hG(0QK);
            _local1.map(CANCELTRADE).hG(0f9);
            _local1.map(CHECKCREDITS).hG(9y);
            _local1.map(ESCAPE).hG(1gN);
            _local1.map(JOINGUILD).hG(0GO);
            _local1.map(CHANGEGUILDRANK).hG(1rp);
            _local1.map(EDITACCOUNTLIST).hG(QM);
            _local1.map(e).hG(1K8);
            _local1.map(sn).hG(1kP);
            _local1.map(ENTER_ARENA).hG(nw);
            _local1.map(jn).hG(0j1);
            _local1.map(151).hG(0j1);
            _local1.map(1Ip).hG(0dr);
            _local1.map(4W).hG(19D);
            _local1.map(FAILURE).hG(3V).20J(this.0Tu);
            _local1.map(CREATE_SUCCESS).hG(1bl).20J(this.Um);
            _local1.map(1uv).hG(1hS).20J(this.23Q);
            _local1.map(DAMAGE).hG(Damage).20J(this.0qw);
            _local1.map(UPDATE).hG(Update).20J(this.Q1);
            _local1.map(NOTIFICATION).hG(19t).20J(this.Hw);
            _local1.map(GLOBAL_NOTIFICATION).hG(DZ).20J(this.1J);
            _local1.map(1s5).hG(YR).20J(this.0zY);
            _local1.map(1nI).hG(e8).20J(this.0lc);
            _local1.map(GOTO).hG(23y).20J(this.1Sn);
            _local1.map(INVRESULT).hG(0Y5).20J(this.CA);
            _local1.map(RECONNECT).hG(1w9).20J(this.0Ai);
            _local1.map(PING).hG(1e9).20J(this.0in);
            _local1.map(MAPINFO).hG(0BS).20J(this.1JB);
            _local1.map(PIC).hG(Pic).20J(this.1Ly);
            _local1.map(DEATH).hG(1wd).20J(this.1iI);
            _local1.map(BUYRESULT).hG(1Qn).20J(this.0vF);
            _local1.map(AOE).hG(063).20J(this.1Zn);
            _local1.map(ACCOUNTLIST).hG(bU).20J(this.0JB);
            _local1.map(QUESTOBJID).hG(Yl).20J(this.0I3);
            _local1.map(NAMERESULT).hG(1r9).20J(this.1Yv);
            _local1.map(1BQ).hG(Oi).20J(this.1dG);
            _local1.map(ALLYSHOOT).hG(1XY).20J(this.0Mb);
            _local1.map(1Hw).hG(Tc).20J(this.rd);
            _local1.map(TRADEREQUESTED).hG(0-A).20J(this.0V0);
            _local1.map(TRADESTART).hG(ff).20J(this.09Q);
            _local1.map(TRADECHANGED).hG(1pI).20J(this.17e);
            _local1.map(TRADEDONE).hG(0yD).20J(this.xQ);
            _local1.map(TRADEACCEPTED).hG(0dB).20J(this.0le);
            _local1.map(CLIENTSTAT).hG(1Qf).20J(this.09k);
            _local1.map(1u).hG(File).20J(this.10b);
            _local1.map(INVITEDTOGUILD).hG(1Wp).20J(this.0Dv);
            _local1.map(PLAYSOUND).hG(1rH).20J(this.167);
            _local1.map(1fk).hG(0pY).20J(this.1yN);
            _local1.map(1-7).hG(v3).20J(this.nH);
            _local1.map(O7).hG(0Nf).20J(this.1eZ);
            _local1.map(0e-).hG(0-r).20J(this.1sF);
            _local1.map(aA).hG(1nD).20J(this.1p);
            _local1.map(3-).hG(1Yd).20J(this.1dx);
            _local1.map(VR).hG(0x).20J(this.kI);
            _local1.map(nR).hG(25N).20J(this.0FG);
            _local1.map(09z).hG(0wc).20J(this.N2);
            _local1.map(0z1).hG(22w).20J(this.0U7);
            _local1.map(0R2).hG(23W).20J(this.1KU);
            _local1.map(1CV).hG(1lm).20J(this.0ZJ);
            _local1.map(Sk).hG(1fI).20J(this.134);
        }

        private function 1dx(_arg1:1Yd):void{
            var _local2:1Uu = this.kf.getInstance(1Uu);
            _local2.dispatch(_arg1.petName, _arg1.169);
        }

        private function 1p(_arg1:1nD):void{
            var _local2:cv = this.kf.getInstance(cv);
            _local2.dispatch(_arg1.08Q);
        }

        private function nH(_arg1:v3):void{
            var _local2:So = this.kf.getInstance(So);
            _local2.dispatch(_arg1.type);
        }

        private function 1eZ(_arg1:0Nf):void{
            var _local2:Xc = _1JZ.0JF().getInstance(Xc);
            _local2.dispatch(_arg1.type);
        }

        private function 1sF(_arg1:0-r):void{
            var _local2:1Tg = this.kf.getInstance(1Tg);
            _local2.1Z0(_arg1);
        }

        private function 1yN(_arg1:0pY):void{
            this.fN.dispatch(_arg1.08K);
            var _local2:String = (((_arg1.08K > 0)) ? this.1G5.0It(_arg1.08K).getName() : "");
            var _local3:String = (((_arg1.08K < 0)) ? du.2Y : du.0di);
            this.12K.dispatch(1Ys.make(Parameters.si, _local3, -1, -1, "", false, {petName:_local2}));
        }

        private function Vk():void{
            var _local1:0MV = this.kf.getInstance(0MV);
            _local1.sJ(CREATE);
            _local1.sJ(PLAYERSHOOT);
            _local1.sJ(MOVE);
            _local1.sJ(PLAYERTEXT);
            _local1.sJ(0ol);
            _local1.sJ(INVSWAP);
            _local1.sJ(USEITEM);
            _local1.sJ(HELLO);
            _local1.sJ(INVDROP);
            _local1.sJ(PONG);
            _local1.sJ(LOAD);
            _local1.sJ(SETCONDITION);
            _local1.sJ(TELEPORT);
            _local1.sJ(USEPORTAL);
            _local1.sJ(BUY);
            _local1.sJ(PLAYERHIT);
            _local1.sJ(ENEMYHIT);
            _local1.sJ(AOEACK);
            _local1.sJ(SHOOTACK);
            _local1.sJ(OTHERHIT);
            _local1.sJ(SQUAREHIT);
            _local1.sJ(GOTOACK);
            _local1.sJ(GROUNDDAMAGE);
            _local1.sJ(CHOOSENAME);
            _local1.sJ(CREATEGUILD);
            _local1.sJ(GUILDREMOVE);
            _local1.sJ(GUILDINVITE);
            _local1.sJ(REQUESTTRADE);
            _local1.sJ(CHANGETRADE);
            _local1.sJ(ACCEPTTRADE);
            _local1.sJ(CANCELTRADE);
            _local1.sJ(CHECKCREDITS);
            _local1.sJ(ESCAPE);
            _local1.sJ(JOINGUILD);
            _local1.sJ(CHANGEGUILDRANK);
            _local1.sJ(EDITACCOUNTLIST);
            _local1.sJ(FAILURE);
            _local1.sJ(CREATE_SUCCESS);
            _local1.sJ(1uv);
            _local1.sJ(DAMAGE);
            _local1.sJ(UPDATE);
            _local1.sJ(NOTIFICATION);
            _local1.sJ(GLOBAL_NOTIFICATION);
            _local1.sJ(1s5);
            _local1.sJ(1nI);
            _local1.sJ(GOTO);
            _local1.sJ(INVRESULT);
            _local1.sJ(RECONNECT);
            _local1.sJ(PING);
            _local1.sJ(MAPINFO);
            _local1.sJ(PIC);
            _local1.sJ(DEATH);
            _local1.sJ(BUYRESULT);
            _local1.sJ(AOE);
            _local1.sJ(ACCOUNTLIST);
            _local1.sJ(QUESTOBJID);
            _local1.sJ(NAMERESULT);
            _local1.sJ(1BQ);
            _local1.sJ(ALLYSHOOT);
            _local1.sJ(1Hw);
            _local1.sJ(TRADEREQUESTED);
            _local1.sJ(TRADESTART);
            _local1.sJ(TRADECHANGED);
            _local1.sJ(TRADEDONE);
            _local1.sJ(TRADEACCEPTED);
            _local1.sJ(CLIENTSTAT);
            _local1.sJ(1u);
            _local1.sJ(INVITEDTOGUILD);
            _local1.sJ(PLAYSOUND);
        }

        private function 1BX():void{
            var _local1:ICipher;
            var _local2:ICipher;
            if (Parameters.1YJ)
            {
                _local1 = Crypto.getCipher("rc4", 1N9.u7("311f80691451c71d09a13a2a6e"));
                _local2 = Crypto.getCipher("rc4", 1N9.u7("72c5583cafb6818995cdd74b80"));
                18Q.setOutgoingCipher(_local1);
                18Q.setIncomingCipher(_local2);
            };
        }

        override public function getNextDamage(_arg1:uint, _arg2:uint):uint{
            return (this.1zQ.1AH(_arg1, _arg2));
        }

        override public function enableJitterWatcher():void{
            if (jitterWatcher_ == null)
            {
                jitterWatcher_ = new JitterWatcher();
            };
        }

        override public function disableJitterWatcher():void{
            if (jitterWatcher_ != null)
            {
                jitterWatcher_ = null;
            };
        }

        private function create():void{
            var _local1:0dE = this.1z8.0NO();
            var _local2:Create = (this.27M.lh(CREATE) as Create);
            _local2.classType = _local1.id;
            _local2.skinType = _local1.0sP.05i().id;
            18Q.sendMessage(_local2);
        }

        private function load():void{
            var _local1:gK = (this.27M.lh(LOAD) as gK);
            _local1.charId_ = charId_;
            _local1.isFromArena_ = isFromArena_;
            18Q.sendMessage(_local1);
            if (isFromArena_)
            {
                this.0n2.dispatch(new BattleSummaryDialog());
            };
        }

        override public function playerShoot(_arg1:int, _arg2:Projectile):void{
            var _local3:Nf = (this.27M.lh(PLAYERSHOOT) as Nf);
            _local3.time_ = _arg1;
            _local3.bulletId_ = _arg2.bulletId_;
            _local3.containerType_ = _arg2.containerType_;
            _local3.startingPos_.x_ = _arg2.x_;
            _local3.startingPos_.y_ = _arg2.y_;
            _local3.angle_ = _arg2.angle_;
            18Q.sendMessage(_local3);
        }

        override public function playerHit(_arg1:int, _arg2:int):void{
            var _local3:19H = (this.27M.lh(PLAYERHIT) as 19H);
            _local3.bulletId_ = _arg1;
            _local3.objectId_ = _arg2;
            18Q.sendMessage(_local3);
        }

        override public function enemyHit(_arg1:int, _arg2:int, _arg3:int, _arg4:Boolean):void{
            var _local5:0sB = (this.27M.lh(ENEMYHIT) as 0sB);
            _local5.time_ = _arg1;
            _local5.bulletId_ = _arg2;
            _local5.targetId_ = _arg3;
            _local5.kill_ = _arg4;
            18Q.sendMessage(_local5);
        }

        override public function otherHit(_arg1:int, _arg2:int, _arg3:int, _arg4:int):void{
            var _local5:11q = (this.27M.lh(OTHERHIT) as 11q);
            _local5.time_ = _arg1;
            _local5.bulletId_ = _arg2;
            _local5.objectId_ = _arg3;
            _local5.targetId_ = _arg4;
            18Q.sendMessage(_local5);
        }

        override public function squareHit(_arg1:int, _arg2:int, _arg3:int):void{
            var _local4:wm = (this.27M.lh(SQUAREHIT) as wm);
            _local4.time_ = _arg1;
            _local4.bulletId_ = _arg2;
            _local4.objectId_ = _arg3;
            18Q.sendMessage(_local4);
        }

        public function 1Fp(_arg1:int, _arg2:Number, _arg3:Number):void{
            var _local4:0kT = (this.27M.lh(AOEACK) as 0kT);
            _local4.time_ = _arg1;
            _local4.position_.x_ = _arg2;
            _local4.position_.y_ = _arg3;
            18Q.sendMessage(_local4);
        }

        override public function groundDamage(_arg1:int, _arg2:Number, _arg3:Number):void{
            var _local4:jC = (this.27M.lh(GROUNDDAMAGE) as jC);
            _local4.time_ = _arg1;
            _local4.position_.x_ = _arg2;
            _local4.position_.y_ = _arg3;
            18Q.sendMessage(_local4);
        }

        public function sw(_arg1:int):void{
            var _local2:0DB = (this.27M.lh(SHOOTACK) as 0DB);
            _local2.time_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function playerText(_arg1:String):void{
            var _local2:ZU = (this.27M.lh(PLAYERTEXT) as ZU);
            _local2.text_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function invSwap(_arg1:Player, _arg2:GameObject, _arg3:int, _arg4:int, _arg5:GameObject, _arg6:int, _arg7:int):Boolean{
            if (!gs_)
            {
                return (false);
            };
            var _local8:1yA = (this.27M.lh(INVSWAP) as 1yA);
            _local8.time_ = gs_.lastUpdate_;
            _local8.position_.x_ = _arg1.x_;
            _local8.position_.y_ = _arg1.y_;
            _local8.slotObject1_.objectId_ = _arg2.objectId_;
            _local8.slotObject1_.08N = _arg3;
            _local8.slotObject1_.objectType_ = _arg4;
            _local8.slotObject2_.objectId_ = _arg5.objectId_;
            _local8.slotObject2_.08N = _arg6;
            _local8.slotObject2_.objectType_ = _arg7;
            18Q.sendMessage(_local8);
            var _local9:int = _arg2.1Wz[_arg3];
            _arg2.1Wz[_arg3] = _arg5.1Wz[_arg6];
            _arg5.1Wz[_arg6] = _local9;
            0ZC.play("inventory_move_item");
            return (true);
        }

        override public function invSwapPotion(_arg1:Player, _arg2:GameObject, _arg3:int, _arg4:int, _arg5:GameObject, _arg6:int, _arg7:int):Boolean{
            if (!gs_)
            {
                return (false);
            };
            var _local8:1yA = (this.27M.lh(INVSWAP) as 1yA);
            _local8.time_ = gs_.lastUpdate_;
            _local8.position_.x_ = _arg1.x_;
            _local8.position_.y_ = _arg1.y_;
            _local8.slotObject1_.objectId_ = _arg2.objectId_;
            _local8.slotObject1_.08N = _arg3;
            _local8.slotObject1_.objectType_ = _arg4;
            _local8.slotObject2_.objectId_ = _arg5.objectId_;
            _local8.slotObject2_.08N = _arg6;
            _local8.slotObject2_.objectType_ = _arg7;
            _arg2.1Wz[_arg3] = 0J9.1Qx;
            if (_arg4 == 1z1.0Rl)
            {
                _arg1.0R8++;
            } else
            {
                if (_arg4 == 1z1.Ww)
                {
                    _arg1.03y++;
                };
            };
            18Q.sendMessage(_local8);
            0ZC.play("inventory_move_item");
            return (true);
        }

        override public function invDrop(_arg1:GameObject, _arg2:int, _arg3:int):void{
            var _local4:0MC = (this.27M.lh(INVDROP) as 0MC);
            _local4.slotObject_.objectId_ = _arg1.objectId_;
            _local4.slotObject_.08N = _arg2;
            _local4.slotObject_.objectType_ = _arg3;
            18Q.sendMessage(_local4);
            if (((!((_arg2 == 1z1.1OY))) && (!((_arg2 == 1z1.uH)))))
            {
                _arg1.1Wz[_arg2] = 0J9.1Qx;
            };
        }

        override public function useItem(_arg1:int, _arg2:int, _arg3:int, _arg4:int, _arg5:Number, _arg6:Number, _arg7:int):void{
            var _local8:0HK = (this.27M.lh(USEITEM) as 0HK);
            _local8.time_ = _arg1;
            _local8.slotObject_.objectId_ = _arg2;
            _local8.slotObject_.08N = _arg3;
            _local8.slotObject_.objectType_ = _arg4;
            _local8.itemUsePos_.x_ = _arg5;
            _local8.itemUsePos_.y_ = _arg6;
            _local8.useType_ = _arg7;
            18Q.sendMessage(_local8);
        }

        override public function useItem_new(_arg1:GameObject, _arg2:int):Boolean{
            var _local3:int = _arg1.1Wz[_arg2];
            var _local4:XML = ObjectLibrary.GD[_local3];
            if (((((_local4) && (!(_arg1.isPaused())))) && (((_local4.hasOwnProperty("Consumable")) || (_local4.hasOwnProperty("InvUse"))))))
            {
                if (!this.1NE(_local3, _arg1))
                {
                    this.12K.dispatch(1Ys.make("", (_local4.attribute("id") + " not consumed. Already at Max.")));
                    return (false);
                };
                if (0Ax(_local3))
                {
                    this.12K.dispatch(1Ys.make("", (_local4.attribute("id") + " Consumed ++")));
                };
                this.1kZ(_arg1, _arg2, _local3, _local4);
                0ZC.play("use_potion");
                return (true);
            };
            0ZC.play("error");
            return (false);
        }

        private function 1NE(_arg1:int, _arg2:GameObject):Boolean{
            var p:Player;
            var itemId:int = _arg1;
            var itemOwner:GameObject = _arg2;
            try
            {
                if ((itemOwner is Player))
                {
                    p = (itemOwner as Player);
                } else
                {
                    p = this.player;
                };
                if ((((((((((((((((((itemId == 2591)) && ((p.Nx == (p.17R - p.0el))))) || ((((itemId == 2592)) && ((p.0i2 == (p.1vs - p.0Jk))))))) || ((((itemId == 2593)) && ((p.1r0 == (p.speed_ - p.0AE))))))) || ((((itemId == 2612)) && ((p.0Mp == (p.0aj - p.0wa))))))) || ((((itemId == 2613)) && ((p.K8 == (p.00N - p.1zn))))))) || ((((itemId == 2636)) && ((p.1bF == (p.0B0 - p.1ms))))))) || ((((itemId == 2793)) && ((p.1w7 == (p.ba - p.1j8))))))) || ((((itemId == 2794)) && ((p.0NB == (p.1nC - p.24q)))))))
                {
                    return (false);
                };
            } catch(err:Error)
            {
                u3.error(("PROBLEM IN STAT INC " + err.getStackTrace()));
            };
            return (true);
        }

        private function 1kZ(_arg1:GameObject, _arg2:int, _arg3:int, _arg4:XML):void{
            var _local5:0HK = (this.27M.lh(USEITEM) as 0HK);
            _local5.time_ = getTimer();
            _local5.slotObject_.objectId_ = _arg1.objectId_;
            _local5.slotObject_.08N = _arg2;
            _local5.slotObject_.objectType_ = _arg3;
            _local5.itemUsePos_.x_ = 0;
            _local5.itemUsePos_.y_ = 0;
            18Q.sendMessage(_local5);
            if (_arg4.hasOwnProperty("Consumable"))
            {
                _arg1.1Wz[_arg2] = -1;
            };
        }

        override public function setCondition(_arg1:uint, _arg2:Number):void{
            var _local3:Sx = (this.27M.lh(SETCONDITION) as Sx);
            _local3.conditionEffect_ = _arg1;
            _local3.conditionDuration_ = _arg2;
            18Q.sendMessage(_local3);
        }

        public function move(_arg1:int, _arg2:Player):void{
            var _local7:int;
            var _local8:int;
            var _local3:Number = -1;
            var _local4:Number = -1;
            if (((_arg2) && (!(_arg2.isPaused()))))
            {
                _local3 = _arg2.x_;
                _local4 = _arg2.y_;
            };
            var _local5:0GI = (this.27M.lh(MOVE) as 0GI);
            _local5.tickId_ = _arg1;
            _local5.time_ = gs_.lastUpdate_;
            _local5.newPosition_.x_ = _local3;
            _local5.newPosition_.y_ = _local4;
            var _local6:int = gs_.moveRecords_.lastClearTime_;
            _local5.records_.length = 0;
            if ((((_local6 >= 0)) && (((_local5.time_ - _local6) > 125))))
            {
                _local7 = Math.min(10, gs_.moveRecords_.records_.length);
                _local8 = 0;
                while (_local8 < _local7)
                {
                    if (gs_.moveRecords_.records_[_local8].time_ >= (_local5.time_ - 25)) break;
                    _local5.records_.push(gs_.moveRecords_.records_[_local8]);
                    _local8++;
                };
            };
            gs_.moveRecords_.clear(_local5.time_);
            18Q.sendMessage(_local5);
            ((_arg2) && (_arg2.Up()));
        }

        override public function teleport(_arg1:int):void{
            var _local2:Teleport = (this.27M.lh(TELEPORT) as Teleport);
            _local2.objectId_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function usePortal(_arg1:int):void{
            var _local2:0Cn = (this.27M.lh(USEPORTAL) as 0Cn);
            _local2.objectId_ = _arg1;
            18Q.sendMessage(_local2);
            this.2-R();
        }

        private function 2-R():void{
            if (((gs_.map) && ((gs_.map.name_ == "Davy Jones' Locker"))))
            {
                1v2.1hP.dispatch();
            };
        }

        override public function buy(_arg1:int, _arg2:int):void{
            if (outstandingBuy_ != null)
            {
                return;
            };
            var _local3:SellableObject = gs_.map.goDict_[_arg1];
            if (_local3 == null)
            {
                return;
            };
            var _local4:Boolean;
            if (_local3.currency_ == Currency.1Jg)
            {
                _local4 = ((((gs_.model.getConverted()) || ((this.player.credits_ > 100)))) || ((_local3.price_ > this.player.credits_)));
            };
            outstandingBuy_ = new Yf(_local3.soldObjectInternalName(), _local3.price_, _local3.currency_, _local4);
            var _local5:Buy = (this.27M.lh(BUY) as Buy);
            _local5.objectId_ = _arg1;
            _local5.quantity_ = _arg2;
            18Q.sendMessage(_local5);
        }

        public function 0kJ(_arg1:int):void{
            var _local2:1XP = (this.27M.lh(GOTOACK) as 1XP);
            _local2.time_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function editAccountList(_arg1:int, _arg2:Boolean, _arg3:int):void{
            var _local4:QM = (this.27M.lh(EDITACCOUNTLIST) as QM);
            _local4.accountListId_ = _arg1;
            _local4.add_ = _arg2;
            _local4.objectId_ = _arg3;
            18Q.sendMessage(_local4);
        }

        override public function chooseName(_arg1:String):void{
            var _local2:0n3 = (this.27M.lh(CHOOSENAME) as 0n3);
            _local2.name_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function createGuild(_arg1:String):void{
            var _local2:RS = (this.27M.lh(CREATEGUILD) as RS);
            _local2.name_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function guildRemove(_arg1:String):void{
            var _local2:cz = (this.27M.lh(GUILDREMOVE) as cz);
            _local2.name_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function guildInvite(_arg1:String):void{
            var _local2:09X = (this.27M.lh(GUILDINVITE) as 09X);
            _local2.name_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function requestTrade(_arg1:String):void{
            var _local2:1BF = (this.27M.lh(REQUESTTRADE) as 1BF);
            _local2.name_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function changeTrade(_arg1:Vector.<Boolean>):void{
            var _local2:23K = (this.27M.lh(CHANGETRADE) as 23K);
            _local2.offer_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function acceptTrade(_arg1:Vector.<Boolean>, _arg2:Vector.<Boolean>):void{
            var _local3:0QK = (this.27M.lh(ACCEPTTRADE) as 0QK);
            _local3.myOffer_ = _arg1;
            _local3.yourOffer_ = _arg2;
            18Q.sendMessage(_local3);
        }

        override public function cancelTrade():void{
            18Q.sendMessage(this.27M.lh(CANCELTRADE));
        }

        override public function checkCredits():void{
            18Q.sendMessage(this.27M.lh(CHECKCREDITS));
        }

        override public function escape():void{
            if (this.5q == -1)
            {
                return;
            };
            if (((gs_.map) && ((gs_.map.name_ == "Arena"))))
            {
                18Q.sendMessage(this.27M.lh(jn));
            } else
            {
                18Q.sendMessage(this.27M.lh(ESCAPE));
                this.2-R();
            };
        }

        override public function joinGuild(_arg1:String):void{
            var _local2:0GO = (this.27M.lh(JOINGUILD) as 0GO);
            _local2.guildName_ = _arg1;
            18Q.sendMessage(_local2);
        }

        override public function changeGuildRank(_arg1:String, _arg2:int):void{
            var _local3:1rp = (this.27M.lh(CHANGEGUILDRANK) as 1rp);
            _local3.name_ = _arg1;
            _local3.guildRank_ = _arg2;
            18Q.sendMessage(_local3);
        }

        private function 1ra(_arg1:String):String{
            var _local2:RSAKey = PEM.readRSAPublicKey(Parameters.dL);
            var _local3:ByteArray = new ByteArray();
            _local3.writeUTFBytes(_arg1);
            var _local4:ByteArray = new ByteArray();
            _local2.encrypt(_local3, _local4, _local3.length);
            return (Base64.encodeByteArray(_local4));
        }

        private function 04y():void{
            var _local1:Account = _1JZ.0JF().getInstance(Account);
            this.12K.dispatch(1Ys.make(Parameters.uL, du.1iy));
            this.1BX();
            var _local2:OM = (this.27M.lh(HELLO) as OM);
            _local2.buildVersion_ = ((Parameters.01b + ".") + "0");
            _local2.gameId_ = gameId_;
            _local2.guid_ = this.1ra(_local1.getUserId());
            _local2.password_ = this.1ra(_local1.DX());
            _local2.secret_ = this.1ra(_local1.1hW());
            _local2.keyTime_ = keyTime_;
            _local2.key_.length = 0;
            ((!((key_ == null))) && (_local2.key_.writeBytes(key_)));
            _local2.cq = (((cq == null)) ? "" : cq);
            _local2.16v = _local1.0lC();
            _local2.1RQ = _local1.Gc();
            _local2.0DA = _local1.0yO();
            _local2.229 = _local1.229();
            _local2.1cH = _local1.Pf();
            18Q.sendMessage(_local2);
        }

        private function Um(_arg1:1bl):void{
            this.5q = _arg1.objectId_;
            charId_ = _arg1.charId_;
            gs_.initialize();
            lk = false;
        }

        private function 0qw(_arg1:Damage):void{
            var _local5:int;
            var _local2:1qi = gs_.map;
            var _local3:Projectile;
            if ((((_arg1.objectId_ >= 0)) && ((_arg1.bulletId_ > 0))))
            {
                _local5 = Projectile.248(_arg1.objectId_, _arg1.bulletId_);
                _local3 = (_local2.1n5[_local5] as Projectile);
                if (((!((_local3 == null))) && (!(_local3.gF.1y4))))
                {
                    _local2.removeObj(_local5);
                };
            };
            var _local4:GameObject = _local2.goDict_[_arg1.targetId_];
            if (_local4 != null)
            {
                _local4.damage(-1, _arg1.damageAmount_, _arg1.effects_, _arg1.kill_, _local3);
            };
        }

        private function 23Q(_arg1:1hS):void{
            var _local2 = (_arg1.ownerId_ == this.5q);
            var _local3:GameObject = gs_.map.goDict_[_arg1.ownerId_];
            if ((((_local3 == null)) || (_local3.RK)))
            {
                if (_local2)
                {
                    this.sw(-1);
                };
                return;
            };
            var _local4:Projectile = (0Ep.sH(Projectile) as Projectile);
            var _local5:Player = (_local3 as Player);
            if (_local5 != null)
            {
                _local4.reset(_arg1.containerType_, 0, _arg1.ownerId_, _arg1.bulletId_, _arg1.angle_, gs_.lastUpdate_, _local5.0ib, _local5.0Q3);
            } else
            {
                _local4.reset(_arg1.containerType_, 0, _arg1.ownerId_, _arg1.bulletId_, _arg1.angle_, gs_.lastUpdate_);
            };
            _local4.1gy(_arg1.damage_);
            gs_.map.addObj(_local4, _arg1.startingPos_.x_, _arg1.startingPos_.y_);
            if (_local2)
            {
                this.sw(gs_.lastUpdate_);
            };
        }

        private function 0Mb(_arg1:1XY):void{
            var _local2:GameObject = gs_.map.goDict_[_arg1.ownerId_];
            if ((((_local2 == null)) || (_local2.RK)))
            {
                return;
            };
            var _local3:Projectile = (0Ep.sH(Projectile) as Projectile);
            var _local4:Player = (_local2 as Player);
            if (_local4 != null)
            {
                _local3.reset(_arg1.containerType_, 0, _arg1.ownerId_, _arg1.bulletId_, _arg1.angle_, gs_.lastUpdate_, _local4.0ib, _local4.0Q3);
            } else
            {
                _local3.reset(_arg1.containerType_, 0, _arg1.ownerId_, _arg1.bulletId_, _arg1.angle_, gs_.lastUpdate_);
            };
            gs_.map.addObj(_local3, _local2.x_, _local2.y_);
            _local2.setAttack(_arg1.containerType_, _arg1.angle_);
        }

        private function 0U7(_arg1:22w):void{
            var _local2:1iY = this.1z8.7k(this.model.player.objectType_).0sP.15c(_arg1.skinID);
            _local2.setState(Lm.OWNED);
        }

        private function rd(_arg1:Tc):void{
            var _local4:Projectile;
            var _local5:Number;
            var _local2:GameObject = gs_.map.goDict_[_arg1.ownerId_];
            if ((((_local2 == null)) || (_local2.RK)))
            {
                this.sw(-1);
                return;
            };
            var _local3:int;
            while (_local3 < _arg1.numShots_)
            {
                _local4 = (0Ep.sH(Projectile) as Projectile);
                _local5 = (_arg1.angle_ + (_arg1.angleInc_ * _local3));
                _local4.reset(_local2.objectType_, _arg1.bulletType_, _arg1.ownerId_, ((_arg1.bulletId_ + _local3) % 0x0100), _local5, gs_.lastUpdate_);
                _local4.1gy(_arg1.damage_);
                gs_.map.addObj(_local4, _arg1.startingPos_.x_, _arg1.startingPos_.y_);
                _local3++;
            };
            this.sw(gs_.lastUpdate_);
            _local2.setAttack(_local2.objectType_, (_arg1.angle_ + (_arg1.angleInc_ * ((_arg1.numShots_ - 1) / 2))));
        }

        private function 0V0(_arg1:0-A):void{
            if (!Parameters.data_.chatTrade)
            {
                return;
            };
            if (((Parameters.data_.tradeWithFriends) && (!(this.1RW.19L(_arg1.name_)))))
            {
                return;
            };
            if (Parameters.data_.showTradePopup)
            {
                gs_.hudView.interactPanel.setOverride(new TradeRequestPanel(gs_, _arg1.name_));
            };
            this.12K.dispatch(1Ys.make("", ((((_arg1.name_ + " wants to ") + 'trade _with you.  Type "/trade ') + _arg1.name_) + '" to trade.')));
        }

        private function 09Q(_arg1:ff):void{
            gs_.hudView.startTrade(gs_, _arg1);
        }

        private function 17e(_arg1:1pI):void{
            gs_.hudView.tradeChanged(_arg1);
        }

        private function xQ(_arg1:0yD):void{
            var _local3:Object;
            var _local4:Object;
            gs_.hudView.tradeDone();
            var _local2 = "";
            try
            {
                _local4 = JSON.parse(_arg1.description_);
                _local2 = _local4.key;
                _local3 = _local4.tokens;
            } catch(e:Error)
            {
            };
            this.12K.dispatch(1Ys.make(Parameters.si, _local2, -1, -1, "", false, _local3));
        }

        private function 0le(_arg1:0dB):void{
            gs_.hudView.tradeAccepted(_arg1);
        }

        private function 5G(_arg1:0kZ):void{
            var _local2:1qi = gs_.map;
            var _local3:GameObject = ObjectLibrary.oP(_arg1.objectType_);
            if (_local3 == null)
            {
                return;
            };
            var _local4:ge = _arg1.13L;
            _local3.setObjectId(_local4.objectId_);
            _local2.addObj(_local3, _local4.pos_.x_, _local4.pos_.y_);
            if ((_local3 is Player))
            {
                this.207((_local3 as Player), _local2);
            };
            this.0km(_local4, 0, -1);
            if (((((_local3.props_.static_) && (_local3.props_.occupySquare_))) && (!(_local3.props_.rP))))
            {
                this.Xw.dispatch(new 0Fn(_local3.x_, _local3.y_, _local3));
            };
        }

        private function 207(_arg1:Player, _arg2:1qi):void{
            this.1XL(_arg1, 0);
            if (_arg1.objectId_ == this.5q)
            {
                this.player = _arg1;
                this.model.player = _arg1;
                _arg2.player_ = _arg1;
                gs_.setFocus(_arg1);
                this.YY.dispatch(this.5q.toString());
            };
        }

        private function Q1(_arg1:Update):void{
            var _local3:int;
            var _local4:0Uf;
            var _local2:1kN = this.27M.lh(0ol);
            18Q.sendMessage(_local2);
            _local3 = 0;
            while (_local3 < _arg1.tiles_.length)
            {
                _local4 = _arg1.tiles_[_local3];
                gs_.map.setGroundTile(_local4.x_, _local4.y_, _local4.type_);
                this.iL.dispatch(new CH(_local4.x_, _local4.y_, _local4.type_));
                _local3++;
            };
            _local3 = 0;
            while (_local3 < _arg1.newObjs_.length)
            {
                this.5G(_arg1.newObjs_[_local3]);
                _local3++;
            };
            _local3 = 0;
            while (_local3 < _arg1.drops_.length)
            {
                gs_.map.removeObj(_arg1.drops_[_local3]);
                _local3++;
            };
        }

        private function Hw(_arg1:19t):void{
            var _local3:1cA;
            var _local4:1zh;
            var _local5:0A3;
            var _local2:GameObject = gs_.map.goDict_[_arg1.objectId_];
            if (_local2 != null)
            {
                _local3 = 1cA.fromJSON(_arg1.message);
                if (_local3.key == "server.plus_symbol")
                {
                    _local4 = new 1zh(_local2, _arg1.color_, 1000);
                    _local4.setStringBuilder(_local3);
                    gs_.map.mapOverlay_.addStatusText(_local4);
                } else
                {
                    _local5 = new 0A3(_local2, _local3, _arg1.color_, 2000);
                    gs_.map.mapOverlay_.addQueuedText(_local5);
                    if ((((_local2 == this.player)) && ((_local3.key == "server.quest_complete"))))
                    {
                        gs_.map.quest_.completed();
                    };
                };
            };
        }

        private function 1J(_arg1:DZ):void{
            switch (_arg1.text)
            {
                case "yellow":
                    1Kv.1hP.dispatch(1hX.3H);
                    return;
                case "red":
                    1Kv.1hP.dispatch(1hX.26V);
                    return;
                case "green":
                    1Kv.1hP.dispatch(1hX.18z);
                    return;
                case "purple":
                    1Kv.1hP.dispatch(1hX.0m7);
                    return;
                case "showKeyUI":
                    1v2.1hP.dispatch();
                    return;
                case "giftChestOccupied":
                    this.0xO.dispatch(13V.0bQ);
                    return;
                case "giftChestEmpty":
                    this.0xO.dispatch(13V.Em);
                    return;
                case "beginnersPackage":
                    return;
            };
        }

        private function 0zY(_arg1:YR):void{
            var _local2:ge;
            if (jitterWatcher_ != null)
            {
                jitterWatcher_.record();
            };
            this.move(_arg1.tickId_, this.player);
            for each (_local2 in _arg1.statuses_)
            {
                this.0km(_local2, _arg1.tickTime_, _arg1.tickId_);
            };
            lastTickId_ = _arg1.tickId_;
        }

        private function 0lc(_arg1:e8):void{
            var _local3:GameObject;
            var _local4:0F-;
            var _local5:Point;
            var _local6:uint;
            var _local2:1qi = gs_.map;
            switch (_arg1.effectType_)
            {
                case e8.12T:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null)
                    {
                        return;
                    };
                    _local2.addObj(new 206(_local3, _arg1.color_), _local3.x_, _local3.y_);
                    return;
                case e8.1Pp:
                    _local2.addObj(new TeleportEffect(), _arg1.pos1_.x_, _arg1.pos1_.y_);
                    return;
                case e8.0Fd:
                    _local4 = new StreamEffect(_arg1.pos1_, _arg1.pos2_, _arg1.color_);
                    _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                    return;
                case e8.22l:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    _local5 = (((_local3)!=null) ? new Point(_local3.x_, _local3.y_) : _arg1.pos2_.16e());
                    _local4 = new ThrowEffect(_local5, _arg1.pos1_.16e(), _arg1.color_);
                    _local2.addObj(_local4, _local5.x, _local5.y);
                    return;
                case e8.0Gm:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new 1wN(_local3, _arg1.pos1_.x_, _arg1.color_);
                    _local2.addObj(_local4, _local3.x_, _local3.y_);
                    return;
                case e8.1za:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new 1Un(_local3, _arg1.color_);
                    _local2.addObj(_local4, _local3.x_, _local3.y_);
                    return;
                case e8.1z-:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new 1em(_local3, _arg1.pos1_, _arg1.color_);
                    _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                    return;
                case e8.1CB:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new nO(_local3, _arg1.pos1_, _arg1.pos2_, _arg1.color_);
                    _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                    return;
                case e8.0YU:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new FlowEffect(_arg1.pos1_, _local3, _arg1.color_);
                    _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                    return;
                case e8.o2:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new 0WV(_local3, _arg1.pos1_.x_, _arg1.color_);
                    _local2.addObj(_local4, _local3.x_, _local3.y_);
                    return;
                case e8.S9:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new Bg(_local3, _arg1.pos1_, _arg1.color_, _arg1.pos2_.x_);
                    _local2.addObj(_local4, _local3.x_, _local3.y_);
                    return;
                case e8.15Y:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new 05P(_local3, _arg1.pos1_, _arg1.pos2_, _arg1.color_);
                    _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                    return;
                case e8.Ur:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new if(_local3, _arg1.pos1_, _arg1.pos2_.x_, _arg1.color_);
                    _local2.addObj(_local4, _local3.x_, _local3.y_);
                    return;
                case e8.wV:
                    gs_.camera_.startJitter();
                    return;
                case e8.0mv:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null)
                    {
                        return;
                    };
                    _local3.1Ia = new 0Qy(getTimer(), _arg1.color_, _arg1.pos1_.x_, _arg1.pos1_.y_);
                    return;
                case e8.0i-:
                    _local5 = _arg1.pos1_.16e();
                    _local4 = new 04n(_arg1.color_, _arg1.pos2_.16e(), _arg1.pos1_.16e());
                    _local2.addObj(_local4, _local5.x, _local5.y);
                    return;
                case e8.0bC:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null)
                    {
                        return;
                    };
                    if (((_local3) && (_local3.06o)))
                    {
                        _local3.06o.destroy();
                    };
                    _local4 = new 0Xn(_local3);
                    _local3.06o = 0Xn(_local4);
                    gs_.map.addObj(_local4, _local3.x_, _local3.y_);
                    return;
                case e8.8p:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null) break;
                    _local4 = new 9D(_local3);
                    gs_.map.addObj(_local4, _local3.x_, _local3.y_);
                    return;
                case e8.1VM:
                    _local3 = _local2.goDict_[_arg1.targetObjectId_];
                    if (_local3 == null)
                    {
                        return;
                    };
                    _local6 = (_arg1.pos1_.x_ * 1000);
                    _local4 = new 1oJ(_local3, _local6);
                    gs_.map.addObj(_local4, _local3.x_, _local3.y_);
                    return;
            };
        }

        private function 1Sn(_arg1:23y):void{
            this.0kJ(gs_.lastUpdate_);
            var _local2:GameObject = gs_.map.goDict_[_arg1.objectId_];
            if (_local2 == null)
            {
                return;
            };
            _local2.1Sn(_arg1.pos_.x_, _arg1.pos_.y_, gs_.lastUpdate_);
        }

        private function 01K(_arg1:GameObject, _arg2:Vector.<StatData>, _arg3:Boolean):void{
            var _local7:StatData;
            var _local8:int;
            var _local9:int;
            var _local4:Player = (_arg1 as Player);
            var _local5:Merchant = (_arg1 as Merchant);
            var _local6:Pet = (_arg1 as Pet);
            if (_local6)
            {
                this.1wO.Xz(_local6, _arg2);
                if (gs_.map.isPetYard)
                {
                    this.1wO.GC(_local6, _arg2);
                };
                return;
            };
            for each (_local7 in _arg2)
            {
                _local8 = _local7.1gE;
                switch (_local7.0tC)
                {
                    case StatData.0S8:
                        _arg1.ba = _local8;
                        break;
                    case StatData.14a:
                        _arg1.1VZ = _local8;
                        break;
                    case StatData.set :
                        _arg1.size_ = _local8;
                        break;
                    case StatData.26o:
                        _local4.1nC = _local8;
                        break;
                    case StatData.0X7:
                        _local4.12a = _local8;
                        break;
                    case StatData.default:
                        _local4.0Iq = _local8;
                        break;
                    case StatData.1Wg:
                        _local4.exp_ = _local8;
                        break;
                    case StatData.3b:
                        _arg1.0Sj = _local8;
                        break;
                    case StatData.8r:
                        _local4.17R = _local8;
                        break;
                    case StatData.HB:
                        _arg1.1vs = _local8;
                        break;
                    case StatData.18f:
                        _local4.speed_ = _local8;
                        break;
                    case StatData.0tQ:
                        _local4.0B0 = _local8;
                        break;
                    case StatData.0jH:
                        _local4.0aj = _local8;
                        break;
                    case StatData.0R5:
                        _local4.00N = _local8;
                        break;
                    case StatData.O1:
                        _arg1.condition_[ConditionEffect.26x] = _local8;
                        break;
                    case StatData.INVENTORY_0_STAT:
                    case StatData.INVENTORY_1_STAT:
                    case StatData.INVENTORY_2_STAT:
                    case StatData.INVENTORY_3_STAT:
                    case StatData.INVENTORY_4_STAT:
                    case StatData.INVENTORY_5_STAT:
                    case StatData.INVENTORY_6_STAT:
                    case StatData.INVENTORY_7_STAT:
                    case StatData.INVENTORY_8_STAT:
                    case StatData.INVENTORY_9_STAT:
                    case StatData.INVENTORY_10_STAT:
                    case StatData.INVENTORY_11_STAT:
                        _arg1.1Wz[(_local7.0tC - StatData.INVENTORY_0_STAT)] = _local8;
                        break;
                    case StatData.1sx:
                        _local4.numStars_ = _local8;
                        break;
                    case StatData.0vZ:
                        if (_arg1.name_ != _local7.DI)
                        {
                            _arg1.name_ = _local7.DI;
                            _arg1.1LO = null;
                        };
                        break;
                    case StatData.TEX1_STAT:
                        _arg1.setTex1(_local8);
                        break;
                    case StatData.TEX2_STAT:
                        _arg1.setTex2(_local8);
                        break;
                    case StatData.jd:
                        _local5.setMerchandiseType(_local8);
                        break;
                    case StatData.za:
                        _local4.1Ep(_local8);
                        break;
                    case StatData.1ak:
                        (_arg1 as SellableObject).setPrice(_local8);
                        break;
                    case StatData.0Hc:
                        (_arg1 as Portal).TW = !((_local8 == 0));
                        break;
                    case StatData.06l:
                        _local4.accountId_ = _local7.DI;
                        break;
                    case StatData.0G8:
                        _local4.1iQ = _local8;
                        break;
                    case StatData.KL:
                        _local4.setTokens(_local8);
                        break;
                    case StatData.IY:
                        (_arg1 as SellableObject).23D(_local8);
                        break;
                    case StatData.1dl:
                        _arg1.0mm = _local8;
                        break;
                    case StatData.0KL:
                        _local5.wT = _local8;
                        _local5.5x = 0;
                        break;
                    case StatData.0F5:
                        _local5.00c = _local8;
                        _local5.5x = 0;
                        break;
                    case StatData.17Y:
                        _local5.yl = _local8;
                        _local5.5x = 0;
                        break;
                    case StatData.1eG:
                        (_arg1 as SellableObject).setRankReq(_local8);
                        break;
                    case StatData.1Q1:
                        _local4.1j8 = _local8;
                        break;
                    case StatData.qK:
                        _local4.24q = _local8;
                        break;
                    case StatData.jV:
                        _local4.0el = _local8;
                        break;
                    case StatData.1AC:
                        _local4.0Jk = _local8;
                        break;
                    case StatData.17v:
                        _local4.0AE = _local8;
                        break;
                    case StatData.06m:
                        _local4.0wa = _local8;
                        break;
                    case StatData.rR:
                        _local4.1zn = _local8;
                        break;
                    case StatData.1D2:
                        _local4.1ms = _local8;
                        break;
                    case StatData.0u-:
                        (_arg1 as Container).1Nm(_local7.DI);
                        break;
                    case StatData.1T1:
                        (_arg1 as NameChanger).00U(_local8);
                        break;
                    case StatData.0Y1:
                        _local4.1TS = !((_local8 == 0));
                        _arg1.1LO = null;
                        break;
                    case StatData.0lh:
                        _local4.0fz = _local8;
                        break;
                    case StatData.0m0:
                        _local4.0m2 = _local8;
                        break;
                    case StatData.0-1:
                        _local4.0Lv = _local8;
                        break;
                    case StatData.1nY:
                        if (!_arg3)
                        {
                            _local4.0Km = _local8;
                        };
                        break;
                    case StatData.7Q:
                        _arg1.0OD(_local8);
                        break;
                    case StatData.mS:
                        _local4.1E5(_local7.DI);
                        break;
                    case StatData.1s:
                        _local4.guildRank_ = _local8;
                        break;
                    case StatData.0Kh:
                        _local4.breath_ = _local8;
                        break;
                    case StatData.b3:
                        _local4.1lt = _local8;
                        break;
                    case StatData.1xF:
                        _local4.0bF = (_local8 * Tp);
                        break;
                    case StatData.0hq:
                        _local4.0OA = (_local8 * Tp);
                        break;
                    case StatData.0VP:
                        _local4.198 = (_local8 * Tp);
                        break;
                    case StatData.24h:
                        _local4.0R8 = _local8;
                        break;
                    case StatData.Uk:
                        _local4.03y = _local8;
                        break;
                    case StatData.NU:
                        ((!((_local4.s0 == _local8))) && (this.1XL(_local4, _local8)));
                        break;
                    case StatData.0fQ:
                        (_arg1 as Player).0Th = Boolean(_local8);
                        if (_arg3)
                        {
                            this.0Pu.dispatch(Boolean(_local8));
                        };
                        break;
                    case StatData.BACKPACK_0_STAT:
                    case StatData.BACKPACK_1_STAT:
                    case StatData.BACKPACK_2_STAT:
                    case StatData.BACKPACK_3_STAT:
                    case StatData.BACKPACK_4_STAT:
                    case StatData.BACKPACK_5_STAT:
                    case StatData.BACKPACK_6_STAT:
                    case StatData.BACKPACK_7_STAT:
                        _local9 = (((_local7.0tC - StatData.BACKPACK_0_STAT) + 1zw.1ye) + 1zw.1dg);
                        (_arg1 as Player).1Wz[_local9] = _local8;
                        break;
                    case StatData.1-x:
                        _arg1.condition_[ConditionEffect.ex] = _local8;
                        break;
                };
            };
        }

        private function 1XL(_arg1:Player, _arg2:int):void{
            var _local3:1I8 = (this.27M.lh(RESKIN) as 1I8);
            _local3.skinID = _arg2;
            _local3.player = _arg1;
            _local3.consume();
        }

        private function 0km(_arg1:ge, _arg2:int, _arg3:int):void{
            var _local8:int;
            var _local9:int;
            var _local10:int;
            var _local11:0dE;
            var _local12:XML;
            var _local13:String;
            var _local14:String;
            var _local15:int;
            var _local16:ObjectProperties;
            var _local17:22S;
            var _local18:Array;
            var _local4:1qi = gs_.map;
            var _local5:GameObject = _local4.goDict_[_arg1.objectId_];
            if (_local5 == null)
            {
                return;
            };
            var _local6 = (_arg1.objectId_ == this.5q);
            if (((!((_arg2 == 0))) && (!(_local6))))
            {
                _local5.FH(_arg1.pos_.x_, _arg1.pos_.y_, _arg2, _arg3);
            };
            var _local7:Player = (_local5 as Player);
            if (_local7 != null)
            {
                _local8 = _local7.0Sj;
                _local9 = _local7.exp_;
                _local10 = _local7.s0;
            };
            this.01K(_local5, _arg1.Zg, _local6);
            if (_local7)
            {
                if (_local6)
                {
                    _local11 = this.1z8.7k(_local7.objectType_);
                    if (_local11.0qk() < _local7.0Sj)
                    {
                        _local11.0nw(_local7.0Sj);
                    };
                };
                if (_local7.s0 != _local10)
                {
                    if (ObjectLibrary.RY[_local7.s0] != null)
                    {
                        _local12 = (ObjectLibrary.RY[_local7.s0] as XML);
                        _local13 = _local12.attribute("color");
                        _local14 = _local12.attribute("bulletType");
                        if (((!((_local8 == -1))) && ((_local13.length > 0))))
                        {
                            _local7.8k(uint(_local13));
                        };
                        if (_local14.length > 0)
                        {
                            _local7.0ib = _local14;
                            _local15 = _local7.1Wz[0];
                            _local16 = ObjectLibrary.0Ri[_local15];
                            _local17 = _local16.0xK[0];
                            _local7.0Q3 = _local17.objectId_;
                        };
                    } else
                    {
                        if (ObjectLibrary.RY[_local7.s0] == null)
                        {
                            _local7.0ib = "";
                            _local7.0Q3 = "";
                        };
                    };
                };
                if (((!((_local8 == -1))) && ((_local7.0Sj > _local8))))
                {
                    if (_local6)
                    {
                        _local18 = gs_.model.getNewUnlocks(_local7.objectType_, _local7.0Sj);
                        _local7.0qF(!((_local18.length == 0)));
                    } else
                    {
                        _local7.Cc(du.03F);
                    };
                } else
                {
                    if (((!((_local8 == -1))) && ((_local7.exp_ > _local9))))
                    {
                        _local7.14y((_local7.exp_ - _local9));
                    };
                };
                this.1RW.0Xt(_local7.getName(), _local7);
            };
        }

        private function CA(_arg1:0Y5):void{
            if (_arg1.result_ != 0)
            {
                this.YW();
            };
        }

        private function YW():void{
            0ZC.play("error");
            gs_.hudView.interactPanel.redraw();
        }

        private function 0Ai(_arg1:1w9):void{
            var _local2:Server = new Server().setName(_arg1.name_).setAddress((((_arg1.host_)!="") ? _arg1.host_ : server_.address)).setPort((((_arg1.host_)!="") ? _arg1.port_ : server_.port));
            var _local3:int = _arg1.gameId_;
            var _local4:Boolean = lk;
            var _local5:int = charId_;
            var _local6:int = _arg1.keyTime_;
            var _local7:ByteArray = _arg1.key_;
            isFromArena_ = _arg1.isFromArena_;
            var _local8:19s = new 19s(_local2, _local3, _local4, _local5, _local6, _local7, isFromArena_);
            gs_.dispatchEvent(_local8);
        }

        private function 0in(_arg1:1e9):void{
            var _local2:0H = (this.27M.lh(PONG) as 0H);
            _local2.serial_ = _arg1.serial_;
            _local2.time_ = getTimer();
            18Q.sendMessage(_local2);
        }

        private function 1tW(_arg1:String):void{
            var _local2:XML = XML(_arg1);
            0s6.1ty(_local2);
            ObjectLibrary.1ty(_local2);
            ObjectLibrary.1ty(_local2);
        }

        private function 1JB(_arg1:0BS):void{
            var _local2:String;
            var _local3:String;
            for each (_local2 in _arg1.clientXML_)
            {
                this.1tW(_local2);
            };
            for each (_local3 in _arg1.extraXML_)
            {
                this.1tW(_local3);
            };
            1H2.dispatch();
            this.closeDialogs.dispatch();
            gs_.applyMapInfo(_arg1);
            this.1zQ = new Random(_arg1.fp_);
            if (lk)
            {
                this.create();
            } else
            {
                this.load();
            };
        }

        private function 1Ly(_arg1:Pic):void{
            gs_.addChild(new 1SY(_arg1.bitmapData_));
        }

        private function 1iI(_arg1:1wd):void{
            this.death = _arg1;
            var _local2:BitmapData = new HL(gs_.stage.stageWidth, gs_.stage.stageHeight);
            _local2.draw(gs_);
            _arg1.background = _local2;
            if (!gs_.isEditor)
            {
                this.01e.dispatch(_arg1);
            };
            this.2-R();
        }

        private function 0vF(_arg1:1Qn):void{
            if (_arg1.result_ == 1Qn.0Oa)
            {
                if (outstandingBuy_ != null)
                {
                    outstandingBuy_.record();
                };
            };
            outstandingBuy_ = null;
            this.1He(_arg1);
        }

        private function 1He(_arg1:1Qn):void{
            var _local2:1Ys;
            switch (_arg1.result_)
            {
                case 1Qn.0Od:
                    _local2 = 1Ys.make(Parameters.si, _arg1.resultString_);
                    this.12K.dispatch(_local2);
                    return;
                case 1Qn.1qI:
                    this.0n2.dispatch(new pu());
                    return;
                case 1Qn.iP:
                    this.0n2.dispatch(new NotEnoughFameDialog());
                    return;
                default:
                    this.AU(_arg1);
            };
        }

        private function AU(_arg1:1Qn):void{
            var _local2:1cA = 1cA.fromJSON(_arg1.resultString_);
            var _local3:Boolean = (((_arg1.result_ == 1Qn.0Oa)) || ((_arg1.result_ == 1Qn.23b)));
            var _local4:1Ys = 1Ys.make(((_local3) ? Parameters.si : Parameters.1Wj), _local2.key);
            _local4.tokens = _local2.tokens;
            this.12K.dispatch(_local4);
        }

        private function 0JB(_arg1:bU):void{
            if (_arg1.accountListId_ == 0)
            {
                if (_arg1.lockAction_ != -1)
                {
                    if (_arg1.lockAction_ == 1)
                    {
                        gs_.map.party_.setStars(_arg1);
                    } else
                    {
                        gs_.map.party_.removeStars(_arg1);
                    };
                } else
                {
                    gs_.map.party_.setStars(_arg1);
                };
            } else
            {
                if (_arg1.accountListId_ == 1)
                {
                    gs_.map.party_.setIgnores(_arg1);
                };
            };
        }

        private function 0I3(_arg1:Yl):void{
            gs_.map.quest_.setObject(_arg1.objectId_);
        }

        private function 1Zn(_arg1:063):void{
            var _local4:int;
            var _local5:Vector.<uint>;
            if (this.player == null)
            {
                this.1Fp(gs_.lastUpdate_, 0, 0);
                return;
            };
            var _local2:MS = new MS(_arg1.pos_.16e(), _arg1.radius_, 0xFF0000);
            gs_.map.addObj(_local2, _arg1.pos_.x_, _arg1.pos_.y_);
            if (((this.player.0mQ()) || (this.player.isPaused())))
            {
                this.1Fp(gs_.lastUpdate_, this.player.x_, this.player.y_);
                return;
            };
            var _local3 = (this.player.Gi(_arg1.pos_) < _arg1.radius_);
            if (_local3)
            {
                _local4 = GameObject.0PH(_arg1.damage_, this.player.1vs, false, this.player.condition_);
                _local5 = null;
                if (_arg1.effect_ != 0)
                {
                    _local5 = new Vector.<uint>();
                    _local5.push(_arg1.effect_);
                };
                this.player.damage(_arg1.origType_, _local4, _local5, false, null);
            };
            this.1Fp(gs_.lastUpdate_, this.player.x_, this.player.y_);
        }

        private function 1Yv(_arg1:1r9):void{
            gs_.dispatchEvent(new 0N7(_arg1));
        }

        private function 1dG(_arg1:Oi):void{
            var _local2:1cA;
            if (_arg1.lineBuilderJSON == "")
            {
                gs_.dispatchEvent(new 04M(_arg1.success_, "", {}));
            } else
            {
                _local2 = 1cA.fromJSON(_arg1.lineBuilderJSON);
                this.12K.dispatch(1Ys.make(Parameters.1Wj, _local2.key, -1, -1, "", false, _local2.tokens));
                gs_.dispatchEvent(new 04M(_arg1.success_, _local2.key, _local2.tokens));
            };
        }

        private function 09k(_arg1:1Qf):void{
            var _local2:Account = _1JZ.0JF().getInstance(Account);
            _local2.1oM(_arg1.name_, _arg1.value_);
        }

        private function 10b(_arg1:File):void{
            new FileReference().save(_arg1.file_, _arg1.filename_);
        }

        private function 0Dv(_arg1:1Wp):void{
            if (Parameters.data_.showGuildInvitePopup)
            {
                gs_.hudView.interactPanel.setOverride(new 0xn(gs_, _arg1.name_, _arg1.guildName_));
            };
            this.12K.dispatch(1Ys.make("", (((((("You have been invited by " + _arg1.name_) + " to join the guild ") + _arg1.guildName_) + '.\n  If you wish to join type "/join ') + _arg1.guildName_) + '"')));
        }

        private function 167(_arg1:1rH):void{
            var _local2:GameObject = gs_.map.goDict_[_arg1.ownerId_];
            ((_local2) && (_local2.0pw(_arg1.soundId_)));
        }

        private function kI(_arg1:0x):void{
            this.S7.dispatch(_arg1.currentRuntime);
        }

        private function 0FG(_arg1:25N):void{
            this.21B.M- = _arg1.cost;
            this.0n2.dispatch(new ContinueOrQuitDialog(_arg1.cost, false));
            this.1YD.dispatch();
        }

        private function N2(_arg1:0wc):void{
            TitleView.1Vq = true;
            if (gs_ != null)
            {
                gs_.closed.dispatch();
            };
            var _local2:1lD = _1JZ.0JF().getInstance(1lD);
            if (_local2 != null)
            {
                _local2.dispatch();
            };
        }

        private function 1KU(_arg1:23W):void{
            if (_arg1.cleanPasswordStatus == 3)
            {
                TitleView.1P1 = true;
            } else
            {
                if (_arg1.cleanPasswordStatus == 2)
                {
                    TitleView.p2 = true;
                } else
                {
                    if (_arg1.cleanPasswordStatus == 4)
                    {
                        TitleView.cC = true;
                    };
                };
            };
            if (gs_ != null)
            {
                gs_.closed.dispatch();
            };
            var _local2:1lD = _1JZ.0JF().getInstance(1lD);
            if (_local2 != null)
            {
                _local2.dispatch();
            };
        }

        override public function questFetch():void{
            18Q.sendMessage(this.27M.lh(151));
        }

        private function 0ZJ(_arg1:1lm):void{
            this.Fn.dispatch(_arg1);
        }

        private function 134(_arg1:1fI):void{
            this.1HQ.dispatch(_arg1);
        }

        override public function questRedeem(_arg1:int, _arg2:int, _arg3:int):void{
            var _local4:0dr = (this.27M.lh(1Ip) as 0dr);
            _local4.0qR.objectId_ = _arg1;
            _local4.0qR.08N = _arg2;
            _local4.0qR.objectType_ = _arg3;
            18Q.sendMessage(_local4);
        }

        private function 1qf():void{
            var _local1:1lD;
            if (this.5q != -1)
            {
                gs_.closed.dispatch();
            } else
            {
                if (this.0NU)
                {
                    if (this.true < 10)
                    {
                        if (this.true == 6)
                        {
                            _local1 = _1JZ.0JF().getInstance(1lD);
                            _local1.dispatch();
                        };
                        this.13Q(this.true++);
                        this.12K.dispatch(1Ys.make(Parameters.1Wj, "Connection failed!  Retrying..."));
                    } else
                    {
                        gs_.closed.dispatch();
                    };
                };
            };
        }

        private function 13Q(_arg1:int):void{
            this.1kv = new Timer((_arg1 * 1000), 1);
            this.1kv.addEventListener(TimerEvent.TIMER_COMPLETE, this.0KP);
            this.1kv.start();
        }

        private function 0KP(_arg1:TimerEvent):void{
            18Q.connect(server_.address, server_.port);
        }

        private function 0ys(_arg1:String):void{
            this.12K.dispatch(1Ys.make(Parameters.1Wj, _arg1));
        }

        private function 0Tu(_arg1:3V):void{
            switch (_arg1.errorId_)
            {
                case 3V.KH:
                    this.0AZ(_arg1);
                    return;
                case 3V.02C:
                    this.0oq(_arg1);
                    return;
                case 3V.16o:
                    this.0pe(_arg1);
                    return;
                case 3V.1ei:
                    this.1cR(_arg1);
                    return;
                default:
                    this.0eP(_arg1);
            };
        }

        private function 1cR(_arg1:3V):void{
            this.0NU = false;
            gs_.closed.dispatch();
        }

        private function 0pe(_arg1:3V):void{
            var _local2:String = 1cA.lO(_arg1.errorDescription_);
            if (_local2 == "")
            {
                _local2 = _arg1.errorDescription_;
            };
            this.12K.dispatch(1Ys.make(Parameters.1Wj, _local2));
            this.player.IQ = 0;
        }

        private function 0oq(_arg1:3V):void{
            var _local2:String = 1cA.lO(_arg1.errorDescription_);
            if (_local2 == "")
            {
                _local2 = _arg1.errorDescription_;
            };
            this.12K.dispatch(1Ys.make(Parameters.1Wj, _local2));
            this.0NU = false;
            gs_.closed.dispatch();
        }

        private function 0AZ(_arg1:3V):void{
            var _local2:Dialog = new Dialog(du.0-c, "", du.2-v, null, "/clientUpdate");
            _local2.12Z(du.AN, {
                client:Parameters.01b,
                server:_arg1.errorDescription_
            });
            _local2.addEventListener(Dialog.LEFT_BUTTON, this.0yE);
            gs_.stage.addChild(_local2);
            this.0NU = false;
        }

        private function 0eP(_arg1:3V):void{
            var _local2:String = 1cA.lO(_arg1.errorDescription_);
            if (_local2 == "")
            {
                _local2 = _arg1.errorDescription_;
            };
            this.12K.dispatch(1Ys.make(Parameters.1Wj, _local2));
        }

        private function 0yE(_arg1:Event):void{
            var _local2:Dialog = (_arg1.currentTarget as Dialog);
            _local2.parent.removeChild(_local2);
            gs_.closed.dispatch();
        }

        override public function isConnected():Boolean{
            return (18Q.isConnected());
        }


    }
}//package 1r4

