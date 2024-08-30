import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.util.HashMap;
import java.util.Map;

public class DesafioApiAccenture {


    //VARIAVEIS PARA RELAIZAR TESTES
    private static String userId;
    private static String token;
    private static String userName;
    private static final String BASE_URL = "https://demoqa.com";

    @BeforeClass
    public void setup() {
        RestAssured.baseURI = BASE_URL;
    }


    //Criar um usuário (https://demoqa.com/Account/v1/User)
    @Test(priority = 1)
    public void Test_criar_usuario() {

        // Dados do novo usuário
        //Estou usando o currentTimeMillis para não ter usuário repetido
        userName = "testUser" + System.currentTimeMillis();
        Map<String, String> userData = new HashMap<>();
        userData.put("userName", userName);
        userData.put("password", "Test@1234");

        // Aqui envia a requisição para criar o usuário
        Response response = RestAssured.given()
                .contentType(ContentType.JSON)
                .body(userData)
                .post("/Account/v1/User");

        //Obter o status code
        int statusCode = response.getStatusCode();
        String responseBody = response.getBody().asString();

        System.out.println("Status Code: " + statusCode);
        System.out.println("Response Body: " + responseBody);

        Assert.assertEquals(statusCode, 201, "Status code should be 201 Created");

       //Pegar o id do usuario
        userId = response.jsonPath().getString("userID");
        System.out.println("User ID: " + userId);

    }


    //Gerar um token de acesso (https://demoqa.com/Account/v1/GenerateToken)
    @Test(priority = 2)
    public void Test_Gerar_Token() {


        Map<String, String> tokenData = new HashMap<>();
        tokenData.put("userName", userName); // Certifique-se de que este é o nome de usuário correto
        tokenData.put("password", "Test@1234"); // Senha corrigida

        // Envia a requisição para gerar o token
        Response response = RestAssured.given()
                .contentType(ContentType.JSON)
                .body(tokenData)
                .post("/Account/v1/GenerateToken");

        // Armazena o token para usar novamente
        token = response.jsonPath().getString("token");
        System.out.println("Token: " + token);

        // Valida a resposta
        Assert.assertEquals(response.getStatusCode(), 200, "Status code should be 200 OK");
        Assert.assertNotNull(token, "Token should not be null.");
    }


    //Confirmar se o usuário criado está autorizado (https://demoqa.com/Account/v1/Authorized)
    @Test(priority = 3)
    public void Test_verificar_autorizacao() {
        // Dados para verificação de autorização
        Map<String, String> authData = new HashMap<>();
        authData.put("userName", userName);
        authData.put("password", "Test@1234"); // Senha corrigida

        // Envia a requisição para verificar a autorização
        Response response = RestAssured.given()
                .contentType(ContentType.JSON)
                .body(authData)
                .post("/Account/v1/Authorized");

        // Obtém o corpo da resposta como uma String
        String responseBody = response.getBody().asString();
        System.out.println("Authorization Response: " + responseBody);

        // Valida a resposta
        Assert.assertEquals(response.getStatusCode(), 200, "Status code should be 200 OK");
        Assert.assertTrue(responseBody.contains("true"), "User should be authorized.");
    }

    //Listar os livros disponíveis (https://demoqa.com/BookStore/v1/Books)
    @Test(priority = 4)
    public void Test_retornar_lista_de_livros() {
      //Listar todos os livros disponíveis
        Response response = RestAssured.given()
                .contentType(ContentType.JSON)
                .get("/BookStore/v1/Books");

        // Valida a resposta
        Assert.assertEquals(response.getStatusCode(), 200, "Status Code está retornando 200");
        Assert.assertTrue(response.jsonPath().getList("books").size() > 0, "A lista de livros está vazia");

        // Exibe a lista de livros disponíveis
        response.jsonPath().getList("books").forEach(System.out::println);
    }


    //Alugar dois livros de livre escolha (https://demoqa.com/BookStore/v1/Books)
    @Test(priority = 5)
    public void Test_alugar_livros() {
        //Livros que o user deseja alugar
        String[] bookIds = {"9781449325862", "9781449331818"};


        for (String bookId : bookIds) {
            // Dados para alugar o livro
            Map<String, Object> bookData = new HashMap<>();
            bookData.get("collectionOfIsbns");
            bookData.put("userId", userId);
            bookData.put("collectionOfIsbns", new String[]{bookId});

            // Adiciona o token de autenticação manualmente
            Response response = RestAssured.given()
                    .contentType(ContentType.JSON)
                    .header("Authorization", "Bearer " + token)
                    .body(bookData)
                    .post("/BookStore/v1/Books");

            //Função para validar status code retornado
            int statusCode = response.getStatusCode();
            String responseBody = response.getBody().asString();

            System.out.println("Status Code: " + statusCode);
            System.out.println("Response Body: " + responseBody);

            Assert.assertEquals(statusCode, 201, "Status code tem que retornar 201");
        }
    }

    //Listar os detalhes do usuário com os livros escolhidos (https://demoqa.com/Account/v1/User/{userID})
    @Test(priority = 6)
    public void Test_obter_informacoes_user() {
      //
        Response response = RestAssured.given()
                .contentType(ContentType.JSON)
                .header("Authorization", "Bearer " + token) // Adiciona o token de autenticação manualmente
                .get("/Account/v1/User/" + userId);

        int statusCode = response.getStatusCode();
        String responseBody = response.getBody().asString();

        System.out.println("Status Code: " + statusCode);
        System.out.println("User Details: " + responseBody);

        // Validar retorno de status code
        Assert.assertEquals(statusCode, 200, "O código de status deve ser 200 OK");
    }
}
