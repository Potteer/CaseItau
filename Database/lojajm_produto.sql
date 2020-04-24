-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lojajm
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descricao` text,
  `preco` double(6,2) NOT NULL,
  `nome_imagem` varchar(30) DEFAULT NULL,
  `promocao` double DEFAULT NULL,
  `tipo` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Notebook LG N450 com Intel Core i7 6GB (+ 1GB Memória Dedicada) 750GB LED 14\' Windows 7 Home Premium','Entre de vez na era da tecnologia com o Notebook LG N450! Tem design clean, é compacto, conta com tela com moldura fina para maior área de visualização e o melhor de tudo: tem processador de 3ª geração da família Intel Core.',2200.99,'computador.jpg',10,'eletronico'),(2,'Cafeteira Expresso Dolce Gusto Piccolo Vermelha 15 Bar','Café expresso feito em casa, tão cremoso quanto na cafeteria? A Cafeteira Expresso Piccolo da Arno da linha Dolce Gusto une a inovação dos produtos feito pela Arno com a qualidade do café da Nestlé.',249.00,'cafeteira.jpg',20,'cozinha'),(3,'Bicicleta Caloi Aluminun Aro 26 21 Marchas','Pedalar proporciona diversos <b>benefícios</b> à saúde, entre eles estão: melhora na frequência cardíaca, definição do músculos das pernas, baixo impacto que evita lesões entre outros.',409.90,'bicicleta.jpg',0,'esportes'),(4,'Lava e Seca LG 6 Motion - 8,5 kg, 14 Programas, Painel Touch, Função Turbo, Timer, Branca','A lavadora 6 Motion foi desenvolvida para proporcionar movimentos que fazem o método de lavagem mais eficiente, assim, conseguindo garantir durabilidade à suas roupas durante os processos por ela executados, além de se adequar a todos os tipos de tecidos.',1999.00,'lavadora_secadora.jpg',10,'eletrodomestico'),(5,'Aspirador de pó Vapper 20 - Mondial 110V','Deixe sua casa completamente limpa com o novo aspirador de pó Vapper 20',249.99,NULL,15,'eletrodomestico'),(6,'Livro - Quem quer ser um milionário','Quem Quer Ser Milionário? foi um concurso de televisão português de perguntas de cultura geral e de conhecimento, cujo objetivo é acertar sucessivamente a 15 perguntas de escolha-múltipla para alcançar o prémio máximo de 100.000 €, sendo que cada pergunta corresponde a uma determinada quantia.',59.90,NULL,20,'livro'),(7,'Filme - Harry Potter e o Príncipe Mestiço','No sexto ano de Harry em Hogwarts, Lord Voldemort e seus Comensais da Morte estão criando o terror nos mundos bruxo e trouxa. Dumbledore convence seu velho amigo Horácio Slughorn para retornar a Hogwarts como professor de poções após Harry encontrar um estranho livro escolar. Draco Malfoy se esforça para realizar uma ação destinada por Voldemort, enquanto Dumbledore e Harry secretamente trabalham juntos a fim de descobrir o método para destruir o Lorde das Trevas uma vez por todas',49.90,NULL,0,'filme'),(8,'Série - La Casa de Papel','Um grupo de nove ladrões, liderados por um Professor, prepara o roubo do século na Casa da Moeda da Espanha, com o objetivo de fabricar o próprio dinheiro em quantidades incalculáveis e nunca antes vista',89.90,NULL,10,'serie');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24  1:46:37
