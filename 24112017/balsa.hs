travessia_veiculo :: String -> Double
travessia_veiculo ("carro") = 5.0
travessia_veiculo ("moto") = 2.0
travessia_veiculo ("van") = 15.0
travessia_veiculo ("onibus") = 50.0
travessia_veiculo ("bicicleta") = 0.0

travessia_pessoa :: Double -> Double
travessia_pessoa(x) = 1.5 * x

main::IO()
main = do
	  veiculo <- getLine
	  pessoas <- getLine
	  print (travessia_pessoa(read pessoas) + travessia_veiculo(veiculo))  


