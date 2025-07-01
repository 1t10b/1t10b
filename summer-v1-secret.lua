-- Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🏖️ 1t10b Secret GaG Script V1",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "🏖️ 1t10b Secret GaG Script V1",
   LoadingSubtitle = "by 1t10b",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- , bThe user's key will be savedut if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"levowx"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
-- Tabs (Summer Harvest is now first/main)
local SummerTab = Window:CreateTab("🏖️ Summer Harvest", nil)
local MiscTab = Window:CreateTab("⚙️ Misc", nil)

-- Misc: Player Speed Slider
MiscTab:CreateSlider({
    Name = "Player Speed",
    Range = {8, 500},
    Increment = 1,
    Suffix = " WalkSpeed",
    CurrentValue = 16,
    Flag = "SpeedSlider",
    Callback = function(value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = value
    end
})

-- Infinite Jump Button (Toggle-style logic)
local UIS = game:GetService("UserInputService")
local InfJumpEnabled = false
local InfJumpConnection

MiscTab:CreateButton({
    Name = "Toggle Infinite Jump",
    Callback = function()
        InfJumpEnabled = not InfJumpEnabled
        if InfJumpEnabled then
            InfJumpConnection = UIS.JumpRequest:Connect(function()
                local player = game:GetService("Players").LocalPlayer
                local character = player.Character
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end
            end)
            Rayfield:Notify({
                Title = "Infinite Jump",
                Content = "Enabled!",
                Duration = 3,
                Image = 4483362458,
            })
        else
            if InfJumpConnection then
                InfJumpConnection:Disconnect()
                InfJumpConnection = nil
            end
            Rayfield:Notify({
                Title = "Infinite Jump",
                Content = "Disabled.",
                Duration = 3,
                Image = 4483362458,
            })
        end
    end
})

local Toggle = SummerTab:CreateToggle({
   Name = "harvest",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
return({Di=bit32.band,cs=function(R,R,p,i)if R<74 then if not(p>=i[0B1][0Xd])then else return{p-i[0X1][9]};end;else if not(R>0B111101)then else return{p};end;end;return nil;end,D=bit32.lshift,Ms=function(R,p,i)i=(-4294967209+(R.bi(((R.hi(p[1641],(p[0X12dc])))<p[0x2083]and p[0X4373]or p[0x1Cb4])-p[19462])));(p)[0x108B]=i;return i;end,ps=function(R,R)if R[0x1][23]==R[0X1__][12]then return{-R[1][7]};end;return nil;end,us=function(R,R,p,i)(p)[0xA]=i;p[0XB]=R;end,F=coroutine,ls=function(R,R,p,i,j)R[j+1]=p;R[j+0x2]=(i);end,js=function(R,p,i,j)local K;repeat local m;for n=0B10010,0X72,0X30 do if n==0X12 then continue;elseif n==114 then K=R:ps(p);if K~=nil then return i,{R.P(K)},j;end;else if n~=66 then else m=p[0X1_][0X15](p[0x1][0x1d],p[0B1][0b11011],p[1][0X1_b]);end;end;end;j+=((m>127 and m-0X80 or m)*i);local n=112;while true do i,K,n=R:Fs(p,i,n);if K~=20043 then else break;end;end;until m<0B10000__000;return i,{j},j;end,Ni=string.unpack,Hi=function(R,R,p,i)if p>0X5a then return{R},p;else if p<0X71 then p=(113);i[1][4]=(nil);return 52430,p;end;end;return nil,p;end,Ls=function(R,p,i,j,K,m,n)K=(nil);i=nil;m=(nil);for u=0,0X147,0X6d do if u==0x147 then R:ds(K,m);elseif u==0X6D then i=R:fs(i);continue;elseif u==0X0 then K=({nil,nil,R.j,R.j,R.j,nil,nil,R.j,R.j,R.j,nil});continue;else if u==218 then m={};end;end;end;n=nil;p=(nil);j=0B1010111;return K,i,n,m,j,p;end,r=function(R,p,i,j)j[18]=(error);if not i[0X6765]then p=223+((R.Pi((R.Di(i[0X4373],i[0X52a_1],i[12854]))))-i[14040]-i[32202]);i[0X676__5]=(p);else p=(i[26469]);end;return p;end,V=bit32.band,ji=function(R,R,p)(p[0B1][0X10])[0x3]=p[1][0X14__];(p[1][0X10])[0x1]=R;end,Ts=function(R,p,i,j,K)local m;if j==0X0f_a then K,m,i=R:js(p,K,i);return{R.P(m)},K,i;else if j~=0B1111101 then else i=(0x0);K=(0B1);end;end;return nil,K,i;end,Ti=function(R,p,i,j,K,m)for n=0X1,#i[1][0x1__E_],3 do R:Fi(i,n,K);end;if i[3]==i[0X1][0X9]then while i[0X1][0X24]do return j,{},p;end;if not(i[0B11])then else i[0X1][0B100001],i[0x1][22]=0Xa3,(0X71);end;else if not(m)then else R:ji(K,i);end;end;p=(nil);j=(0X40);return j,nil,p;end,l=function(R,R)(R)[0X17]=function(p,i,j)local K={R,R[0b1011]};i=(i or 1);j=(j or#p);if not((j-i+0X1)>0X1f3D)then return K[0x2](p,i,j);else return K[0B1__][0X0016](j,i,p);end;end;end,ui=bit32.bxor,f=string.match,W=bit32,b=function(R,R,p)p=R[25058];return p;end,bi=bit32.bnot,S=[=[LPH+lG3Q&^B%s[!!'h7s8UtB^B/_*^B&Mm!GY10z!!!!3zJ<@r=^BS^eG@tK/^B/D!^B&Qlz!&/[`8Ho.pz!"o83z5X<'c;Ki`Rz!(fFIOT5@]z^B%9J"E%dqFMA!$@:F%a^B%jXzz^B%*E"^bVIBm.5l@1iP?z+@*[B+MRqa&c_n3!!!!Z5ed=n^B$a;!^q7I#]t!&F_tT!Ek_ZGG=`&?z!!'b;@VKp?1;<loGJ=/E^B%IMz!!$t'&c_n3z5edMGDK'#oCD$UIz1dJeVFh[rZ^B&">!rr<$z&c_n3!!!#g5=l.]z!!'b;?XIYgAA8.4^B$p@!DO1,z!:W7g!Csm*@_W%TG].Uo$31&+z^B@nNAT>HcD;YE/$>aWhA92j5Bl7SA!P\_WAT5BgFEqh:De?`c6[-9GDSH3t&c_n3!!!!Q6,*G4^BSCiF(KB6^B$sA#@h[pDKK]@^BA"kFCi2gBm3,Oz!!!#6!_.CK!HGjTBtj^VG7jlU!,e<QfKm7QF2%`R^C*(N-"JMT><33#>tG(tz!!'b7Cqg6tDf^#@Bl7Ru!I)9Z:_Ea.^i_+Pk<Zi`<>#93z&4!u8@rHL-FE2]B!CFO+B4Z0sASu\+#'b)s@;Kbp!GfFN:VQp!^B/1p^B$e:z?mFu&^BSb$EbTE(^B%NQ!`sT\!EQr9<(R;pz!!'b8=a.U]Dnc<n^B$t?z!8qc\^BItO@:Wn?!<<*"z8P]<dz!5AS8GJ=/L&c_n3!!!#g6,*G%^B.kg^B\mL@7*e-BtjY_$tj-nD.RftFCAWpA\S7f^B%o\!IDK];830SGJ=/t^B@nNCig9iz!!kj)"Cl+REk_id?YOCgAU(rk8U%oP?XIV\^BS1dDI[*s^BAC^FD+7gQ=H`js8W,6#%;RoATDn-$X[7XATV@&@:F%a&c_n30Gsk06,*S1?Z9q-^BA"SDIa@[z!&-bQz!;MU?^B\gkFCo*%G/"5g?XmM\C_?^JTX^11i'@tUz!&-YNz!!&ZX^B\4dDerunDSH<dBl7Ir#&\R#@V'RO#69:(s8W-!^BALa@r&g`F(K0!@s#HhATDg0Ek_cb?Ysq%^B#Plz!;rHS^BJI_FCSuU`^Ukks8W-!^C"=TFDl5BEbTE(^O'+%F`JTuF^ZD(DK]`7Df0E'DKI"3De3u4DJsV>F*2G@DfTqBCi<`m+E)9CCi<`mF*)G:DJ(LCFD,6+AS,k$AKZ8:FWb+5AKZ,5@:F%a+EVNEF`V+:9QbAaE+gV?+=BiZ87,+f?WBp'5tk9I;^W])@:O=r0#%[!?Xn"l@psJo"^bVXF^bs`z!%'tG!FrkO?XI\^GA1r*AU(rkH$@"(0bOHdzn@u^@B6/3)&c_n3TS0)\6,*hLATVd#FCB9"@VfVjoG%]U+<VdL+<VdY/R)Ed$6UH6+<VdL+<VdL+<VdL+<VdL+<VdL+<W:%,q(Dr/1rP-/hSb/+<VdL+<W9h/hAP'0.8%k-9sgK$6UH6+<VdL+<VdL+<VdL+<VdL+<W'^+<VdX0.8%k,pjs(5X7R],q(/p0/"t,-n$;b,pOWZ-n$_u.P*,'+<VdL+=o0!-mgPR+<VdL+<VdL+<VdL+<VdL+<Vd[.Ng>i5X7S"5X7S",qL/]/gr&35X6YC-71&d5X7S"5X6Y@-n6c#/hSb//hSb+,sX^\-nZVb/0cbS+<VdL+<VdL+<VdL+<VdL+=]#e/g`hK5X7S"5Umm!-m^De+<W-^-71uC5X7R],q(5o/g)8Z+<VdL+<VdL+<W9f.OZMf-n7JI-7U,\.P(oL+<VdL+<VdL+<VdL+<VdO/0HT25X7S"5Umm+-7Buf-71Au/2&4o-71uC5UIm+5X7S"5X7S"5X7S",:Y5s/hSb//2&>85X7S"5X7R_+>+rI+<VdL+<VdL+<VdL+<VdO+<Vmo5X7S".PF%5+>+lb/h\V(/hAY*/2&Y+/1rJ,-n7JI5X7S"5X7S"5X6V\5X7S"5X7S",;(3+5X7S"5UJ*+,mkb;+<VdL+<VdL+<VdL0-DAa5X7S"5X7S"-m_,'+=\]b.OIDG5X6PI-9sg]5VFE0/hA;65X7S"5X6VK5X6YE/0H&d/1`D+/g)8d,sX^\,9SHC+<VdL+<VdL+<VdL,9S*]-9sg]5X7S"5X7S"/1;nm5X7S"5U.m(+<VdX-9sg@5X6YG+>,!+5X7S"-7gbo5X7S"0.&qL,q)#D5UIm4/1;hr+>58Q+<VdL+<VdL+=Jlc+<W't-71&c-9sg]-8-nm/3kF.5X7S"/0H&X+<VdL+<s-:0.\G8-6Os,5X7S"/0uMe5X7S"5U[`t+<VdV5X7S"5UJ$.,q^;m$6UH6+<VdL+>4i[,;1Sm5X7R],:G2u,="LZ0-DQ+5X6Y]5X6_M+<VdL/1*VI-nZu&.Nfi[5X6eA+<Vsq5X7S"5U@Nq+<VdL+=KK?-7C>r/hSFs/d`^D+<VdL+<Vd[0/#RU-7g8^-mh2E,:jr[+>5u5+=nuh5X7S",:5Z@,pO]a-m_,*.NgB05X7S"5UJ*+,="LZ,:5Z@5UId'5X7S"5X6YI0.8;80-^fH+<VdL+<VdQ,q^N0,9STc5X7RZ+>5uF5X6VB5X7R]0.n@i+=o/o-nd&$+<W9i-9sg]5X7S"5X7Rc.OHPr0-rkK,:Y$*5X6_B-n[,)/hA=o.R5Wo+<VdL+<VdL5UA$0-6Oof5X7R].NfiV+>5',5X7S"5X7S"5X7S"5X7R]5X6PI-m_,D5X7S"5X7S"-7g8^-pU$_5X7S"5X7S"5VFZR5X7S",;(;m$6UH6+<VdL+=8Ed,paZd-7U,\+<W=&5X6_M+<W3`5X7S"5UJ-40/"t3,:FZf-9sg]5X7S"5X7S"5X7S"-m0W`-9sg]5X7S"5UJ$)-pU$E.PF%80+&gE+<VdL+<W9_.O.2,+>5uF5X6_?.R66a5X7Rf+<VdL+=\[&5X7S"5X6YK/3kO)/0c\g/g`hK5X7S",9ST`.O?Dp/0dDF5X6eA+<W.!5UJ-6-7T?F+<VdL+<VdL/g`5(,="LZ5X7S"/0H&X.OIDG,q^_q5X6YE/0H&X+=noe5U@aB5X7S"5X7S"-nZu#+<W=&5X7S"5X7S"-7g8^+<VdL,sX^\5V=Yr+<VdL+<VdL5Umm/,sX^\5X7S"5U[`t+<VdL+>+cZ+=KK?5X7S"5X6_?+<VdL+<W9d-m^3*5X7S"5X7S"5X7R]-nHJ`/h\h,5U@Nq+>5uF,p4fn$6UH6+<VdL+<Vdl.Ng>j5X7S"5X6YK+<VdL+<VdL+<VdL+>,;o5X7Ra/g`hK5X7S"5UJ$)/1N,#/g)8Z+>,2p-mg>p,sX^?+=09&+<W4#5U@O(,75P9+<VdL+<VdL+<W!^+>5uF5X7S".NfiV+<VdL+<VdL+<VdL+<VdL+>+m(5X7S"5X7Ra/gWbJ5X7R_/3lHc5X7R]+=nfe/g)8Z+<VdZ-9rk"/0bKE+<VdL+<VdL+<VdL+>4ie5X7S"5U.Bo+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+=09"/hA4S+<VdL+<VdL+<VdL+<W'\+>,!+5X7Ra+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<Vmo-8$ho$6UH6+<VdL+<VdL+<VdL/g`1n/1*VI5V+$#+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdT5UJ*7,75P9+<VdL+<VdL+<VdL+<VdL,;()k,sX^F+>5uF0-DA[+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL00gj:/1:iJ+<VdL+<VdL+<VdL+<VdL+<VdZ0-DA^5UA$*,sWe./0c\g+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+>5uF/1rR_+<VdL+<VdL+<VdL+<VdL+<VdL+<W-^+<Vmo,q^;m+=KK?5X7R\0.\4g+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<W=&5V+N;$6UH6+<VdL+<VdL+<VdL+<VdL+<VdL+>5Aj+=09"/0HE-5X7S"5X7R_+=KK$0.n@i+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdO5X6kC-jh(>+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL,:Xfg-9sg@/g)Q-5X7R]/h0+O5X7S"5X6VJ+=]#s+<VdL+<VdL+<VdL+<VdL+<W-d/gVu"-9sgI+>4'E+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<Vdl.Ng>i5X7R\/0HJs+>,oE5X7S"5X7S"/1r565X7S",p4fe5X7Ra+<s,u/hSJ9.P*%l,sX^B/g)VN+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<Vd[+<W-\5X7S",qL/]+=\cd5X7S"-8$Dc5X7S"5Umm$5X7R\+=KK?.Ng8p+<Vd[5X7S".Ng,H+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+@%/(+>+m(5X7S"5UIm1/g)8Z+<VdL+<VdL+<VdL+<VdL+<VdZ/1N%o-9sg]5X6YK/gq&L+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL-7CJh+<W9i,sX^\5X7S"5X7S"5X7S"5X7S"5X7S"5X7S"5X7S"5X7R_/g)Pj$6UH6+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdX,;1N!+<VdL+<VdZ/hAP)/1`>'/1rP-/g)8Z+<VdL+<VdX0-^f2+<VdL+<VdL?!T$6$47mu+<VdL+<\E#/jI)VAp&!$FD5Z2&c_n3!$Vl-5nX.t!!%QAh*A^ZAoD^,@<<+^z!'```"`Rs[Ci$ijEaa05ATSObz!,t6=##'/[@;olmz!!#h\&c_n3!!!!V5edDBF^dosz!!!#6E$014FEMVA+EM+9An>k'-t[U>@ruF'DC@+i/h%o`ATW'8DBL6H-n[,).3N2>A1SjEATVd#FCB9"@VfU(HQZN:-$(89+?^i"/hS8p/0K9^?XIMbA7^!.4WnBKFCo*%Fsnak/hSS%+FP[f+MS&$H#R?0#%qd]FCT!8`WQ8A!!!!/!/KS:M[(p@#D378#7(,10F%j/#q)&HpD)B_@DW=Xq?LGd$==ucRK6dl"C]^d?Y:&Xl3ZJQ0F%iO"'/cAl31Ub$=@E[#PndZ#$,)D_?")&$X`K.0F%jR#%?Kn?Y:&XRKC>.->-t3<aTLO"Y^/d_?OGk#@H`s@EJpaB+tT>!r<0LB4mqD<aTJ_0F%jB"CZli?fD<!l3^nH#%<Z#?Y:&X_@*@H<aTKP'F3V(qZ8GV#JpTjB4i,`?Y>N)@CcJH_?FAr#@E#_0F%iO#%<r(?Y:&Xncc<$<aTKP'F1'-"#'rbnc;cuB4hn`g'=>S<aTM9#%>p^?Y:&X68L;##GME'?Y?AD@Bp)EiW<PG"(-oe@Bp&DB+tU9"7lUK#7&ra<aTKP/#31Nq>jW(B4hn`\dM@h#7"lU#Kd+*#$,)D;IPFf?Y:&XRKDIP->-u>"BJlBB+tT&!kJS:?YB?=0F%i?"]euCOp5@S#[b.J@B']B$=ULO?i'mY#7%gC@JU(5B+tT6!P/A6?Y>Z*0F%jZ!?PTT#6nN?Op+lnB4hn`g'G7n<aTJh@F>0`g&kcP$"&Pq@EJXYB+tT&%.XX(?Y?A?@B'ZA8n%Q(?Y:np#FYcr?Y?>=0F%i?"C\#3?d]*dU'P+='F0d-l3C?sB9E@*M@<kW#%=eE?`F9<nd/[/!b'4S?_RU1g'V0h0F%ig#[uEn?fD8u\d;`\$=UdW?eGH6#7$t(@Bp#CM?./V"(,[T#D*)q#?G2EB+tUI"d&m@#6tK(#?M.F?O(3X#FY^V!\aial2k!nB4hn`Z3>gc<aTM=!\aiaB+tTn#gs&\?YAX,@Hn5-Z2nC6#[b^Y@Ia\2B+tTV#4_mt?Y>r40F%g_!!!!#*>o1a_;YR?!\aia_ZDLs#7!Et5;*L2M?uLV5JdId"?/OI0F%i7#ua>A7qWo67g)%@#<iAW&SOB6)__L%#>6`H!XD@?WW<tk#7!1uWW>>a!E23I&MOFp-X*MN5<gAn#<-2i!^E[c;a3KL0F%h9#_EC$4tm3H-O?^QBfBS&!C$fQ#<sjIWW>$4!AF``#>608!Y8!1-SHqS(C*Slq>pmp5LKT80F%h11a`MUA?lFf-YFe;%o!9^.kh25#>GF6%o*?7#>GF>(JY2?L&it5#<++;(C*StiX5ua8$WLM1bT(E9a<UA.L-ap91N_%7Q1Q2@Q4,b2dQ_JklEIC#LNQ+#7&!K-&360"onW'!!!*$MrFgD+pS>`.guY!2?sHt$3pe:0F%j?(hp/VcO^'V!!!!)!2\ZW_Z;Fr#J1!j#6u%T-i*ll@OK"o04uX[038Z;00h0<0-d4m#7!mTq>ui]0F%gf4pN_W%O_)S-XnI?!Y7^I-Nc%-#9OF/q>qHC2u3S7@kTJ;0F%h99J?5D04HTO![h%s0..P3!\Z3:0.-ug#;6<P#9P$4&I2Gm#7"+>0*__T0<,%M0F%jG*#$X7rso)0!!!$$"os_D!s_=$(C+[s#:D/0ncg18-P%RX#DrO(<$rIm'd"M&4pN/10F%j'!uUb8^D6eL!!!'4N<'4`PMuZ`0F%gr0F%gj0F%j/%3tlcrsT-,#7h&S(C(1>#9O%%#6tc6#:Clo#6tc6#;6U!#;6<n#9OH`#6t5/!!!*E"`XkLT&Kh_4U22sC**[.2?sI/&dJXH9.0Q;#>GFV"#'rb#>7#P#sU<Q#6tVi#7!m\q>paQ#6tJN;^XdE+%HhN7mdY<#7$k7#e'le&k=ScM?*rG#=f"##6u&>#:Ba*-O0l(#7"Qo#:DD`#6t5/!!!@/"]\E>8L5rCSH0<&s5F.8!AF``dfD--#I=PH56pc^0F%gpBHII,9a=H!.8L0\0F%h19a<lf.6e'd"#'rb-VXhA#:WFR+YX-+0.I2;2_P]1"s7Cu-Nc%-#<+:HRKSNNBI=%#0F%h!9a;af.L-J;0+XKU#=]d?+&3%G+&)tfEA.V&#=f"0#>GF>+"@L+-SH"!"p[U6#Au4##=1$K#N#Y#pBB.V-VXhA#:WFRUB3+S#<tof:KK"N%pr!Xq>paQ#6umlBDMZWAHu!9$V(Fl9a=H=0F%h99a<mQ.L-J[9IKZ<1GB%=="4Fc?S;qY#%oGc#6uP&:EaBf#9to-#;6Qgq>r$$56j,A#=lK/0F%hc0F%h19a=H!.8L2t!AF``-VXhA#:WFR,;9?-[K1%p#:E4N56iW%#L3?(#6tWM7gG^h0F%i8!GFCsFta.+B1s,A!H1XrWW>mi#BtYI#8`-r.L.%#>B^<J9a>lp!\aia#<iB:Ijt[fLB/k07gE7B#>\&!GCM(I8"0N5#7"$u+0#?C9Ll)`?VEDY!M0<G#6tK<G6^o<#BtYI#>^*U.L0ks>B^<J9a>ll.L0mI!@e=U#?uBW:JD(<Ijt\)LB/k0?O'eZ#BqX&B@[);#7$"b.L.m;>B^<J9a>ll.L0UA!@e=MXoU3]#Ce3.+,9kH#<rGtG6^o<#C!$H0F%g_!!!!
   end,
})
