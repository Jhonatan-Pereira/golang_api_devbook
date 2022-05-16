package respostas

import (
	"encoding/json"
	"log"
	"net/http"
)

// JSON retorna uma resposta em JSON para requisição
func JSON(w http.ResponseWriter, statuCode int, dados interface{}) {
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(statuCode)

	if dados != nil {
		if erro := json.NewEncoder(w).Encode(dados); erro != nil {
			log.Fatal(erro)
		}
	}

}

// Erro retornar um erro em formato JSON
func Erro(w http.ResponseWriter, statuCode int, erro error) {
	JSON(w, statuCode, struct {
		Erro string `json:"erro"`
	}{
		Erro: erro.Error(),
	})
}
