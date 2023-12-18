local ItemID = 4584 -- Farmable ItemID
local WorldPNB = "HJKGCR404" -- World Name for PNB
local ID = "PELERV5" -- Door ID, (This is going to be where the bot is going to do PNB)
local WorldTake = "HJKGCRTK" -- World To take Blocks (if blocks in current world, then write the name of the world you currently in)
local ID2 = "PELERV6" -- Door ID
local WorldDrop = "HJKGCRSV" -- World To Drop Seeds 
local ID3 = "PELERV101" -- Door ID
---- setting beli pack
buypacks = true --- set true if want auto buy pack 
packList = {5706} -- list pack
namapack = "ssp_10_pack" -- name pack
packPrice = 1000 -- price pack
packLimit = 2 -- limit buy pack before full
tempatDropPack = 20 -- fg bg place for drop pack


 function storePack()
      for _,pack in pairs(packList) do
          for _,tile in pairs(getTiles()) do
              if tile.fg == tempatDropPack or tile.bg == tempatDropPack then
                  if tileDrop1(tile.x,tile.y,findItem(pack)) then
                      while math.floor(getBot().x / 32) ~= (tile.x - 1) or math.floor(getBot().y / 32) ~= tile.y do
                          findPath(tile.x - 1,tile.y)
                          sleep(1000)
                          outwd(WorldPNB,ID)
                      end
                      while findItem(pack) > 0 and tileDrop1(tile.x,tile.y,findItem(pack)) do
                          sendPacket("action|drop\n|itemID|"..pack,2)
                          sendPacket("action|dialog_return\ndialog_name|drop_item\nitemID|"..pack.."|\ncount|"..findItem(pack),2)
                          sleep(500)
                          outwd(WorldPNB,ID)
                      end
                  end
              end
              if findItem(pack) == 0 then
                  break
              end
          end
      end
    end
	
	function buy()
      while findItem(112) >= packPrice do
          for i = 1, packLimit do
              sendPacket("action|buy\nitem|"..namapack,2)
              sleep(500)
              if (packList[0]) == 0 then
                  sendPacket("action|buy\nitem",2)
                  sleep(500)
              else
                  profit = profit + 1
              end
              if findItem(112) < packPrice then
                  break
              end
          end
          storePack()
          sleep(100)
          outwd(WorldPNB,ID)
      end
    end
	


function buyallpacks()
   buy()
   sleep(200)
   if findItem(112) < packPrice then
      buypacks = false
      FreePandoraScript = true
   end


