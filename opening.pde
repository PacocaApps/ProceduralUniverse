void Start(int diminish){
  background(0);


if(diminish < 300){
fill(0,255,255,diminish);
textSize(72);
text("Paçoca Apps Presents",width/2-width/5,height/2);
}else if(diminish > 300 && diminish < 600){
fill(0,255,255,diminish-300);
  textSize(72);
  text("STAR WHYBLES",width/2-width/7,height/2);

}else if(diminish > 600){
  page = 1;
}

}
