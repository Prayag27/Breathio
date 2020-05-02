class SliderData{
  String imagePath,title,description;

  SliderData({this.imagePath,this.title,this.description});

  void setImageAssetPath(String getImagePath){
    imagePath=getImagePath;
  }
  void setTitle(String getTitle){
    title=getTitle;
  }
  void setDescription(String getDescription){
    description=getDescription;
  }

  String getImageAssetPath(){
    return imagePath;
  }
  String getTitle(){
    return title;
  }
  String getDescription(){
    return description;
  }

}
List<SliderData> getSlides(){

  List<SliderData> slides=new List<SliderData>();
  SliderData sliderData=new SliderData();

  sliderData.setImageAssetPath('assets/images/start1.jpg');
  sliderData.setTitle('Breathio');
  sliderData.setDescription('Welcome to Breathio .This app will help you to have better understanding of the air quality around you..');
  slides.add(sliderData);
  sliderData=new SliderData();

  

  sliderData.setImageAssetPath('assets/images/mapImg.jpg');
  sliderData.setTitle('Analyze');
  sliderData.setDescription('Breathio\'s dashboard will give real-time monitering of the AQI (Air Quality Index)');
  slides.add(sliderData);




  return slides;
  
}