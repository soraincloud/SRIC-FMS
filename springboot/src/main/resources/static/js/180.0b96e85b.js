"use strict";(self["webpackChunkfront"]=self["webpackChunkfront"]||[]).push([[180],{6096:function(e,a,l){l.d(a,{Cb:function(){return n},d3:function(){return d},m4:function(){return i},sC:function(){return u},uz:function(){return r}});var t=l(9470);function r(e){return(0,t.J)("/library/getLibraryCategoryList",e)}function n(e){return(0,t.J)("/library/getLibraryList",e)}function u(e){return(0,t.J)("/library/getLibraryById",e)}function i(e){return(0,t.b)("/library/editLibraryData",e)}function d(e){return(0,t.b)("/library/addLibrary",e)}},4180:function(e,a,l){l.r(a),l.d(a,{default:function(){return w}});l(4114);var t=l(6768),r=l(4232),n=l(144),u=l(6096),i=l(1219),d=l(1387),o=l(8374);const s={class:"common-body-set-width"},c={class:"library-category-item-span"},b={class:"library-category-item-span"},g={class:"library-search-div"},y={class:"library-card-content"},v={class:"library-card-details"},k={class:"library-card-name-text"},p={class:"library-card-tags-div"},m={class:"library-card-tag-text"},f={class:"library-pagination-div"},_={class:"library-drawer-title"},F="0";var h=(0,t.pM)({__name:"LibraryIndex",setup(e){const{t:a}=o.A.global,l=(0,d.rd)(),h=(0,n.KR)("min-height:"+(window.innerHeight-100)+"px;"),L=(0,n.KR)(!1),w=(0,n.KR)("200px"),C=(0,n.KR)([]),K=(0,n.KR)("0"),R=(0,n.KR)(window.innerHeight-225+"px"),x=(0,n.KR)(),V=(0,n.KR)(1),z=(0,n.KR)(0),X=(0,n.KR)([]),E=(0,n.KR)(!1),I=(0,n.Kh)({title:"",category:""}),M=(0,n.KR)(),U=(0,n.Kh)({title:[{required:!0,message:a("rules.title"),trigger:"blur"}],category:[{required:!0,message:a("rules.category"),trigger:"blur"}]}),H=async()=>{const e=await(0,u.uz)({});C.value=e.data},W=async()=>{const e={searchInput:x.value,category:K.value,page:V.value},a=await(0,u.Cb)(e);console.log(a.data),z.value=a.data.total,X.value=a.data.libraryList};(0,t.sV)((()=>{H(),W()}));const $=e=>{K.value=e,W()},q=e=>{X.value[e].background="border-width: 5px;"},J=e=>{X.value[e].background=""},S=e=>{l.push({name:"LibraryReader",path:"/LibraryReader",query:{library:X.value[e].id}})},B=()=>{W()},P=()=>{E.value=!0},T=()=>{W()},A=async e=>{e&&await e.validate(((e,a)=>{e?D():console.log("error submit!",a)}))},D=async()=>{const e={title:I.title,category:I.category},t=await(0,u.d3)(e);200==t.data.code?((0,i.nk)({message:a("static.addSuccess"),type:"success"}),E.value=!1,l.push({name:"LibraryReader",path:"/LibraryReader",query:{library:t.data.id,add:"true"}})):400==t.data.code?(0,i.nk)({message:a("static.nameHasBeenUsed"),type:"warning"}):(0,i.nk)({message:a("static.paramsError"),type:"error"})},N=()=>{h.value="min-height:"+(window.innerHeight-100)+"px;",window.innerWidth<800?(L.value=!0,w.value="75px"):(L.value=!1,w.value="200px"),j()},j=()=>{R.value=window.innerHeight-225+"px"};return N(),window.addEventListener("resize",N),(e,a)=>{const l=(0,t.g2)("Coin"),n=(0,t.g2)("el-icon"),u=(0,t.g2)("el-menu-item"),i=(0,t.g2)("Menu"),d=(0,t.g2)("el-menu"),o=(0,t.g2)("el-aside"),K=(0,t.g2)("search"),H=(0,t.g2)("el-button"),W=(0,t.g2)("el-input"),D=(0,t.g2)("el-col"),N=(0,t.g2)("Plus"),j=(0,t.g2)("el-row"),G=(0,t.g2)("el-tag"),O=(0,t.g2)("el-card"),Q=(0,t.g2)("el-scrollbar"),Y=(0,t.g2)("el-pagination"),Z=(0,t.g2)("el-main"),ee=(0,t.g2)("el-container"),ae=(0,t.g2)("el-form-item"),le=(0,t.g2)("el-option"),te=(0,t.g2)("el-select"),re=(0,t.g2)("el-form"),ne=(0,t.g2)("el-drawer");return(0,t.uX)(),(0,t.CE)("div",s,[(0,t.bF)(ee,null,{default:(0,t.k6)((()=>[(0,t.bF)(o,{width:w.value},{default:(0,t.k6)((()=>[(0,t.bF)(d,{style:(0,r.Tr)(h.value),"default-active":F,ellipsis:!1,collapse:L.value,onSelect:$},{default:(0,t.k6)((()=>[(0,t.bF)(u,{index:"0"},{title:(0,t.k6)((()=>[(0,t.Lk)("span",c,(0,r.v_)(e.$t("common.all")),1)])),default:(0,t.k6)((()=>[(0,t.bF)(n,{size:25},{default:(0,t.k6)((()=>[(0,t.bF)(l)])),_:1})])),_:1}),((0,t.uX)(!0),(0,t.CE)(t.FK,null,(0,t.pI)(C.value,((e,a)=>((0,t.uX)(),(0,t.Wv)(u,{key:a,index:e.id.toString()},{title:(0,t.k6)((()=>[(0,t.Lk)("span",b,(0,r.v_)(e.name),1)])),default:(0,t.k6)((()=>[(0,t.bF)(n,{size:25},{default:(0,t.k6)((()=>[(0,t.bF)(i)])),_:1})])),_:2},1032,["index"])))),128))])),_:1},8,["style","collapse"])])),_:1},8,["width"]),(0,t.bF)(Z,null,{default:(0,t.k6)((()=>[(0,t.Lk)("div",null,[(0,t.Lk)("div",g,[(0,t.bF)(j,null,{default:(0,t.k6)((()=>[(0,t.bF)(D,{span:20},{default:(0,t.k6)((()=>[(0,t.bF)(W,{modelValue:x.value,"onUpdate:modelValue":a[0]||(a[0]=e=>x.value=e),placeholder:"search"},{append:(0,t.k6)((()=>[(0,t.bF)(H,{onClick:B},{default:(0,t.k6)((()=>[(0,t.bF)(n,null,{default:(0,t.k6)((()=>[(0,t.bF)(K)])),_:1})])),_:1})])),_:1},8,["modelValue"])])),_:1}),(0,t.bF)(D,{span:4},{default:(0,t.k6)((()=>[(0,t.bF)(H,{onClick:P,class:"library-add-button",type:"danger"},{default:(0,t.k6)((()=>[(0,t.bF)(n,{size:"15"},{default:(0,t.k6)((()=>[(0,t.bF)(N)])),_:1})])),_:1})])),_:1})])),_:1})]),(0,t.bF)(Q,{height:R.value},{default:(0,t.k6)((()=>[((0,t.uX)(!0),(0,t.CE)(t.FK,null,(0,t.pI)(X.value,((e,a)=>((0,t.uX)(),(0,t.Wv)(O,{key:a,onMouseover:e=>q(a),onMouseleave:e=>J(a),onClick:e=>S(a),style:(0,r.Tr)(e.background),class:"library-card"},{default:(0,t.k6)((()=>[(0,t.Lk)("div",y,[(0,t.Lk)("div",v,[(0,t.Lk)("span",k,(0,r.v_)(e.title),1),(0,t.Lk)("div",p,[(0,t.Lk)("span",null,(0,r.v_)(e.filename),1),(0,t.bF)(G,{class:"library-card-tags",effect:"dark",type:"warning",size:"small"},{default:(0,t.k6)((()=>[(0,t.Lk)("span",m,(0,r.v_)(e.categoryName),1)])),_:2},1024)])])])])),_:2},1032,["onMouseover","onMouseleave","onClick","style"])))),128))])),_:1},8,["height"]),(0,t.Lk)("div",f,[(0,t.bF)(Y,{layout:"prev, pager, next","current-page":V.value,"onUpdate:currentPage":a[1]||(a[1]=e=>V.value=e),onCurrentChange:a[2]||(a[2]=e=>T()),"page-size":20,total:z.value,"pager-count":5,background:""},null,8,["current-page","total"])])])])),_:1})])),_:1}),(0,t.bF)(ne,{modelValue:E.value,"onUpdate:modelValue":a[6]||(a[6]=e=>E.value=e)},{header:(0,t.k6)((()=>[(0,t.Lk)("span",_,(0,r.v_)(e.$t("static.addLibrary")),1)])),default:(0,t.k6)((()=>[(0,t.bF)(re,{ref_key:"libraryFormRef",ref:M,model:I,rules:U},{default:(0,t.k6)((()=>[(0,t.bF)(ae,{prop:"title"},{default:(0,t.k6)((()=>[(0,t.Lk)("h1",null,(0,r.v_)(e.$t("common.title")),1),(0,t.bF)(W,{modelValue:I.title,"onUpdate:modelValue":a[3]||(a[3]=e=>I.title=e),clearable:""},null,8,["modelValue"])])),_:1}),(0,t.bF)(ae,{prop:"category"},{default:(0,t.k6)((()=>[(0,t.Lk)("h1",null,(0,r.v_)(e.$t("common.category")),1),(0,t.bF)(te,{modelValue:I.category,"onUpdate:modelValue":a[4]||(a[4]=e=>I.category=e)},{default:(0,t.k6)((()=>[((0,t.uX)(!0),(0,t.CE)(t.FK,null,(0,t.pI)(C.value,((e,a)=>((0,t.uX)(),(0,t.Wv)(le,{label:e.name,value:e.id},null,8,["label","value"])))),256))])),_:1},8,["modelValue"])])),_:1}),(0,t.bF)(ae,null,{default:(0,t.k6)((()=>[(0,t.bF)(H,{onClick:a[5]||(a[5]=e=>A(M.value)),type:"success"},{default:(0,t.k6)((()=>[(0,t.bF)(n,{class:"library-add-button-icon",size:"15"},{default:(0,t.k6)((()=>[(0,t.bF)(N)])),_:1}),(0,t.eW)(" "+(0,r.v_)(e.$t("common.add")),1)])),_:1})])),_:1})])),_:1},8,["model","rules"])])),_:1},8,["modelValue"])])}}});const L=h;var w=L}}]);
//# sourceMappingURL=180.0b96e85b.js.map