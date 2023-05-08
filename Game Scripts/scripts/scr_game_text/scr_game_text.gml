/// @parametro identificador de texto
function scr_game_text(_text_id){
	
switch(_text_id) {
	
	case "historinha":
	scr_text("My name is Candy.","player");
	scr_text("I got a part-time job at a candy store.","player");
	scr_text("It's not really my vibe but I like it, i can make deliveries by skateboarding.","player");
	scr_text("I received there was an order for a box of donuts.","player");
	scr_text("That must be delivered to the fucking house.","player");
	scr_text("it's really far away but what we don't do for money isn't it?","player");
	scr_text("Let's finish this delivery soon.","player");
	global.cutscene = true;
	break;
	
	case "última história":
	scr_text("Fim da primeira parte do jogo.")
	scr_text("Pressione a tecla ENTER para fechar o jogo", "narrador");
	
	break;
	
	//case identifica como caso ocorra a interação
	case "lenny":
	scr_text("Bom dia Lenny.", "player");
	scr_text("Bom dia pequenino.", "lenny", -1);
	scr_text("Como você está?", "lenny", -1);
	   scr_option("Estou animado.", "npc 1 - fine");
	   scr_option("Estou um pouco receoso", "npc 1 - not fine");
	   
	break;
	   case "npc 1 - fine":
	     scr_text("Isso é bom.", "lenny");
		 break;
		  case "npc 1 - not fine":
	     scr_text("Não se preocupe, vai dar tudo certo.", "lenny");
		 break;
		 
		 
		  case "brejinha":
	scr_text("Hmmm brejinha gelada","player");
	scr_text("Deseja tomar a breja?");
	   scr_option("Sim", "manequim1 - sim");
	   scr_option("Não", "manequim1 - nao");
	   
	break;
	   case "manequim1 - sim":
	   scr_text("Hmmm... mais gostoso que sexu.", "player");
		 break;
		 
		 case "manequim1 - nao":
	   scr_text("No breja for me.", "player");
	 
		 break;
		 
		  case "manequim2":
	scr_text("Deseja obter essa skin?", "roccy", -1);
	   scr_option("Sim", "manequim2 - sim");
	   scr_option("Não", "manequim2 - nao");
	   
	break;
	   case "manequim2 - sim":
	   scr_text("Skin aplicada com sucesso.", "roccy", -1);
	
		 break;
		 
		 case "manequim2 - nao":
	   scr_text("Volte quando quiser comprar algo.", "roccy", -1);
	 
		 break;
		 
		  case "manequim3":
	scr_text("Deseja obter essa skin?", "roccy", -1);
	   scr_option("Sim", "manequim3 - sim");
	   scr_option("Não", "manequim3 - nao");
	   
	break;
	   case "manequim3 - sim":
	   scr_text("Skin aplicada com sucesso.", "roccy", -1);
		 break;
		 
		 case "manequim3 - nao":
	   scr_text("Volte quando quiser comprar algo.", "roccy", -1);
	 
		 break;
		 
		 case "manequim4":
	scr_text("Deseja obter essa skin?", "roccy", -1);
	   scr_option("Sim", "manequim4 - sim");
	   scr_option("Não", "manequim4 - nao");
	   
	   break;
	
	   case "manequim4 - sim":
	   scr_text("Skin aplicada com sucesso.", "roccy", -1);
	     
		 break;
		 
		 case "manequim4 - nao":
	   scr_text("Volte quando quiser comprar algo.", "roccy", -1);
	 
		 break;
		 
		 case "brejinhajorgin":
	   scr_text("Jorgin?! Você apareceu do nada por quê?", "player");
	   scr_text("A palavra breja me invoca seu filha da puta.");
	   scr_text("Podcrer mano jorge.", "player",);
	   
		 break;
		 
		 case "bob1":
	   scr_text("Lamento, a taverna está fechada, tera que voltar amanhã.", "player");
	   scr_text("Eu estava a vagar lá fora e avistei esse local, é um belo bar hein amigão?","bob",-1);
	   scr_text("De fato é um belo bar...", "player");
	    scr_text("Mas...", "player");
		scr_text("Mas?","bob",-1);
	   scr_text("Isso não muda o fato que já não é horário comercial, peço que se retire.", "player");
	   scr_text("Você por acaso sabe com quem está falando seu merdinha arrogante?","bob",-1);
	   scr_text("Não sei e não ligo para quem você é.","player");
	   scr_text("Entendo... Acho que vou ter que tomar seu bar a força.","bob",-1);
	   global.socaelegui = true;
	   
		 break;
		 
		 case "roccymultioff":
	   scr_text("Olá, sou a IA nomeada de Roccy.", "roccy", -1);
	   scr_text("Atulmente não existe nenhuma conexão.", "roccy", -1);
	   scr_text("Por favor, se ligue a uma rede.", "roccy", -1);
	   
		 break;
		 
		 case "Galen1":
	scr_text("Meditando novamente galen?", "player");
	scr_text("Bom... Algúem precisa fazer isso.", "galen", -1);
	scr_text("O que veio fazer no cemitério?", "galen", -1);
	   scr_option("Vim buscar a runa do Lenny.", "galen - runa");
	   scr_option("Queria ver como você está.", "galen - preocupa");
	   
	break;
	   case "galen - runa":
	     scr_text("Ele a deixou na masmorra, vai precisar da chave que está na casa.", "galen");
		 break;
		  case "galen - preocupa":
	     scr_text("Obrigado pela preocupação meu pequeno, estou muito bem!", "galen");
		 break;
		 
		 case "lenny2":
	scr_text("Lenny você está cobrindo a entrada da caverna.", "player");
	scr_text("Desculpe você não pode passar.", "lenny", -1);
	scr_text("Poderia me dizer o motivo?", "player");
	scr_text("Eu perdi a minha runa, se você achar ela para mim eu te deixo passar.", "lenny", -1);
	scr_text("Onde você perdeu ela?", "player");
	scr_text("Está no último andar da masmorra.", "lenny", -1);
	scr_text("Tudo bem, irei procurar sua runa.", "player");
		 break;
		 
		 case "zolin1":
	scr_text("Desculpa te acordar Zolin.", "player");
	scr_text("Sempre estou acordado criança.", "zolin", -1);
	scr_text("Isso é mentira, você estava dormindo agora pouco.", "player");
	scr_text("Sabe como é... eu durmo de olhos abertos.", "zolin", -1);
	scr_text("Acho que você quis dizer olho aberto certo?", "player");
	scr_text("São olhos mesmo, afinal eu vejo tudo que acontece nessa casa.", "zolin", -1);
	scr_text("Isso me assusta um pouco.", "player");
		 break;
		 
		 case "billy":
	scr_text("Billy você poderia me ajudar a procurar onde está a runa do Lenny?", "player");
	scr_text("Lamento, estou ocupado agora.", "billy", -1);
	scr_text("Mas você sempre está ocupado...", "player");
	scr_text("Outra hora eu procuro com você.", "billy", -1);
	   scr_option("Você sempre fala isso...", "billy - nao");
	   scr_option("Tudo bem Billy...", "billy - sim");
	break;
	   case "billy - nao":
	     scr_text("Procure sozinho então.", "billy");
		 break;
		  case "billy - sim":
	     scr_text("Fico feliz que tenha entendido.", "billy");
		 break;
		 
		 case "roccy1":
	scr_text("Olá pequenino, como posso lhe ajudar hoje?", "roccy", -1);
	scr_text("Quem é você? eu nunca te vi por aqui...", "player");
	scr_text("Sou um negociador que vaga por entre os lugares, achei esse local muito interessante", "roccy", -1);
	scr_text("Estaria afim de jogar um jogo?", "roccy", -1);
	   scr_option("Sim", "roccy - sim");
	   scr_option("Não", "roccy - nao");
	break;
	   case "roccy - sim":
	     scr_text("Excelente! Vamos começar.", "roccy");
		 global.comecarjogos = true;
		 break;
		  case "roccy - nao":
	     scr_text("Acho que você não tem muita escolha pequeno.", "roccy");
		 global.comecarjogos = true;
		 break;
	   
	
	case "estatua":
	scr_text("Monumento do grande héroi que derrotou os deuses malignos.")
	scr_text("Se ele soubesse quanta coisa ruim aconteceu depois...", "player");
	break;
	
	case "runas de purificacao":
	scr_text("palavras para purificação.")
	break;
	
	case "eu":
	scr_text("Um memorando ao meu narcisimo...")
	scr_text("Seu pai usava calcinha kkkk.","player")
	break;
	
	case "Athos":
	scr_text("Você completou a primeira parte do jogo, a parte dois vai sair ano que vem!", "athos")
	break;
	
	case "Athos2":
	scr_text("Olá! eu sou Huotes, espero que tenha gostado da proposta apresentada nesse meu projeto!", "athos2")
	scr_text("Em breve sairá a parte 2, até lá peço um pouco de paciência.", "athos2")
	break;
	
	case "MathTurtle":
	scr_text("Salve! Sou MathTurtle, sou o responsável por desenhar os personagens e as vegetações do jogo.", "turtle")
	scr_text("Consulte mais sobre o meu trabalho pelo @turtle_pixels.", "turtle")
	break;
	
	case "CatLuke":
	scr_text("Certos sprites e tilesets foram adquiridos por terceiros sendo: ", "Catluke")
	scr_text("@ansimuz, @GuttyKreum, @AssetBakery, @cg_alexander e @Pixel_poem. ", "Catluke")
	scr_text("@franuka_art, @pixel-boy, dentre outros. ", "Catluke")
	scr_text("Graças ao trabalho de vocês pude dar vida a fantasia.", "Catluke")
	break;
	
	case "well":
	scr_text("O poço tem água, mas está impura.")
	break;
	
	case "Zolin":
	scr_text("Você acordou Zolin.")
	break;
	
	case "janela maldita":
	scr_text("Você se sente constantemente observado... mas não tem mais ninguém aqui.")
	break;
	
	case "cama":
	scr_text("É apenas a boa e velha cama.")
	break;
	
	case "urso":
	scr_text("Sua única verdadeira companhia que realmente te entende...")
	scr_text("Obrigado por ser um bom ouvinte meu pequeno.", "player");
	break;
	
	case "primeira cemiterio":
	scr_text("A magia escura que paira sobre o cemiterio ficou mais forte nos ultimos dias...")
	scr_text("Esse lugar fica mais macabro a cada dia que passa.", "player");
	break;
	
	case "esqueleto de crystal":
	scr_text("A magia desse lugar entorpece a mente e distorce a noção de tempo...")
	scr_text("Esse esqueleto já está a tanto tempo nessa caverna que a magia cristalizou o mesmo.") 
	scr_text("Isso é bom para me lembrar o quão ruim é ficar perdido nesse lugar.", "player");
	break;
	
	case "crypta":
	scr_text("As tumbas nesse lugar emitem luz mesmo em meio a escuridão.")
	scr_text("Mesmo depois de tanto tempo esse lugar ainda me dá muito medo.", "player");
	break;
	
	case "lennysomiu":
	scr_text("Acho que o pessoal deve ter voltado para a casa escura.", "player");
	break;
	
	case "sonho":
	scr_text("De novo esse mesmo sonho de quando cheguei aqui...", "player");
	scr_text("Seria isso um presságio de algo ruim?", "player");
	break;
	
	case "pilar":
	scr_text("Você deu de cara em um pilar.",);
	
	break;
	case "billyruna":
	scr_text("A runa favorita do Billy.",);
	
	break;
	
	case "ilumina":
	scr_text("Qual era o nome do feitiço mesmo?", "player");
	scr_text("Seria... brilhium?", "player");
	scr_text("...");
	scr_text("Talvez... lightium?", "player");
	scr_text("...");
	scr_text("Ah sim... ILUMINION!", "player");
	break;
	
	case "lennyruna":
	scr_text("Aqui está a sua runa lenny.", "player");
	scr_text("Obrigado meu pequeno.", "lenny", -1);
	scr_text("Você está bem Lenny?", "player");
	scr_text("Sim, só estou um pouco triste que você vai partir.", "lenny", -1);
	scr_text("Lenny... eu não posso mais ficar aqui...", "player");
	scr_text("Está tudo bem, eu entendo que você precisa partir.", "lenny", -1);
	scr_text("Prometo retornar para buscar você e o Billy um dia Lenny.", "player");
		 break;
		 
		 case "billycasa":
	scr_text("Acho que enfim chegou o dia Billy.", "player");
	scr_text("Sim, gostaria de ter passado mais tempo com você, Peço desculpas por estar sempre ocupado.", "billy", -1);
	scr_text("Está tudo bem Billy, sei que no fundo você fazia de tudo para me proteger.", "player");
	scr_text("Seja corajoso ao sair daqui, você vai precisar.", "billy", -1);
	scr_text("Prometo que vou ser!", "player");
	scr_text("Lembre-se dos feitiços que eu te ensinei e de como preparar runas.", "lenny", -1);
	scr_text("Você sabe que eu já domino isso Lenny.", "player");
	scr_text("Então o que está esperando para partir?", "billy", -1);
		 break;
		 
		 case "tudopreto":
	scr_text("Se eu me lembro bem, havia uma escotilha que levava para a masmorra.", "player");
	break;
	
	case "galen2":
	scr_text("Obrigado por tudo que você já fez por mim Galen.", "player");
	scr_text("Fico feliz em ver como você cresceu, é uma pena que vá partir...", "galen", -1);
	scr_text("Irei sentir sua falta meu pequeno herói.", "galen", -1);
	scr_text("Prometo voltar um dia.", "player");
	
	
	break;
	
	case "lennycombate":
	scr_text("Entre na montanha pequeno! não vou conseguir para-los por muito tempo.", "lenny", -1);
	
	break;
	
	   
	   
	
	
   }
	

}