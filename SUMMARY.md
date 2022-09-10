# Table of contents

* [☄ Welcome to It's Absolutely Safe's wiki!](README.md)
  * [tutorials](home/tutorials/README.md)
    * [TODO](home/tutorials/tutorials\_server\_workshop.md)
  * [global](home/global/README.md)
    * [Input enum](home/global/enums\_input.md)
  * [mod](home/mod/README.md)
    * [MOD:init](home/mod/mod\_init.md)
    * [MOD:onLoad](home/mod/mod\_onload.md)
    * [MOD:onPlayerJoin](home/mod/mod\_onplayerjoin.md)
    * [MOD:onStateEnter](home/mod/mod\_onstateenter.md)
    * [MOD:onStateLeave](home/mod/mod\_onstateleave.md)
    * [MOD:shutdown](home/mod/mod\_shutdown.md)
    * [MOD:update](home/mod/mod\_update.md)
  * [world](home/world/README.md)
    * [world:create](home/world/world\_create.md)
    * [world:find](home/world/world\_find.md)
    * [world:findByClass](home/world/world\_findbyclass.md)
    * [world:getPlayers](home/world/world\_getplayers.md)
  * [entity](home/entity/README.md)
    * [entity\_base](home/entity/entity\_base.md)
    * [Entity:ID](home/entity/entity\_id.md)
    * [Entity:addItem](home/entity/entity\_additem.md)
    * [Entity:addViewer](home/entity/entity\_addviewer.md)
    * [Entity:findItemSlots](home/entity/entity\_finditemslots.md)
    * [Entity:getAvailableSlot](home/entity/entity\_getavailableslot.md)
    * [Entity:getItem](home/entity/entity\_getitem.md)
    * [Entity:getItemCount](home/entity/entity\_getitemcount.md)
    * [Entity:getPos](home/entity/entity\_getpos.md)
    * [Entity:getStorageItems](home/entity/entity\_getstorageitems.md)
    * [Entity:getVelocity](home/entity/entity\_getvelocity.md)
    * [Entity:hasItem](home/entity/entity\_hasitem.md)
    * [Entity:hasViewer](home/entity/entity\_hasviewer.md)
    * [Entity:isStorage](home/entity/entity\_isstorage.md)
    * [Entity:isValid](home/entity/entity\_isvalid.md)
    * [Entity:moveItem](home/entity/entity\_moveitem.md)
    * [Entity:removeItem](home/entity/entity\_removeitem.md)
    * [Entity:removeItemById](home/entity/entity\_removeitembyamount.md)
    * [Entity:removeViewer](home/entity/entity\_removeviewer.md)
    * [Entity:setPos](home/entity/entity\_setpos.md)
    * [Entity:setStorage](home/entity/entity\_setstorage.md)
    * [Entity:setVelocity](home/entity/entity\_setvelocity.md)
  * [scripted\_ent](home/scripted\_ent/README.md)
    * [ENT:acceptItem](home/scripted\_ent/scripted\_ent\_acceptitem.md)
    * [ENT:init](home/scripted\_ent/scripted\_ent\_init.md)
    * [ENT:onCreateWrite](home/scripted\_ent/scripted\_ent\_oncreatewrite.md)
    * [ENT:onDestroy](home/scripted\_ent/scripted\_ent\_ondestroy.md)
    * [ENT:onMessage](home/scripted\_ent/scripted\_ent\_onmessage.md)
    * [ENT:onTouchEnd](home/scripted\_ent/scripted\_ent\_ontouchend.md)
    * [ENT:onTouchStart](home/scripted\_ent/scripted\_ent\_ontouchstart.md)
    * [ENT:onUse](home/scripted\_ent/scripted\_ent\_onuse.md)
    * [ENT:onWireIOConnected](home/scripted\_ent/scripted\_ent\_onwireioconnected.md)
    * [ENT:onWireIODisconnected](home/scripted\_ent/scripted\_ent\_onwireiodisconnected.md)
    * [ENT:onWireIOEmit](home/scripted\_ent/scripted\_ent\_onwireioemit.md)
    * [ENT:update](home/scripted\_ent/scripted\_ent\_update.md)
    * [ENT:onStorageUpdate](home/scripted\_ent/scripted\_ent\_onstorageupdate.md)
  * [scripted\_item](home/scripted\_item/README.md)
    * [ITEM:init](home/scripted\_item/scripted\_item\_init.md)
  * [player](home/player/README.md)
    * [Player:moveItem](home/player/player\_moveitem.md)
    * [Player:name](home/player/player\_name.md)
  * [console](home/console/README.md)
    * [console:clear](home/console/console\_clear.md)
    * [console:convar](home/console/console\_convar.md)
    * [console:execute](home/console/console\_execute.md)
    * [console:get](home/console/console\_get.md)
    * [console:print](home/console/console\_print.md)
    * [console:register](home/console/console\_register.md)
    * [Console Enums](home/console/console\_enums.md)
  * [hooks](home/hooks/README.md)
    * [hooks:add](home/hooks/hooks\_add.md)
    * [hooks:call](home/hooks/hooks\_call.md)
    * [hooks:remove](home/hooks/hooks\_remove.md)
  * [http](home/http/README.md)
    * [http:fetch](home/http/http\_fetch.md)
  * [io](home/io/README.md)
    * [io:load](home/io/io\_load.md)
    * [io:save](home/io/io\_save.md)
  * [json](home/json/README.md)
    * [json.decode](home/json/json\_decode.md)
    * [json.encode](home/json/json\_encode.md)
  * [net](home/net/README.md)
    * [net:broadcast](home/net/net\_broadcast.md)
    * [net:listen](home/net/net\_listen.md)
    * [net:remove](home/net/net\_remove.md)
    * [net:send](home/net/net\_send.md)
    * [net:sendToServer](home/net/net\_sendtoserver.md)
  * [packet](home/packet/README.md)
    * [Packet:clear](home/packet/packet\_clear.md)
    * [Packet:empty](home/packet/packet\_empty.md)
    * [Packet:read](home/packet/packet\_read.md)
    * [Packet:write](home/packet/packet\_write.md)
    * [Packet:seek](home/packet/packet\_seek.md)
    * [Packet:size](home/packet/packet\_size.md)
    * [Packet:tell](home/packet/packet\_tell.md)
  * [resources](home/resources/README.md)
    * [resources:addModel](home/resources/resources\_addmodel.md)
    * [resources:addSound](home/resources/resources\_addsound.md)
    * [resources:getModel](home/resources/resources\_getmodel.md)
    * [resources:getSound](home/resources/resources\_getsound.md)
  * [settings](home/settings/README.md)
    * [settings:getSettings](home/settings/settings\_getsettings.md)
  * [timer](home/timer/README.md)
    * [timer:create](home/timer/timer\_create.md)
    * [timer:destroy](home/timer/timer\_destroy.md)
    * [timer:exists](home/timer/timer\_exists.md)
    * [timer:get](home/timer/timer\_get.md)
    * [timerObj](home/timer/timerobj/README.md)
      * [timerObj:destroy](home/timer/timerobj/timer\_timerobj\_destroy.md)
      * [timerObj:getRemainingTicks](home/timer/timerobj/timer\_timerobj\_getremainingticks.md)
      * [timerObj:getId](home/timer/timerobj/timer\_timerobj\_getid.md)
  * [ui](home/ui/README.md)
    * [ui:create](home/ui/ui\_create.md)
    * [UIBase](home/ui/ui\_uibase/README.md)
      * [UIBase:getPos](home/ui/ui\_uibase/ui\_uibase\_getpos.md)
      * [UIBase:getSize](home/ui/ui\_uibase/ui\_uibase\_getsize.md)
      * [UIBase:isValid](home/ui/ui\_uibase/ui\_uibase\_isvalid.md)
      * [UIBase:remove](home/ui/ui\_uibase/ui\_uibase\_remove.md)
      * [UIBase:setPos](home/ui/ui\_uibase/ui\_uibase\_setpos.md)
      * [UIBase:setSize](home/ui/ui\_uibase/ui\_uibase\_setsize.md)
    * [UIButton](home/ui/ui\_button/README.md)
      * [UIButton:getBackgroundColor](home/ui/ui\_button/ui\_button\_getbackgroundcolor.md)
      * [UIButton:getBorderColor](home/ui/ui\_button/ui\_button\_getbordercolor.md)
      * [UIButton:getHoverColor](home/ui/ui\_button/ui\_button\_gethovercolor.md)
      * [UIButton:getText](home/ui/ui\_button/ui\_button\_gettext.md)
      * [UIButton:getTextureColor](home/ui/ui\_button/ui\_button\_gettexturecolor.md)
      * [UIButton:isEnabled](home/ui/ui\_button/ui\_button\_isenabled.md)
      * [UIButton:onClick](home/ui/ui\_button/ui\_button\_onclick.md)
      * [UIButton:setBackgroundColor](home/ui/ui\_button/ui\_button\_setbackgroundcolor.md)
      * [UIButton:setBorderColor](home/ui/ui\_button/ui\_button\_setbordercolor.md)
      * [UIButton:setEnabled](home/ui/ui\_button/ui\_button\_setenabled.md)
      * [UIButton:setHoverColor](home/ui/ui\_button/ui\_button\_sethovercolor.md)
      * [UIButton:setText](home/ui/ui\_button/ui\_button\_settext.md)
      * [UIButton:setTexture](home/ui/ui\_button/ui\_button\_settexture.md)
      * [UIButton:setTextureColor](home/ui/ui\_button/ui\_button\_settexturecolor.md)
      * [UIButton:setTextureSize](home/ui/ui\_button/ui\_button\_settexturesize.md)
    * [UIFrame](home/ui/ui\_frame/README.md)
      * [UIFrame:getTitle](home/ui/ui\_frame/ui\_frame\_gettitle.md)
      * [UIFrame:getTitleColor](home/ui/ui\_frame/ui\_frame\_gettitlecolor.md)
      * [UIFrame:isClosable](home/ui/ui\_frame/ui\_frame\_isclosable.md)
      * [UIFrame:isDraggable](home/ui/ui\_frame/ui\_frame\_isdraggable.md)
      * [UIFrame:onClose](home/ui/ui\_frame/ui\_frame\_onclose.md)
      * [UIFrame:setClosable](home/ui/ui\_frame/ui\_frame\_setclosable.md)
      * [UIFrame:setDraggable](home/ui/ui\_frame/ui\_frame\_setdraggable.md)
      * [UIFrame:setTitle](home/ui/ui\_frame/ui\_frame\_settitle.md)
      * [UIFrame:setTitleColor](home/ui/ui\_frame/ui\_frame\_settitlecolor.md)
    * [UIGroup](home/ui/ui\_group.md)
    * [UIInput](home/ui/ui\_input/README.md)
      * [UIInput:clear](home/ui/ui\_input/ui\_input\_clear.md)
      * [UIInput:getBackgroundColor](home/ui/ui\_input/ui\_input\_getbackgroundcolor.md)
      * [UIInput:getBorderColor](home/ui/ui\_input/ui\_input\_getbordercolor.md)
      * [UIInput:getColor](home/ui/ui\_input/ui\_input\_getcolor.md)
      * [UIInput:getLimit](home/ui/ui\_input/ui\_input\_getlimit.md)
      * [UIInput:getPadding](home/ui/ui\_input/ui\_input\_getpadding.md)
      * [UIInput:getText](home/ui/ui\_input/ui\_input\_gettext.md)
      * [UIInput:onEnter](home/ui/ui\_input/ui\_input\_onenter.md)
      * [UIInput:onTextUpdate](home/ui/ui\_input/ui\_input\_ontextupdate.md)
      * [UIInput:setBackgroundColor](home/ui/ui\_input/ui\_input\_setbackgroundcolor.md)
      * [UIInput:setBorderColor](home/ui/ui\_input/ui\_input\_setbordercolor.md)
      * [UIInput:setColor](home/ui/ui\_input/ui\_input\_setcolor.md)
      * [UIInput:setFont](home/ui/ui\_input/ui\_input\_setfont.md)
      * [UIInput:setLimit](home/ui/ui\_input/ui\_input\_setlimit.md)
      * [UIInput:setPadding](home/ui/ui\_input/ui\_input\_setpadding.md)
      * [UIInput:setText](home/ui/ui\_input/ui\_input\_settext.md)
    * [UIInventorySlot](home/ui/ui\_inventory\_slot/README.md)
      * [UIInventorySlot:getData](home/ui/ui\_inventory\_slot/ui\_inventory\_slot\_getdata.md)
      * [UIInventorySlot:getSlot](home/ui/ui\_inventory\_slot/ui\_inventory\_slot\_getslot.md)
      * [UIInventorySlot:isDisabled](home/ui/ui\_inventory\_slot/ui\_inventory\_slot\_isdisabled.md)
      * [UIInventorySlot:onItemDrop](home/ui/ui\_inventory\_slot/ui\_inventory\_slot\_onitemdrop.md)
      * [UIInventorySlot:setData](home/ui/ui\_inventory\_slot/ui\_inventory\_slot\_setdata.md)
      * [UIInventorySlot:setDisabled](home/ui/ui\_inventory\_slot/ui\_inventory\_slot\_setdisabled.md)
      * [UIInventorySlot:setSlot](home/ui/ui\_inventory\_slot/ui\_inventory\_slot\_setslot.md)
    * [UILabel](home/ui/ui\_label/README.md)
      * [UILabel:addCharacter](home/ui/ui\_label/ui\_label\_addcharacter.md)
      * [UILabel:getColor](home/ui/ui\_label/ui\_label\_getcolor.md)
      * [UILabel:getShadowColor](home/ui/ui\_label/ui\_label\_getshadowcolor.md)
      * [UILabel:getShadowPos](home/ui/ui\_label/ui\_label\_getshadowpos.md)
      * [UILabel:getText](home/ui/ui\_label/ui\_label\_gettext.md)
      * [UILabel:setColor](home/ui/ui\_label/ui\_label\_setcolor.md)
      * [UILabel:setFont](home/ui/ui\_label/ui\_label\_setfont.md)
      * [UILabel:setShadowColor](home/ui/ui\_label/ui\_label\_setshadowcolor.md)
      * [UILabel:setShadowPos](home/ui/ui\_label/ui\_label\_setshadowpos.md)
      * [UILabel:setText](home/ui/ui\_label/ui\_label\_settext.md)
      * [UILabel:sizeToContents](home/ui/ui\_label/ui\_label\_sizetocontents.md)
    * [UIProgressBar](home/ui/ui\_progress\_bar/README.md)
      * [UIProgressBar:getBarColor](home/ui/ui\_progress\_bar/ui\_progress\_bar\_getbarcolor.md)
      * [UIProgressBar:getTitle](home/ui/ui\_progress\_bar/ui\_progress\_bar\_gettitle.md)
      * [UIProgressBar:getValue](home/ui/ui\_progress\_bar/ui\_progress\_bar\_getvalue.md)
      * [UIProgressBar:isPercentVisible](home/ui/ui\_progress\_bar/ui\_progress\_bar\_ispercentvisible.md)
      * [UIProgressBar:onValueChange](home/ui/ui\_progress\_bar/ui\_progress\_bar\_onvaluechange.md)
      * [UIProgressBar:setBarColor](home/ui/ui\_progress\_bar/ui\_progress\_bar\_setbarcolor.md)
      * [UIProgressBar:setTitle](home/ui/ui\_progress\_bar/ui\_progress\_bar\_settitle.md)
      * [UIProgressBar:setValue](home/ui/ui\_progress\_bar/ui\_progress\_bar\_setvalue.md)
      * [UIProgressBar:showPercent](home/ui/ui\_progress\_bar/ui\_progress\_bar\_showpercent.md)