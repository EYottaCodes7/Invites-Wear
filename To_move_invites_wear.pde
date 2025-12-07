import static javax.swing.JOptionPane.*;

//the diameter of a typical tyre is 66cm and is rated to last for Total distance(D) = 3000kms
float TireDiameter = 0.66;
float TireRadius = TireDiameter/2;
int D = 3000;
float AdjustedDis;
float Road = 1;
float Gravel = 1.2;
float Wet = 1.3;
float Mountain = 1.5;
float Urban = 1.4;

String TireRotation = showInputDialog ("Enter the number of tire rotation");
String Terrian = showInputDialog ("Where you suppose you mostly ride: \n"+ "Typical Road - Enter R \n" + "Gravel - G \n" + "Wet - W \n" + "Urban - U \n" + "Mountain - M \n");

void setup () {
float Tirerotation = int (TireRotation);
float Distance = Tirerotation*TWO_PI*TireRadius;
println ("The total distance travelled in kms: " + Distance);

float remainingDis = D - Distance;
println ("your ideal remaining distance before the tire needss to be replaced is: " + remainingDis);
if (remainingDis <= 0){
println ("        *!Gee, your tire is already worn out you really need to replace your tire!*");
}
Tirerotation = remainingDis / (TWO_PI * TireRadius);
println ("your ideal remianing rotation: " + Tirerotation);
println ("        -------------");

if (Terrian.equals("R") || Terrian.equals("r")) {
  AdjustedDis = Road*Distance;
}
else if (Terrian.equals("G") || Terrian.equals("g")) {
  AdjustedDis = Gravel*Distance;
}
else if (Terrian.equals("W") || Terrian.equals("w")) {
  AdjustedDis = Wet*Distance;
}
else if (Terrian.equals("U") || Terrian.equals("u")) {
  AdjustedDis = Urban*Distance;
}
else if (Terrian.equals("M") || Terrian.equals("m")) {
  AdjustedDis = Mountain*Distance;
}
println ("you have travelled an Adjusted of distance: " + AdjustedDis + " Kms");
remainingDis = D - AdjustedDis;
println ("your Adjusted remaining distance: " + remainingDis);
if (remainingDis <= 0) {
println ("       *!Gee, your tire is already worn out you really need to replace your tire!*");
}
Tirerotation = remainingDis / (TWO_PI * TireRadius);
println ("your Adjusted remaining Tire Rotation: " + Tirerotation);
}
