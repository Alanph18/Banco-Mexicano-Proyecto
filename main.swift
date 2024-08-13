var aux: String = ""
var opcionIngresada: String = ""
var saldoTotal: Double = 0.0

func deposito(){

  print ("Ingrese la cantidad a depositar: ")
  aux = readLine()!
  opcionIngresada = aux


  let cantidadDepositada = Double(opcionIngresada) ?? 0.0
  saldoTotal = saldoTotal + cantidadDepositada
  if cantidadDepositada != 0.0 {
    print ("Abono exitoso por $ : \(cantidadDepositada)")
  } else {
    print(" Error al realizar  el deposito, ingresa una cantidad valida")
  }
  print ("\n")

}

 func retiro(){

   print("ingresa una cantidad a retirar: ")
   
   aux = readLine()!
   opcionIngresada = aux

   let cantidadRetirar = Double(opcionIngresada) ?? 0.0
   
   if cantidadRetirar > saldoTotal {
     print("No cuentas con saldo suficiente")
     print ("Deseas realizar otra operacion s/S n/N?")
     aux = readLine()!
     opcionIngresada = aux
     if opcionIngresada == "n" || opcionIngresada == "N" || opcionIngresada == "no" || opcionIngresada == "NO"{

       opcionIngresada = "4"
       print("Cerrando sesion de cuenta, vuelva pronto")
     }
     
   }
   else {
     saldoTotal = saldoTotal - cantidadRetirar
     print (" Retiro exitoso por $ \(cantidadRetirar)pesos")
   }
   
   
            }
// Función para imprimir el menú

while opcionIngresada != "4"{

  print ("**********BANCOPPEL**********")
  print("\n")
  print ("1. Deposito")
  print ("2. Retiro")
  print ("3. Saldo")
  print ("4. Salir")
  print ("\n")
  print ("\n")
  print ("Elija el numero de la opción: ")

  aux = readLine()!
  opcionIngresada = aux

  switch opcionIngresada {

    case "1":
    deposito()
    print ("Desea realizar otro deposito? (S/N)")

    aux = readLine()!
    opcionIngresada  = aux

    // Operador logico or || se utiliza para indicar que si se cumple una condicion u otra

    if opcionIngresada == "S" || opcionIngresada == "s" ||  opcionIngresada == "si" || opcionIngresada == "SI" {
      deposito()
    } else if  opcionIngresada == "N" || opcionIngresada == "n" || opcionIngresada == "No" || opcionIngresada == "NO" {

      print (" Desea realizar otra operación? (S/N)")
      aux = readLine()!
      opcionIngresada = aux

      if opcionIngresada == "N" || opcionIngresada == "n" || opcionIngresada == "No" || opcionIngresada == "NO" {
      print(" Cerrando sesion, vuelva pronto")
      opcionIngresada = "4"

      }

    }
    
    case "2":
    retiro()
    print("Desea realizar otro retiro? (S/N)")
    aux = readLine()!
    opcionIngresada = aux

    if opcionIngresada == "n" || opcionIngresada == "N" {

      opcionIngresada = "4"
    }
    else {
      retiro()
    }

    case "3":
    print("Tu saldo es \(saldoTotal) pesos")
    
    case "4":
    print(" Cerrando sesion, vuelva pronto.....")
    opcionIngresada = "4"

    default:
    print ("Error opcion no valida")
    print("\n")
    print("\n")
  }

}