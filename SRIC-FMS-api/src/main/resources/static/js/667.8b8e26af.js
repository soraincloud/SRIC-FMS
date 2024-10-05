"use strict";(self["webpackChunkfront"]=self["webpackChunkfront"]||[]).push([[667],{6096:function(e,a,l){l.d(a,{Cb:function(){return n},d3:function(){return d},m4:function(){return i},sC:function(){return u},uz:function(){return r}});var t=l(9470);function r(e){return(0,t.J)("/library/getLibraryCategoryList",e)}function n(e){return(0,t.J)("/library/getLibraryList",e)}function u(e){return(0,t.J)("/library/getLibraryById",e)}function i(e){return(0,t.b)("/library/editLibraryData",e)}function d(e){return(0,t.b)("/library/addLibrary",e)}},8667:function(e,a,l){l.r(a),l.d(a,{default:function(){return C}});l(4114);var t=l(6768),r=l(4232),n=l(144),u=l(6096),i=l(1219),d=l(1387),o=l(8374);const s={class:"common-body-set-width"},c={class:"library-category-item-span"},b={class:"library-category-item-span"},g={class:"library-category-item-span"},v={class:"library-search-div"},y={class:"library-card-content"},k={class:"library-card-details"},p={class:"library-card-name-text"},m={class:"library-card-tags-div"},f={class:"library-card-tag-text"},_={class:"library-pagination-div"},F={class:"library-drawer-title"},h="0";var w=(0,t.pM)({__name:"LibraryManageIndex",setup(e){const{t:a}=o.A.global,l=(0,d.rd)(),w=(0,n.KR)("min-height:"+(window.innerHeight-200)+"px;"),L=(0,n.KR)(!1),C=(0,n.KR)("200px"),x=(0,n.KR)([]),K=(0,n.KR)("0"),R=(0,n.KR)(window.innerHeight-320+"px"),V=(0,n.KR)(),M=(0,n.KR)(1),z=(0,n.KR)(0),X=(0,n.KR)([]),E=(0,n.KR)(!1),I=(0,n.Kh)({title:"",category:""}),U=(0,n.KR)(),W=(0,n.Kh)({title:[{required:!0,message:a("rules.title"),trigger:"blur"}],category:[{required:!0,message:a("rules.category"),trigger:"blur"}]}),$=async()=>{const e=await(0,u.uz)({});x.value=e.data},H=async()=>{const e={searchInput:V.value,category:K.value,page:M.value},a=await(0,u.Cb)(e);console.log(a.data),z.value=a.data.total,X.value=a.data.libraryList};(0,t.sV)((()=>{$(),H()}));const q=e=>{K.value=e,H()},S=e=>{X.value[e].background="border-width: 5px;"},J=e=>{X.value[e].background=""},B=e=>{l.push({name:"LibraryManageReader",path:"/LibraryManageReader",query:{library:X.value[e].id}})},P=()=>{H()},T=()=>{E.value=!0},A=()=>{H()},D=async e=>{e&&await e.validate(((e,a)=>{e?N():console.log("error submit!",a)}))},N=async()=>{const e={title:I.title,category:I.category},t=await(0,u.d3)(e);200==t.data.code?((0,i.nk)({message:a("static.addSuccess"),type:"success"}),E.value=!1,l.push({name:"LibraryManageReader",path:"/LibraryManageReader",query:{library:t.data.id,add:"true"}})):400==t.data.code?(0,i.nk)({message:a("static.nameHasBeenUsed"),type:"warning"}):(0,i.nk)({message:a("static.paramsError"),type:"error"})},j=()=>{window.innerWidth>800&&(L.value?(L.value=!1,C.value="200px"):(L.value=!0,C.value="75px"))},G=()=>{w.value="min-height:"+(window.innerHeight-200)+"px;",window.innerWidth<800?(L.value=!0,C.value="75px"):(L.value=!1,C.value="200px"),O()},O=()=>{R.value=window.innerHeight-310+"px"};return G(),window.addEventListener("resize",G),(e,a)=>{const l=(0,t.g2)("Switch"),n=(0,t.g2)("el-icon"),u=(0,t.g2)("el-menu-item"),i=(0,t.g2)("Coin"),d=(0,t.g2)("Menu"),o=(0,t.g2)("el-menu"),K=(0,t.g2)("el-aside"),$=(0,t.g2)("search"),H=(0,t.g2)("el-button"),N=(0,t.g2)("el-input"),G=(0,t.g2)("el-col"),O=(0,t.g2)("Plus"),Q=(0,t.g2)("el-row"),Y=(0,t.g2)("el-tag"),Z=(0,t.g2)("el-card"),ee=(0,t.g2)("el-scrollbar"),ae=(0,t.g2)("el-pagination"),le=(0,t.g2)("el-main"),te=(0,t.g2)("el-container"),re=(0,t.g2)("el-form-item"),ne=(0,t.g2)("el-option"),ue=(0,t.g2)("el-select"),ie=(0,t.g2)("el-form"),de=(0,t.g2)("el-drawer");return(0,t.uX)(),(0,t.CE)("div",s,[(0,t.bF)(Z,null,{default:(0,t.k6)((()=>[(0,t.bF)(te,null,{default:(0,t.k6)((()=>[(0,t.bF)(K,{width:C.value},{default:(0,t.k6)((()=>[(0,t.bF)(o,{style:(0,r.Tr)(w.value),"default-active":h,ellipsis:!1,collapse:L.value,onSelect:q},{default:(0,t.k6)((()=>[(0,t.bF)(u,{onClick:j},{title:(0,t.k6)((()=>[(0,t.Lk)("span",c,(0,r.v_)(e.$t("common.collapse")),1)])),default:(0,t.k6)((()=>[(0,t.bF)(n,{size:25},{default:(0,t.k6)((()=>[(0,t.bF)(l)])),_:1})])),_:1}),(0,t.bF)(u,{index:"0"},{title:(0,t.k6)((()=>[(0,t.Lk)("span",b,(0,r.v_)(e.$t("common.all")),1)])),default:(0,t.k6)((()=>[(0,t.bF)(n,{size:25},{default:(0,t.k6)((()=>[(0,t.bF)(i)])),_:1})])),_:1}),((0,t.uX)(!0),(0,t.CE)(t.FK,null,(0,t.pI)(x.value,((e,a)=>((0,t.uX)(),(0,t.Wv)(u,{key:a,index:e.id.toString()},{title:(0,t.k6)((()=>[(0,t.Lk)("span",g,(0,r.v_)(e.name),1)])),default:(0,t.k6)((()=>[(0,t.bF)(n,{size:25},{default:(0,t.k6)((()=>[(0,t.bF)(d)])),_:1})])),_:2},1032,["index"])))),128))])),_:1},8,["style","collapse"])])),_:1},8,["width"]),(0,t.bF)(le,null,{default:(0,t.k6)((()=>[(0,t.Lk)("div",null,[(0,t.Lk)("div",v,[(0,t.bF)(Q,null,{default:(0,t.k6)((()=>[(0,t.bF)(G,{span:20},{default:(0,t.k6)((()=>[(0,t.bF)(N,{modelValue:V.value,"onUpdate:modelValue":a[0]||(a[0]=e=>V.value=e),placeholder:"search"},{append:(0,t.k6)((()=>[(0,t.bF)(H,{onClick:P},{default:(0,t.k6)((()=>[(0,t.bF)(n,null,{default:(0,t.k6)((()=>[(0,t.bF)($)])),_:1})])),_:1})])),_:1},8,["modelValue"])])),_:1}),(0,t.bF)(G,{span:4},{default:(0,t.k6)((()=>[(0,t.bF)(H,{onClick:T,class:"library-add-button",type:"danger"},{default:(0,t.k6)((()=>[(0,t.bF)(n,{size:"15"},{default:(0,t.k6)((()=>[(0,t.bF)(O)])),_:1})])),_:1})])),_:1})])),_:1})]),(0,t.bF)(ee,{height:R.value},{default:(0,t.k6)((()=>[((0,t.uX)(!0),(0,t.CE)(t.FK,null,(0,t.pI)(X.value,((e,a)=>((0,t.uX)(),(0,t.Wv)(Z,{key:a,onMouseover:e=>S(a),onMouseleave:e=>J(a),onClick:e=>B(a),style:(0,r.Tr)(e.background),class:"library-card"},{default:(0,t.k6)((()=>[(0,t.Lk)("div",y,[(0,t.Lk)("div",k,[(0,t.Lk)("span",p,(0,r.v_)(e.title),1),(0,t.Lk)("div",m,[(0,t.Lk)("span",null,(0,r.v_)(e.filename),1),(0,t.bF)(Y,{class:"library-card-tags",effect:"dark",type:"warning",size:"small"},{default:(0,t.k6)((()=>[(0,t.Lk)("span",f,(0,r.v_)(e.categoryName),1)])),_:2},1024)])])])])),_:2},1032,["onMouseover","onMouseleave","onClick","style"])))),128))])),_:1},8,["height"]),(0,t.Lk)("div",_,[(0,t.bF)(ae,{layout:"prev, pager, next","current-page":M.value,"onUpdate:currentPage":a[1]||(a[1]=e=>M.value=e),onCurrentChange:a[2]||(a[2]=e=>A()),"page-size":20,total:z.value,"pager-count":5,background:""},null,8,["current-page","total"])])])])),_:1})])),_:1})])),_:1}),(0,t.bF)(de,{modelValue:E.value,"onUpdate:modelValue":a[6]||(a[6]=e=>E.value=e)},{header:(0,t.k6)((()=>[(0,t.Lk)("span",F,(0,r.v_)(e.$t("static.addLibrary")),1)])),default:(0,t.k6)((()=>[(0,t.bF)(ie,{ref_key:"libraryFormRef",ref:U,model:I,rules:W},{default:(0,t.k6)((()=>[(0,t.bF)(re,{prop:"title"},{default:(0,t.k6)((()=>[(0,t.Lk)("h1",null,(0,r.v_)(e.$t("common.title")),1),(0,t.bF)(N,{modelValue:I.title,"onUpdate:modelValue":a[3]||(a[3]=e=>I.title=e),clearable:""},null,8,["modelValue"])])),_:1}),(0,t.bF)(re,{prop:"category"},{default:(0,t.k6)((()=>[(0,t.Lk)("h1",null,(0,r.v_)(e.$t("common.category")),1),(0,t.bF)(ue,{modelValue:I.category,"onUpdate:modelValue":a[4]||(a[4]=e=>I.category=e)},{default:(0,t.k6)((()=>[((0,t.uX)(!0),(0,t.CE)(t.FK,null,(0,t.pI)(x.value,((e,a)=>((0,t.uX)(),(0,t.Wv)(ne,{label:e.name,value:e.id},null,8,["label","value"])))),256))])),_:1},8,["modelValue"])])),_:1}),(0,t.bF)(re,null,{default:(0,t.k6)((()=>[(0,t.bF)(H,{onClick:a[5]||(a[5]=e=>D(U.value)),type:"success"},{default:(0,t.k6)((()=>[(0,t.bF)(n,{class:"library-add-button-icon",size:"15"},{default:(0,t.k6)((()=>[(0,t.bF)(O)])),_:1}),(0,t.eW)(" "+(0,r.v_)(e.$t("common.add")),1)])),_:1})])),_:1})])),_:1},8,["model","rules"])])),_:1},8,["modelValue"])])}}});const L=w;var C=L}}]);
//# sourceMappingURL=667.8b8e26af.js.map