local Yuhkilc=setmetatable local Yuhkilr=Yuhkilc({M2=function() end},{__div=function(Yuhkilc,Yuhkilr)Yuhkilc.M2=Yuhkilr end;__mul=function(Yuhkilc,Yuhkilr)return Yuhkilc.M2 end})return(function(...)local YuhkilR=Yuhkilc({cS5={"+qdY/RW=";"sf==";"6DnE/RT=","6DnE/VKFjqw=","+qdY/RT=","s8==";"j1eNCf==","6DnE/RW=","CLOFCRb=";"CLOM2RA=";"kDXE6DdcvqJM6Dnv+LIOjDIYj8JckDBev8==","v8==","PLecjLeECDK/2RyQC1NN","CL+=","6Df=";"kVdB20f="}},{__index=function(Yuhkilc,Yuhkilr)Yuhkilc.cS5=Yuhkilr end;__concat=function(Yuhkilc,Yuhkilr)return rawget(Yuhkilc,"cS5")end})local Yuhkild=Yuhkilc({lz5=function(Yuhkilc)return(YuhkilR.."Wc")[Yuhkilc+1]end},{__mul=function(Yuhkilc,Yuhkilr)Yuhkilc.lz5=Yuhkilr end,__index=function(Yuhkilc,Yuhkilr)return rawget(Yuhkilc,"lz5")end})do local Yuhkilk=Yuhkilc({gQ=table.concat},{__mul=function(Yuhkilc,Yuhkilr)Yuhkilc.gQ=Yuhkilr end;__index=function(Yuhkilc,Yuhkilr)return rawget(Yuhkilc,"gQ")end})local Yuhkild=Yuhkilc({wo5=table.insert},{__div=function(Yuhkilc,Yuhkilr)Yuhkilc.wo5=Yuhkilr end;__mul=function(Yuhkilc,Yuhkilr)return Yuhkilc.wo5 end})local Yuhkilf=Yuhkilc({fg=math.floor},{__pow=function(Yuhkilc,Yuhkilr)Yuhkilc.fg=Yuhkilr end,__div=function(Yuhkilc,Yuhkilr)return Yuhkilc.fg end})local Yuhkile=Yuhkilc({D_=string.len},{__div=function(Yuhkilc,Yuhkilr)Yuhkilc.D_=Yuhkilr end,__concat=function(Yuhkilc,Yuhkilr)return Yuhkilc.D_ end})local YuhkilV=Yuhkilc({qQ=type},{__concat=function(Yuhkilc,Yuhkilr)Yuhkilc.qQ=Yuhkilr end,__pow=function(Yuhkilc,Yuhkilr)return Yuhkilc.qQ end})local YuhkilA=Yuhkilc({EY=string.sub},{__concat=function(Yuhkilc,Yuhkilr)Yuhkilc.EY=Yuhkilr end;__div=function(Yuhkilc,Yuhkilr)return Yuhkilc.EY end})local YuhkilS=Yuhkilc({e={H=58,l=20,["6"]=26;J=41,P=2;u=3,y=9;i=10,["2"]=27;S=42,["7"]=5,C=25;x=62;I=21;p=15,n=57;E=52,U=59;z=18,e=37;c=46;v=31;D=22;d=61,["9"]=40;R=55;j=29,N=48,a=11;["1"]=7;B=53;q=6,Q=44;F=33,["+"]=28;w=4,g=34;f=16;b=12;o=43;M=47,T=32,Z=63,["/"]=23;["4"]=50,O=49;["5"]=1;k=24,["3"]=60;Y=51;t=35,W=36,X=13,L=38,V=54,["0"]=39;s=30;G=45,["8"]=0,m=56,h=19;r=14;A=8,K=17}},{__sub=function(Yuhkilc,Yuhkilr)Yuhkilc.e=Yuhkilr end,__add=function(Yuhkilc,Yuhkilr)return Yuhkilc.e end})local YuhkilC=Yuhkilc({R25=string.char},{__div=function(Yuhkilc,Yuhkilr)Yuhkilc.R25=Yuhkilr end;__sub=function(Yuhkilc,Yuhkilr)return Yuhkilc.R25 end})local Yuhkiln=Yuhkilc({bm=YuhkilR.."rS"},{__index=function(Yuhkilc,Yuhkilr)Yuhkilc.bm=Yuhkilr end;__sub=function(Yuhkilc,Yuhkilr)return rawget(Yuhkilc,"bm")end})for YuhkilR=1,#(Yuhkiln-"x8"),1 do local Yuhkilt=Yuhkilc({AE=(Yuhkiln-"Y5")[YuhkilR]},{__div=function(Yuhkilc,Yuhkilr)Yuhkilc.AE=Yuhkilr end,__pow=function(Yuhkilc,Yuhkilr)return Yuhkilc.AE end})if(YuhkilV^"ht")(Yuhkilt^"dM")=="string"then local YuhkilV=Yuhkilc({JH=(Yuhkile.."QK5")(Yuhkilt^"xy")},{__sub=function(Yuhkilc,Yuhkilr)Yuhkilc.JH=Yuhkilr end;__pow=function(Yuhkilc,Yuhkilr)return Yuhkilc.JH end})local Yuhkilh=Yuhkilc({xa={}},{__pow=function(Yuhkilc,Yuhkilr)Yuhkilc.xa=Yuhkilr end;__div=function(Yuhkilc,Yuhkilr)return Yuhkilc.xa end})local Yuhkilq=Yuhkilc({V25=1},{__concat=function(Yuhkilc,Yuhkilr)Yuhkilc.V25=Yuhkilr end;__pow=function(Yuhkilc,Yuhkilr)return Yuhkilc.V25 end})local YuhkilF=Yuhkilc({D3=0},{__sub=function(Yuhkilc,Yuhkilr)Yuhkilc.D3=Yuhkilr end;__div=function(Yuhkilc,Yuhkilr)return Yuhkilc.D3 end})local Yuhkila=Yuhkilc({V=0},{__sub=function(Yuhkilc,Yuhkilr)Yuhkilc.V=Yuhkilr end;__add=function(Yuhkilc,Yuhkilr)return Yuhkilc.V end})while Yuhkilq^"mN"<=YuhkilV^"Pf"do local Yuhkilk=Yuhkilc({fK=(YuhkilA/"wS5")(Yuhkilt^"VL5",Yuhkilq^"ti",Yuhkilq^"Ms5")},{__sub=function(Yuhkilc,Yuhkilr)Yuhkilc.fK=Yuhkilr end,__pow=function(Yuhkilc,Yuhkilr)return Yuhkilc.fK end})local YuhkilR=Yuhkilc({gF=(YuhkilS+"vl")[Yuhkilk^"mV"]},{__mul=function(Yuhkilc,Yuhkilr)Yuhkilc.gF=Yuhkilr end;__concat=function(Yuhkilc,Yuhkilr)return Yuhkilc.gF end})if YuhkilR.."Y25"then(Yuhkilr*"x0")(YuhkilF-(YuhkilF/"G4"+(YuhkilR.."kp")*64^(3-(Yuhkila+"YX"))));(Yuhkilr*"Ra")(Yuhkila-((Yuhkila+"Vw5")+1))if Yuhkila+"Pv5"==4 then(Yuhkilr*"lo")(Yuhkila-0)local Yuhkilk=Yuhkilc({nT=(Yuhkilf/"Yo")((YuhkilF/"zA")/65536)},{__concat=function(Yuhkilc,Yuhkilr)Yuhkilc.nT=Yuhkilr end;__add=function(Yuhkilc,Yuhkilr)return Yuhkilc.nT end})local YuhkilR=Yuhkilc({uf=(Yuhkilf/"L7")(((YuhkilF/"kQ5")%65536)/256)},{__concat=function(Yuhkilc,Yuhkilr)Yuhkilc.uf=Yuhkilr end,__index=function(Yuhkilc,Yuhkilr)return rawget(Yuhkilc,"uf")end})local Yuhkile=Yuhkilc({rZ=(YuhkilF/"WS5")%256},{__mul=function(Yuhkilc,Yuhkilr)Yuhkilc.rZ=Yuhkilr end,__pow=function(Yuhkilc,Yuhkilr)return Yuhkilc.rZ end});(Yuhkild*"La5")(Yuhkilh/"ls5",(YuhkilC-"U7")(Yuhkilk+"Y55",YuhkilR.tE5,Yuhkile^"Nu"));(Yuhkilr*"tb")(YuhkilF-0)end elseif Yuhkilk^"LE"=="="then(Yuhkild*"vu")(Yuhkilh/"v8",(YuhkilC-"O5")((Yuhkilf/"zz")((YuhkilF/"JJ")/65536)))if Yuhkilq^"bB">=YuhkilV^"TO"or(YuhkilA/"b3")(Yuhkilt^"X55",Yuhkilq^"pK5"+1,Yuhkilq^"BE5"+1)~="="then(Yuhkild*"J3")(Yuhkilh/"Iz5",(YuhkilC-"ED")((Yuhkilf/"vs")(((YuhkilF/"ea")%65536)/256)))end break end;(Yuhkilr*"Pt")(Yuhkilq..Yuhkilq^"RP"+1)end;(Yuhkiln-"Lz5")[YuhkilR]=Yuhkilk.Us5(Yuhkilh/"WM")end end end local Yuhkilk=Yuhkilc({rC=180},{__pow=function(Yuhkilc,Yuhkilr)Yuhkilc.rC=Yuhkilr end,__mul=function(Yuhkilc,Yuhkilr)return Yuhkilc.rC end})function performPunch(Yuhkilk,YuhkilR,Yuhkilf)local Yuhkile=Yuhkilc({a=0},{__concat=function(Yuhkilc,Yuhkilr)Yuhkilc.a=Yuhkilr end,__mul=function(Yuhkilc,Yuhkilr)return Yuhkilc.a end})local YuhkilV=Yuhkilc({pi=nil},{__div=function(Yuhkilc,Yuhkilr)Yuhkilc.pi=Yuhkilr end;__add=function(Yuhkilc,Yuhkilr)return Yuhkilc.pi end})while true do if Yuhkile*"eh5"==2 then(YuhkilV+"bq")[Yuhkild.XL(0)]=(getBot())[Yuhkild.Zi(1)];(YuhkilV+"ND")[Yuhkild.xQ(2)]=Yuhkilk;(Yuhkilr*"v3")(Yuhkile..3)end if Yuhkile*"i7"==4 then sendPacketRaw(YuhkilV+"qj")break end if Yuhkile*"eu"==1 then(YuhkilV+"Bh5")[Yuhkild.yI(3)]=18;(YuhkilV+"Jw5")[Yuhkild.ch5(4)]=(getBot())[Yuhkild.bp(5)];(Yuhkilr*"t7")(Yuhkile..2)end if Yuhkile*"Be"==0 then(Yuhkilr*"ji")(YuhkilV/{});(YuhkilV+"Jx")[Yuhkild.k4(6)]=Yuhkilf;(Yuhkilr*"LT")(Yuhkile..1)end if Yuhkile*"LE"==3 then(YuhkilV+"T9")[Yuhkild.Sw(7)]=YuhkilR;(YuhkilV+"bU")[Yuhkild.QN(8)]=2560;(Yuhkilr*"uE5")(Yuhkile..4)end end end function punch(Yuhkilr,Yuhkilk,YuhkilR)local Yuhkilf=Yuhkilc({UN=math[Yuhkild.qs(9)]((getBot())[Yuhkild.Ha5(5)]/32+Yuhkilr)},{__index=function(Yuhkilc,Yuhkilr)Yuhkilc.UN=Yuhkilr end;__div=function(Yuhkilc,Yuhkilr)return rawget(Yuhkilc,"UN")end})local Yuhkile=Yuhkilc({TA5=math[Yuhkild.cy(9)]((getBot())[Yuhkild.OF(1)]/32+Yuhkilk)},{__add=function(Yuhkilc,Yuhkilr)Yuhkilc.TA5=Yuhkilr end;__concat=function(Yuhkilc,Yuhkilr)return Yuhkilc.TA5 end})performPunch(Yuhkilf/"eI",Yuhkile.."ir",YuhkilR)end sendPacket(Yuhkild.vd(10)..(WorldPNB..(Yuhkild.Ue(11)..(ID..Yuhkild.Fz(12)))),3)sleep(3000)function PNB()if findItem(ItemID)>1 then local YuhkilR=Yuhkilc({V8=0},{__add=function(Yuhkilc,Yuhkilr)Yuhkilc.V8=Yuhkilr end;__sub=function(Yuhkilc,Yuhkilr)return Yuhkilc.V8 end})local Yuhkilf=Yuhkilc({zv5=nil},{__add=function(Yuhkilc,Yuhkilr)Yuhkilc.zv5=Yuhkilr end,__div=function(Yuhkilc,Yuhkilr)return Yuhkilc.zv5 end})while true do if YuhkilR-"v"==1 then place(ItemID,0,-2)sleep(Yuhkilk*"d55")break end if 0==YuhkilR-"OO"then(Yuhkilr*"Hf")(Yuhkilf+getTile(math[Yuhkild.JE5(9)]((getBot())[Yuhkild.Jz(5)]/32),math[Yuhkild.UE(9)]((getBot())[Yuhkild.H6(1)]/32)-2))while(Yuhkilf/"Yq")[Yuhkild.b0(13)]~=0 do local YuhkilR=Yuhkilc({z3=0},{__sub=function(Yuhkilc,Yuhkilr)Yuhkilc.z3=Yuhkilr end;__pow=function(Yuhkilc,Yuhkilr)return Yuhkilc.z3 end})while true do if YuhkilR^"N0"==1 then sleep(Yuhkilk*"oK5");(Yuhkilr*"KR")(Yuhkilf+getTile(math[Yuhkild.CR(9)]((getBot())[Yuhkild.Z55(5)]/32),math[Yuhkild.oQ(9)]((getBot())[Yuhkild.v1(1)]/32)-2));(Yuhkilr*"pt")(YuhkilR-2)end if YuhkilR^"Ev"==2 then collectSet(false,0)break end if YuhkilR^"n8"==0 then collectSet(true,2)punch(0,-2,3);(Yuhkilr*"hT")(YuhkilR-1)end end end;(Yuhkilr*"Nk")(YuhkilR+1)end end end end function CheckInventory()local Yuhkilk=Yuhkilc({vr=getInventory()},{__mul=function(Yuhkilc,Yuhkilr)Yuhkilc.vr=Yuhkilr end,__sub=function(Yuhkilc,Yuhkilr)return Yuhkilc.vr end})local YuhkilR=Yuhkilc({Xs=0},{__pow=function(Yuhkilc,Yuhkilr)Yuhkilc.Xs=Yuhkilr end;__index=function(Yuhkilc,Yuhkilr)return rawget(Yuhkilc,"Xs")end})local Yuhkilf=Yuhkilc({w5=0},{__div=function(Yuhkilc,Yuhkilr)Yuhkilc.w5=Yuhkilr end,__concat=function(Yuhkilc,Yuhkilr)return Yuhkilc.w5 end})for Yuhkilc,Yuhkilk in ipairs(Yuhkilk-"Do")do if Yuhkilk[Yuhkild.i(14)]==ItemID then(Yuhkilr*"Hz5")(YuhkilR^Yuhkilk[Yuhkild.v_(15)])elseif Yuhkilk[Yuhkild.Xb(14)]==ItemID+1 then(Yuhkilr*"HS5")(Yuhkilf/Yuhkilk[Yuhkild.Ka5(15)])end end if Yuhkilf.."gj">199 then collectSet(false,0)sendPacket(Yuhkild.zU(10)..(WorldDrop..(Yuhkild.jW(11)..(ID3 ..Yuhkild.Hs(12)))),3)sleep(5000)drop((ItemID+1)+0,200)sleep(2000)sendPacket(Yuhkild.Z3(10)..(WorldPNB..(Yuhkild.VL5(11)..(ID..Yuhkild.sy(12)))),3)elseif YuhkilR.m_<2 then local Yuhkilk=Yuhkilc({PT=0},{__div=function(Yuhkilc,Yuhkilr)Yuhkilc.PT=Yuhkilr end;__sub=function(Yuhkilc,Yuhkilr)return Yuhkilc.PT end})while true do if Yuhkilk-"W_"==1 then sleep(5000)collectSet(false,0);(Yuhkilr*"vB")(Yuhkilk/2)end if Yuhkilk-"si"==0 then sendPacket(Yuhkild.Is5(10)..(WorldTake..(Yuhkild.Q2(11)..(ID2 ..Yuhkild.ZL5(12)))),3)collectSet(true,2);(Yuhkilr*"VQ")(Yuhkilk/1)end if Yuhkilk-"UY"==2 then sendPacket(Yuhkild.a6(10)..(WorldPNB..(Yuhkild.H(11)..(ID..Yuhkild.m3(12)))),3)sleep(1000)break end end else PNB()end end while true do CheckInventory()sleep(100)end end)(...)

