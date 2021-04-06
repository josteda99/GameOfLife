
var tablero = Array(repeating: Array(repeating: "o", count: 10), count: 10)

var temp = Array(repeating: Array(repeating: 0, count: 100), count: 3)

print("Porfavor introduzca el numero del automata deseado:")
print("1. block")
print("2. bee-hive")
print("3. loaf")
print("4. boat")
print("5. tub")
print("6. blinker")
print("7. beacon")

var opc = readLine()!

if opc == "1"{
  tablero[3][3] = "x"
  tablero[3][4] = "x"
  tablero[4][3] = "x"
  tablero[4][4] = "x"
}else if opc == "2"{
  tablero[4][4] = "x"
  tablero[4][5] = "x"
  tablero[5][3] = "x"
  tablero[5][6] = "x"
  tablero[6][4] = "x"
  tablero[6][5] = "x"
}else if opc == "6"{
  tablero[5][5] = "x"
  tablero[4][5] = "x"
  tablero[6][5] = "x"
}else if opc == "3"{
  tablero[2][3] = "x"
  tablero[2][4] = "x"
  tablero[3][5] = "x"
  tablero[4][5] = "x"
  tablero[3][2] = "x"
  tablero[4][3] = "x"
  tablero[5][4] = "x"
}else if opc == "4"{
  tablero[3][3] = "x"
  tablero[3][4] = "x"
  tablero[4][3] = "x"
  tablero[5][4] = "x"
  tablero[4][5] = "x"
}else if opc == "5"{
  tablero[4][3] = "x"
  tablero[3][4] = "x"
  tablero[5][4] = "x"
  tablero[4][5] = "x"
}else if opc == "7"{
  tablero[2][2] = "x"
  tablero[2][3] = "x"
  tablero[3][2] = "x"
  tablero[5][4] = "x"
  tablero[4][5] = "x"
  tablero[5][5] = "x"
}

var l = 0;
var cont = 0;


print("Tablero original")
for x in 0...tablero.count-1 {
    for y in 0...tablero.count-1 {
      print(tablero[x][y], terminator: "   ")
    }
    print("\n")
}
print("\n")
print("\n")

for i in 0...10{
  print("ciclo n: ", i)

//refrescar el tablero
  for m in 0...cont {
    // print("temp:")
    // print(temp)
    if temp[2][m] == 0{
      tablero[temp[0][m]][temp[1][m]] = "o"
    }else{
      tablero[temp[0][m]][temp[1][m]] = "x"
    }
    temp[0][m] = 0
    temp[1][m] = 0
    temp[2][m] = 0
    cont = 0
    l = 0
  }

//hacer comprobaciones y guardar coordenadas
  for x in 0...tablero.count-1 {
    for y in 0...tablero.count-1 {
      var numero_vecinos = 0

      if x > 0 && y > 0{
        if(tablero[(x-1)%9][(y-1)%9]=="x"){
        numero_vecinos = numero_vecinos + 1
      } 
      if(tablero[(x)%9][(y-1)%9]=="x"){
        numero_vecinos = numero_vecinos + 1
      } 
      if(tablero[(x+1)%9][(y-1)%9]=="x"){
        numero_vecinos = numero_vecinos + 1
      } 
      if(tablero[(x-1)%9][(y)%9]=="x"){
        numero_vecinos = numero_vecinos + 1
      } 
      if(tablero[(x+1)%9][(y)%9]=="x"){
        numero_vecinos = numero_vecinos + 1
      } 
      if(tablero[(x-1)%9][(y+1)%9]=="x"){
        numero_vecinos = numero_vecinos + 1
      } 
      if(tablero[(x)%9][(y+1)%9]=="x"){
        numero_vecinos = numero_vecinos + 1
      } 
      if(tablero[(x+1)%9][(y+1)%9]=="x"){
        numero_vecinos = numero_vecinos + 1
      } 



      //regla 1
      if numero_vecinos == 3 && tablero[x][y] == "o"{
        temp[0][l] = x
        temp[1][l] = y
        temp[2][l] = 1
        cont+=1
        l+=1
      }else if tablero[x][y] == "x" && (numero_vecinos < 2 || numero_vecinos > 3){
        temp[0][l] = x
        temp[1][l] = y
        temp[2][l] = 0
        cont+=1
        l+=1
      }



      }
      print(tablero[x][y], terminator: "   ")
    }
    print("\n")
  }

  print("\n")
  print("\n")
}




