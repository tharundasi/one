
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop 2.0</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<style>
:root{
--bg:#07111F;
--bg2:#0F1E36;
--primary:#6C5CE7;
--secondary:#00E5FF;
--text:#fff;
--muted:#A8B3CF;
--glass:rgba(255,255,255,.08);
--glassBorder:rgba(255,255,255,.15);
}
*{margin:0;padding:0;box-sizing:border-box}
body{
font-family:Poppins,sans-serif;
background:linear-gradient(135deg,var(--bg),var(--bg2));
color:#fff;
overflow-x:hidden;
}
.aurora{
position:fixed;
inset:0;
overflow:hidden;
z-index:-2;
}
.aurora span{
position:absolute;
border-radius:50%;
filter:blur(90px);
animation:move 16s infinite alternate;
}
.aurora span:nth-child(1){
width:380px;height:380px;
background:#6C5CE7;
top:-80px;left:-80px;
}
.aurora span:nth-child(2){
width:300px;height:300px;
background:#00E5FF;
right:-60px;top:120px;
}
.aurora span:nth-child(3){
width:340px;height:340px;
background:#7B61FF;
bottom:-100px;left:35%;
}
@keyframes move{
from{transform:translate(0,0)}
to{transform:translate(60px,-40px) scale(1.2)}
}
.glass-nav{
margin:14px auto;
width:96%;
left:2%;
right:2%;
border-radius:18px;
background:rgba(10,18,35,.55);
backdrop-filter:blur(22px);
border:1px solid rgba(255,255,255,.08);
}
.navbar-brand{
font-weight:700;
font-size:26px;
color:#fff!important;
}
.navbar-brand i{color:var(--secondary)}
.nav-link{
color:#DCE7FF!important;
margin:0 8px;
}
.search-box{
display:flex;
align-items:center;
background:rgba(255,255,255,.08);
padding:10px 16px;
border-radius:40px;
gap:10px;
width:220px;
}
.search-box input{
background:none;
border:none;
outline:none;
color:#fff;
width:100%;
}
.icon-btn{
width:44px;
height:44px;
border:none;
border-radius:50%;
background:rgba(255,255,255,.08);
color:#fff;
position:relative;
}
.cart-btn span{
position:absolute;
top:-4px;
right:-4px;
background:#FF4D6D;
width:20px;
height:20px;
border-radius:50%;
display:flex;
align-items:center;
justify-content:center;
font-size:11px;
}
.hero{
padding:140px 0 80px;
}
.badge-new{
display:inline-block;
padding:10px 18px;
border-radius:30px;
background:rgba(0,229,255,.15);
color:#00E5FF;
}
.hero h1{
font-size:60px;
font-weight:800;
margin:20px 0;
}
.hero p{
color:var(--muted);
line-height:1.8;
}
.btn-shop{
background:linear-gradient(135deg,#6C5CE7,#8F7CFF);
border:none;
padding:14px 28px;
color:#fff;
border-radius:40px;
font-weight:600;
}
.hero-image{
position:relative;
text-align:center;
}
.hero-image img{
max-width:100%;
width:420px;
animation:floating 4s ease-in-out infinite;
filter:drop-shadow(0 30px 60px rgba(0,0,0,.45));
}
.glow-ring{
position:absolute;
width:420px;
height:420px;
border-radius:50%;
background:conic-gradient(#00E5FF,#6C5CE7,#00E5FF);
filter:blur(28px);
opacity:.4;
left:50%;
top:50%;
transform:translate(-50%,-50%);
animation:spin 12s linear infinite;
}
@keyframes spin{
to{transform:translate(-50%,-50%) rotate(360deg)}
}
@keyframes floating{
50%{transform:translateY(-18px)}
}
.hero-stats{
display:flex;
gap:35px;
margin-top:35px;
}
.hero-stats h3{
font-size:30px;
font-weight:700;
}
.section-title{
text-align:center;
margin-bottom:35px;
}
.section-title h2{
font-size:40px;
font-weight:700;
}
.section-title p{
color:var(--muted);
}
.category-scroll{
display:flex;
gap:12px;
overflow:auto;
padding-bottom:10px;
}
.category-scroll::-webkit-scrollbar{
display:none;
}
.chip{
border:none;
background:rgba(255,255,255,.08);
color:#fff;
padding:12px 22px;
border-radius:30px;
white-space:nowrap;
}
.chip.active,.chip:hover{
background:linear-gradient(135deg,#6C5CE7,#00E5FF);
}
.product-section{
padding:70px 0;
}
.product-card{
background:rgba(255,255,255,.06);
border:1px solid rgba(255,255,255,.08);
border-radius:22px;
overflow:hidden;
backdrop-filter:blur(16px);
transition:.35s;
}
.product-card:hover{
transform:translateY(-8px);
}
.product-image{
height:230px;
overflow:hidden;
position:relative;
}
.product-image img{
width:100%;
height:100%;
object-fit:cover;
transition:.5s;
}
.product-card:hover img{
transform:scale(1.08);
}
.product-badge{
position:absolute;
top:15px;
left:15px;
background:#FF4D6D;
padding:7px 12px;
border-radius:20px;
font-size:12px;
}
.quick-view{
position:absolute;
bottom:-45px;
left:50%;
transform:translateX(-50%);
background:#fff;
color:#111;
padding:8px 16px;
border-radius:30px;
font-weight:600;
transition:.3s;
}
.product-card:hover .quick-view{
bottom:16px;
}
.product-body{
padding:18px;
}
.product-category{
color:var(--muted);
font-size:13px;
}
.product-title{
font-size:18px;
font-weight:600;
margin:8px 0;
}
.price{
display:flex;
align-items:center;
gap:10px;
margin:12px 0;
}
.new-price{
font-size:22px;
font-weight:700;
}
.old-price{
text-decoration:line-through;
color:#9CA3AF;
}
.rating{
color:#FFD54F;
}
.add-cart{
width:100%;
padding:12px;
border:none;
border-radius:12px;
background:linear-gradient(135deg,#6C5CE7,#8B5CF6);
color:#fff;
font-weight:600;
}
.offer-bar{
position:fixed;
bottom:20px;
left:50%;
transform:translateX(-50%);
width:min(92%,880px);
padding:16px 22px;
border-radius:18px;
display:flex;
justify-content:space-between;
align-items:center;
background:rgba(255,255,255,.08);
backdrop-filter:blur(18px);
border:1px solid rgba(255,255,255,.1);
}
.btn-sm-shop{
background:linear-gradient(135deg,#00E5FF,#6C5CE7);
border:none;
padding:10px 20px;
border-radius:30px;
color:#fff;
}
@media(max-width:992px){
.hero{text-align:center}
.hero h1{font-size:46px}
.hero-stats{justify-content:center}
.search-box{display:none}
}
@media(max-width:768px){
.hero h1{font-size:36px}
.offer-bar{
flex-direction:column;
gap:10px;
}
}
</style>
</head>

<body>

<div class="aurora">
<span></span><span></span><span></span>
</div>

<nav class="navbar navbar-expand-lg fixed-top glass-nav">
<div class="container">
<a class="navbar-brand" href="#"><i class="fa-solid fa-bag-shopping"></i> NexusShop</a>

<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu">
<i class="fa-solid fa-bars text-white"></i>
</button>

<div class="collapse navbar-collapse" id="menu">
<ul class="navbar-nav mx-auto">
<li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
<li class="nav-item"><a class="nav-link" href="#">Categories</a></li>
<li class="nav-item"><a class="nav-link" href="#">Products</a></li>
<li class="nav-item"><a class="nav-link" href="#">Deals</a></li>
</ul>

<div class="d-flex align-items-center gap-2">
<div class="search-box">
<i class="fa fa-search"></i>
<input id="searchInput" placeholder="Search...">
</div>

<button class="icon-btn">
<i class="fa-regular fa-heart"></i>
</button>

<button class="icon-btn cart-btn">
<i class="fa-solid fa-cart-shopping"></i>
<span id="cartCount">0</span>
</button>
</div>
</div>
</div>
</nav>

<section class="hero">
<div class="container">
<div class="row align-items-center">

<div class="col-lg-6">
<span class="badge-new">2026 Collection</span>

<h1>Future of Online Shopping</h1>
<h1>I am Web Developer</h1>

<p>Discover premium gadgets, fashion, lifestyle and AI powered shopping experience with beautiful animations.</p>

<div class="d-flex gap-3 mt-4 flex-wrap">
<button class="btn-shop">Shop Now</button>
<button class="btn btn-outline-light rounded-pill px-4">Explore</button>
</div>

<div class="hero-stats">
<div><h3>15K+</h3><small>Products</small></div>
<div><h3>9.8</h3><small>Rating</small></div>
<div><h3>24H</h3><small>Delivery</small></div>
</div>
</div>

<div class="col-lg-6">
<div class="hero-image">
<div class="glow-ring"></div>
<img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=700">
</div>
</div>

</div>
</div>
</section>

<section class="container mb-5">
<div class="section-title">
<h2>Popular Categories</h2>
<p>Choose your favourite collection</p>
</div>

<div class="category-scroll">
<button class="chip active">All</button>
<button class="chip">Phones</button>
<button class="chip">Laptops</button>
<button class="chip">Shoes</button>
<button class="chip">Watch</button>
<button class="chip">Camera</button>
<button class="chip">Gaming</button>
</div>
</section>

<section class="product-section">
<div class="container">

<div class="d-flex justify-content-between align-items-center mb-4">
<h2>Trending Products</h2>
</div>

<div class="row g-4" id="productsGrid"></div>

</div>
</section>

<div class="offer-bar">
<div>🔥 Flash Sale Ends In <b id="countdown">24:00:00</b></div>
<button class="btn-sm-shop">Grab Deal</button>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

<script>
const products=[
{id:1,title:"iPhone 16 Pro",category:"Phones",price:1199,oldPrice:1399,rating:5,badge:"NEW",image:"https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=700"},
{id:2,title:"MacBook Air M3",category:"Laptops",price:1499,oldPrice:1699,rating:5,badge:"HOT",image:"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=700"},
{id:3,title:"Nike Air Max",category:"Shoes",price:189,oldPrice:250,rating:4,badge:"25%",image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=700"},
{id:4,title:"Apple Watch Ultra",category:"Watch",price:699,oldPrice:799,rating:5,badge:"NEW",image:"https://images.unsplash.com/photo-1434494878577-86c23bcb06b9?w=700"},
{id:5,title:"Sony Camera",category:"Camera",price:999,oldPrice:1199,rating:4,badge:"SALE",image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=700"},
{id:6,title:"Gaming Headset",category:"Gaming",price:149,oldPrice:199,rating:5,badge:"HOT",image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=700"}
];

let cart=0;
let activeCategory="All";

const grid=document.getElementById("productsGrid");
const search=document.getElementById("searchInput");
const cartCount=document.getElementById("cartCount");

function render(list){
grid.innerHTML="";
list.forEach(p=>{
grid.innerHTML+=`
<div class="col-lg-4 col-md-6">
<div class="product-card">
<div class="product-image">
<span class="product-badge">${p.badge}</span>
<img src="${p.image}">
<div class="quick-view">Quick View</div>
</div>
<div class="product-body">
<div class="product-category">${p.category}</div>
<div class="product-title">${p.title}</div>
<div class="rating">${"★".repeat(p.rating)}</div>
<div class="price">
<div class="new-price">$${p.price}</div>
<div class="old-price">$${p.oldPrice}</div>
</div>
<button class="add-cart" onclick="addCart(this)">Add to Cart</button>
</div>
</div>
</div>`;
});
}
render(products);

function addCart(btn){
cart++;
cartCount.innerText=cart;
btn.innerText="Added ✓";
btn.style.background="#00C853";
setTimeout(()=>{
btn.innerText="Add to Cart";
btn.style.background="";
},1200);
}

search.onkeyup=()=>{
const key=search.value.toLowerCase();
const filtered=products.filter(p=>{
const s=p.title.toLowerCase().includes(key)||p.category.toLowerCase().includes(key);
const c=activeCategory==="All"||p.category===activeCategory;
return s&&c;
});
render(filtered);
};

document.querySelectorAll(".chip").forEach(chip=>{
chip.onclick=()=>{
document.querySelectorAll(".chip").forEach(c=>c.classList.remove("active"));
chip.classList.add("active");
activeCategory=chip.innerText;
search.dispatchEvent(new Event("keyup"));
};
});

let sec=86400;
setInterval(()=>{
sec--;
let h=Math.floor(sec/3600);
let m=Math.floor(sec%3600/60);
let s=sec%60;
countdown.innerText=`${String(h).padStart(2,0)}:${String(m).padStart(2,0)}:${String(s).padStart(2,0)}`;
if(sec<=0)sec=86400;
},1000);

document.querySelector(".btn-shop").onclick=()=>{
document.querySelector(".product-section").scrollIntoView({behavior:"smooth"});
};

window.addEventListener("scroll",()=>{
const nav=document.querySelector(".glass-nav");
nav.style.background=window.scrollY>50?"rgba(7,17,31,.9)":"rgba(10,18,35,.55)";
});
</script>

</body>
</html>
