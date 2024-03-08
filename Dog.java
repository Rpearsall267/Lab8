// Lab 8 DogCreator

class Dog{

   String name;
   String breed;
   String age;
   String furColor;
   boolean serviceDog;
   
   Dog(){
      name = "";
      breed = "";
      age = "";
      furColor = "";
      serviceDog = false;
   }
   Dog(String name, String breed, String age, String furColor, boolean serviceDog){
      this.name = name;
      this.breed = breed;
      this.age = age;
      this.furColor = furColor;
      this.serviceDog = serviceDog;
    }
   //Getter methods
   public String getName(){return this.name;}
   public String getBreed(){return this.breed;}
   public String getAge(){return this.age;}
   public String getFurColor(){return this.furColor;}
   public boolean getServiceDog(){return this.serviceDog;}
  //Setter methods
   public void setName(String newName){ this.name = newName;}
   public void setBreed(String newBreed){ this.breed = newBreed;}
   public void setAge(String newAge){ this.age = newAge;}
   public void setFurColor(String newFurColor){ this.furColor = newFurColor;}
   public void setServiceDog(boolean newSD){ this.serviceDog = newSD;} 
   
   //ToString Method
   public String toString(){
      String attributes = String.format("Name: %s\nBreed: %s \nAge: %s \nFurColor: %s\nServiceDog?: %b",
                                 name, breed, age, furColor, serviceDog);
      return attributes;
   }
   public String bark(){
      String bark = "Woof Woof";
      return bark;
   }
}

class DogCreator{
   public static void main(String[] args){
      Dog dogOne = new Dog();
      dogOne.name = "Gus";
      dogOne.breed = "Pug";
      dogOne.age = "8";
      dogOne.furColor = "Black";
      dogOne.serviceDog = false;
   
      Dog dogTwo = new Dog("Fred", "Lab", "3", "Yellow", true);
    
      Dog dogThree = new Dog();
         dogThree.setName("Buddy");
         dogThree.setBreed("Dachshund");
         dogThree.setAge("14");
         dogThree.setFurColor("Brown");
         dogThree.setServiceDog(false);
      
      System.out.println(dogOne.toString());
      System.out.println(dogOne.bark());
      System.out.println();
      System.out.println(dogTwo.toString());
      System.out.println(dogTwo.bark());
      System.out.println();
      System.out.println(dogThree.toString());
      System.out.println(dogThree.bark());
 }

}
