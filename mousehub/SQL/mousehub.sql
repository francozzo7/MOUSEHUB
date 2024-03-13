-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/12/2023 às 09:58
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mousehub`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `senha` text NOT NULL,
  `perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `imagem` varchar(500) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(5000) NOT NULL,
  `preco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `audio`
--

INSERT INTO `audio` (`id`, `imagem`, `nome`, `descricao`, `preco`) VALUES
(1, 'https://acdn.mitiendanube.com/stores/001/929/213/products/truthear-crinacle-zero_111-bf170c2f4a825d457216626881747314-480-0.webp', 'Truthear Crinacle Zero', 'Modelo: Truthear Crinacle Zero;\r\nESPECIFICAÇÕES:;\r\nConfiguração: Driver Dinâmico de 10mm + 7.8mm;\r\nEstilo: In-Ear (dentro da orelha);\r\nMaterial do Diafragma: PU + LCP composite diaphragm;\r\nTHD: THD@1KHz≤1%;\r\nSensibilidade: 117.5dB/Vrms (@1KHz);\r\nImpedância: 10Ω±15% (@1kHz);\r\nResposta de Frequência: 20Hz-39500Hz ;(IEC61094，Campo Livre) ;\r\nComprimento do Cabo: 1.2m;\r\nPlug/Conexão: 3.5mm (P2);\r\nConteúdo da caixa: Fone Truthear Crinacle Zero; Cabo; Documentação; 7 conjuntos de ponteiras.', 'R$ 549,90'),
(4, 'https://acdn.mitiendanube.com/stores/001/929/213/products/kiwiears-quartet_11-3f57a231716d1dbbc816956738649410-480-0.webp', 'Kiwiears Quartet', 'Graves Incríveis\r\nO Kiwi Ears Quartet foi projetado em torno do nosso novo subwoofer sobárico com driver duplo dinâmico. O design inovador do driver utiliza dois drivers de diafragma de titânio de 10 mm, cada um acionado independentemente por circuitos magnéticos duplos. O par de drivers foi alinhado passivamente para sincronizar a fase e evitar o cancelamento das ondas sonoras. Este novo design de subwoofer emite sons de sub-graves extremamente bem estendidos que são mais firmes, rápidos e profundos do que qualquer outro design de woofer anterior. O Quarteto é a resposta da Kiwi Ear para todos aqueles que desejam um monitor intra-auricular divertido que forneça todos os graves de qualidade necessários.;\r\n\r\nEquilíbrio Harmonioso\r\nEmbora o Quarteto seja um IEM centrado no baixo, ainda buscamos fornecer um equilíbrio tonal natural. Esse objetivo estava centrado na necessidade de fornecer graves texturizados e poderosos, mas sem qualquer turvação ou embotamento nos médios ou agudos. Os drivers dinâmicos foram cruzados usando uma rede passiva de passagem baixa a 350 Hz para permitir graves ricos e espessos, enquanto os médios de 350-1kHz foram ajustados para serem completamente planos.;\r\n\r\nIsso permite uma tonalidade precisa nos médios, como a dos monitores de estúdio neutros, ao mesmo tempo que dá um toque de calor nos médios graves. Isso significa que o Quarteto soará estrondoso nos graves, mas ainda limpo e plano nos médios, evitando o inchaço indesejado encontrado na maioria dos fones de ouvido.;\r\n\r\nDrivers de armadura balanceada personalizados\r\nO Quarteto apresenta uma armadura balanceada de frequência média-alta personalizada e drivers de armadura balanceada de tweeter ultra-alto personalizados. Esses drivers foram modificados para se ajustarem ao equilíbrio dos novos drivers dinâmicos por meio de um sistema de ventilação ajustado para fornecer mais fluxo de ar. Seguindo a tradição do Kiwi Ears, as armaduras balanceadas são ajustadas passivamente para se ajustarem à nossa curvatura alvo interna para médios e agudos. Isso significa que os agudos médios fornecem um tom nítido e limpo para vocais e instrumentos, sem soar monótono ou nasal. Os agudos são detalhados com bastante brilho para uso em desempenho profissional, mas são naturais e livres de estridência ou fadiga.;\r\n\r\nUsos recomendados\r\nO Quarteto pode ser considerado um monitor de estúdio neutro, mas com ênfase em subgraves e graves começando em 350Hz. Isso fornece um pouco mais de corpo, textura e riqueza nos médios inferiores, mas médios neutros e médios superiores. O Quarteto é perfeito para bateristas e baixistas que exigem graves poderosos e impactantes. Os entusiastas da música que desejam graves de qualidade, mas uma tonalidade natural, também se beneficiarão do equilíbrio de afinação do Quarteto.;\r\n\r\nModelo: Kiwiears Quartet;\r\n\r\nESPECIFICAÇÕES:;\r\nImpedância: 32Ω±15%(@1kHz);\r\nSensibilidade: 110dB/Vrms(@1kHz);\r\nFaixa de resposta de frequência: 10Hz-50kHz\r\nResposta de frequência efetiva: 20Hz-20kHz;\r\nConector de fone de ouvido: 0,78 mm QDC;\r\nCabo: 1.2m;\r\nEntrada: 3.5mm (P2);\r\nConteúdo da embalagem: Fones de Ouvido, Cabo; Sacola de pano; 9 pares de eartips; Manual.', 'R$ 949,90'),
(5, 'https://acdn.mitiendanube.com/stores/001/929/213/products/turtle-beach-stealth-pro-playstation_2-df3425b36a7febadad17000950095307-480-0.webp', 'Turtle Beach Stealth PRO', 'Destaques:;\r\n\r\nÁudio excepcional dos drivers Nanoclear de 50 mm, selecionados manualmente para qualidade superior.\r\nCancelamento de ruído ativo ajustável e inigualável, oferecendo transparência sonora inteligente.;\r\nMicrofone Boom com cancelamento de ruído para uma comunicação imersiva.\r\nSistema de bateria dupla conveniente e substituível, com mais de 12 horas de duração.\r\nDesfrute de sua música ou converse enquanto joga, simultaneamente, com Bluetooth 5.1.\r\nCompatível com Xbox, PlayStation, PCs Windows, Mac, Nintendo Switch e dispositivos móveis.\r\nAplicativo complementar Turtle Beach Audio Hub, com equalizador avançado de 10 bandas via Bluetooth.\r\nConexão sem fio proprietária de 2,4 GHz, sem atrasos, cobrindo um alcance de 50 pés.\r\nAlmofadas de ouvido em espuma viscoelástica revestidas com couro sintético ProSpecs.\r\nTransmissor low-profile e estação de carregamento inclusa.;\r\n\r\nConexões:;\r\n\r\nTransmissor sem fio: Compatível com consoles Xbox, PlayStation®, PC, Mac® e Nintendo Switch™.\r\nBluetooth®: Suportado em dispositivos iOS, Android, PC e Mac®, Nintendo Switch™ e outros equipados com Bluetooth®.;\r\n\r\nFones de ouvido:;\r\n\r\nDrivers: Potentes drivers Nanoclear™ de 50 mm com ímãs de neodímio.\r\nCancelamento de ruído: Oferece cancelamento ativo variável, reduzindo ruídos em >25dB a 100Hz.\r\nResposta de frequência: Abrange de 10Hz a 22kHz para uma experiência sonora detalhada.;\r\n\r\nMicrofone:\r\n\r\nTipo: Cancelamento de ruído unidirecional, reduzindo em >30dB a 3kHz.\r\nResposta de frequência: Varia de 100Hz a 8kHz, capturando áudio com precisão.\r\nSensibilidade: Boom: -22dBFS/Pa / Integrado: -26dBFS/Pa, garantindo clareza no som capturado.;\r\n\r\nSem fio:\r\n\r\nConexão dupla: Opera em 2,4 GHz e Bluetooth simultaneamente.\r\nJogos sem fio: Conexão de 2,4 GHz sem atraso para uma experiência de jogo imersiva.\r\nAlcance: Estende-se até 50\'/15m para maior liberdade de movimento.;\r\n\r\nDesign dos fones de ouvido:\r\n\r\nTipo: Over-Ear (fechado) para um encaixe confortável e imersivo.\r\nMaterial da almofada de ouvido: Espuma de memória revestida com couro sintético, proporcionando conforto prolongado.;\r\n\r\nConteúdo da Embalagem:;\r\n\r\nFone de ouvido: Turtle Beach Stealth™ Pro, fone de ouvido para jogos sem fio com cancelamento de ruído.\r\nMicrofone: Microfone removível TruSpeak™ Boom.\r\nBaterias: Duas baterias recarregáveis.\r\nTransmissor: Transmissor e estação de carregamento inclusos.\r\nCabos: Cabo USB-C de 3 pés e cabo transmissor USB-C de 6,5 pés.\r\nBolsa: Bolsa de transporte para praticidade e proteção.\r\nGuia: Guia rápido para configuração e uso simplificado.\r\nAdesivo: Adesivo exclusivo da marca Turtle Beach.', 'R$ 3.899,90');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `comentario` text NOT NULL,
  `data_comentario` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mousepads`
--

CREATE TABLE `mousepads` (
  `id` int(11) NOT NULL,
  `imagem` varchar(500) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(5000) NOT NULL,
  `preco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mousepads`
--

INSERT INTO `mousepads` (`id`, `imagem`, `nome`, `descricao`, `preco`) VALUES
(2, 'https://acdn.mitiendanube.com/stores/001/929/213/products/artisan-hayate-otsu_11-57d733d67a949d73e316525659359527-480-0.webp', 'Artisan FX Hayate Otsu XL', 'ATENÇÃO: Disponível nas esponjas MID, SOFT e XSOFT, escolha a versão da esponja que deseja antes de adicionar ao carrinho.;\r\n\r\nMID: Base mais rígida.;\r\nSOFT: Base com maciez média.;\r\nXSOFT: Base mais macia.;\r\n\r\nA Artisan é uma conhecida e renomada fabricante de mouse pads. Ao longo dos anos, a empresa construiu uma reputação invejável e consequentemente muita procura por seus produtos. ;\r\n\r\nOs Mousepads são produzidos no Japão, utilizando materiais e equipamentos da mais alta qualidade. O processo de fabricação é complexo e o controle de qualidade é extremamente rígido, o que resulta em mousepads incríveis, resistentes e com um feel inigualável.;\r\n\r\nO Mouse Pad Artisan FX Hayate Otsu é uma atualização do renomado Hien, apresentando um excelente poder de parada com baixa fricção inicial e deslize fluído. A superfície do Hayate Otsu é mais suave ao toque e há maior equilíbrio entre os deslizes horizontal e vertical quando comparado ao Hien. É considerado por muitos o melhor mousepad híbrido do mercado.;\r\n\r\nESPECIFICAÇÕES:\r\nModelo: Artisan FX Hayate Otsu XL;\r\nSuperfície: Tecido;\r\nDeslize: Híbrido;\r\nVelocidade: Média+;\r\nPoder de parada: Alto;\r\nBase: PORON™ com tecnologia de sucção;\r\nBordas: Costuradas;\r\nDimensões: 490 x 420 mm;\r\nEspessura: Soft/XSoft 4 mm | Mid 3 mm', 'R$ 730,00'),
(5, 'https://acdn.mitiendanube.com/stores/001/929/213/products/infinitymice-vagabond-xl_11-88118d64589a2758f216887703198963-480-0.jpg', 'InfinityMice Vagabond', 'InfinityMice Vagabond\r\nO Vagabond é um mouse pad de alto desempenho destinado a todos os jogos. Possui superfície híbrida com costura abaixo da superfície para evitar abrasão e contatos acidentais durante o jogo. Feito com uma base personalizada de IPU para evitar movimentos indesejados do mousepad durante a gameplay.;\r\n\r\nFRICÇÃO DE SUPERFÍCIE HÍBRIDA\r\nSuperfície de alto desempenho não revestida. Feito para uma mira rápida e precisa.;\r\n\r\nBASE DE IPU PERSONALIZADA DE ALTA FIXAÇÃO\r\nA base durável de IPU garante total estabilidade do seu mousepad na mesa, sem deixar o mousepad se mover durante qualquer movimento da mão ou braços.;\r\n\r\nDestaques:\r\nSuperfície híbrida projetada para um deslize muito equilibrado\r\nBordas costuradas de perfil baixo\r\nEspessura: 3,5 mm\r\nEdição limitada;\r\n\r\nESPECIFICAÇÕES:;\r\nModelo: InfinityMice Vagabond;\r\nSuperfície: Fibra / Poliéster;\r\nDeslize: Híbrido;\r\nVelocidade: Média;\r\nPoder de parada: Médio;\r\nBase: IPU Customizada;\r\nBordas: Costuradas;\r\nDimensões: 490 x 420 mm (XL) / 490 x 490 mm (XLSQ);\r\nEspessura: 3.5 mm', 'R$ 540,00'),
(6, 'https://acdn.mitiendanube.com/stores/001/929/213/products/pulsar-superglide-mousepad-xl_31-b16ce05551cae884c616752880738888-480-0.jpg', 'Pulsar Superglide XL', 'VIDRO DE ALUMINO-SILICATO\r\nO vidro de aluminossilicato, também conhecido como Gorilla Glass, é um tipo de vidro reforçado quimicamente usado em uma variedade de aplicações, incluindo telas de celulares, telas de tablets e telas de laptops. É conhecido por seu alto nível de durabilidade e resistência a arranhões e rachaduras. É feito pelo processo de troca iônica em que a superfície do vidro é bombardeada com íons de um elemento específico, como o potássio, que faz com que a superfície do vidro fique mais dura e resistente a danos. ;\r\n\r\nCONSTRUÇÃO EM CAMADAS\r\nA construção em 5 camadas de materiais garante máxima durabilidade, estabilidade e consistência.;\r\n\r\nBASE ANTI-DERRAPANTE\r\nO design de borracha de silicone de alta densidade totalmente moldado proporciona máxima aderência às superfícies, garantindo estabilidade e reduzindo o risco de deslizamentos. Além disso, a cobertura total do silicone na base garante estabilidade e fixação máximas.;\r\n\r\nAtenção: Para a melhor experiência possível, utilizar em conjunto com feets 100% PTFE. Não pode ser utilizado em conjunto com feets de vidro.;\r\n\r\nESPECIFICAÇÕES:;\r\nModelo: Superglide XL;\r\nSuperfície: 100% Vidro de Alumino-Silicato;\r\nDeslize: Speed;\r\nFricção dinâmica: Baixa;\r\nFricção estática: Mínima;\r\nPoder de parada: Baixo;\r\nBase: Silicone moldado;\r\nDimensões: 490 x 420 mm;\r\nEspessura: 4 mm', 'R$1249,90');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mouses`
--

CREATE TABLE `mouses` (
  `id` int(11) NOT NULL,
  `imagem` varchar(500) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(5000) NOT NULL,
  `preco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `mouses`
--

INSERT INTO `mouses` (`id`, `imagem`, `nome`, `descricao`, `preco`) VALUES
(1, 'https://acdn.mitiendanube.com/stores/001/929/213/products/g-pro-x-superlight_51-8442e20cc753ffe8ab16719141397888-480-0.webp', 'Logitech Gpro X Superlight', 'ESPECIFICAÇÕES:\r\nDimensões: 125 mm (C) x 63.5 mm (L) x 40 mm (A);\r\n\r\nShape: Simétrico - Destro;\r\n\r\nPegadas: Claw - Palm - Fingertip;\r\n\r\nPeso: < 63g;\r\n\r\nBotões: 5 (incluindo click central);\r\n\r\nSwitches Principais: OMROM 20M;\r\n\r\nScroll: Macio - Passos bem definidos;\r\n\r\nSensor: Hero 25K;\r\n\r\nTipo de sensor: Óptico;\r\n\r\nDPI: 100 - 25.600 DPI;\r\n\r\nIPS: 400;\r\n\r\nAceleração: 40g;\r\n\r\nFrequência: 125/250/500/1000 Hz;\r\n\r\nFeet: PTFE sem aditivos;\r\n\r\nIluminação: Indicador de bateria - sem RGB;\r\n\r\nCabo: 1.80 m;\r\n\r\nConexão: Cabo (Micro-USB) e Wireless (Dongle-2.4ghz);\r\n\r\nDuração da bateria: até 70 horas;\r\n\r\nSoftware: Sim', 'R$ 800,00'),
(2, 'https://acdn.mitiendanube.com/stores/001/929/213/products/g-pro-x-superlight-2-pink_1-4ffd8841d80eeb0b0416971489230757-480-0.webp', 'Logitech Gpro X Superlight 2', 'ESPECIFICAÇÕES:\r\nDimensões: 125 mm (C) x 63.5 mm (L) x 40 mm (A);\r\n\r\nShape: Simétrico - Destro;\r\n\r\nPegadas: Claw - Palm - Fingertip;\r\n\r\nPeso: < 59g;\r\n\r\nBotões: 5 (incluindo click central);\r\n\r\nSwitches Principais: Lightforce Híbridos;\r\n\r\nScroll: Macio - Passos bem definidos;\r\n\r\nSensor: Hero 2 (30k);\r\n\r\nTipo de sensor: Óptico;\r\n\r\nDPI: 100 - 32.000 DPI;\r\n\r\nIPS: 500;\r\n\r\nAceleração: 40g;\r\n\r\nFrequência: 125/250/500/1000/2000 Hz;\r\n\r\nFeet: PTFE sem aditivos;\r\n\r\nIluminação: Indicador de bateria - sem RGB;\r\n\r\nCabo: 1.80 m;\r\n\r\nConexão: Cabo (USB-C) e Wireless (Dongle-2.4ghz);\r\n\r\nDuração da bateria: até 95 horas;\r\n\r\nSoftware: Sim', 'R$ 1200,00'),
(3, 'https://acdn.mitiendanube.com/stores/001/929/213/products/viper-v3-hyperspeed_1-f40b7629706a8034a616987028262551-480-0.webp', 'Razer Viper V3 Hyperspeed', 'ESPECIFICAÇÕES:\r\nDimensões: 127,7 mm (C) x 63.9 mm (L) x 39,9 mm (A);\r\n\r\nShape: Simétrico - Destro;\r\n\r\nPegadas: Fingertip - Claw - Palm;\r\n\r\nPeso: 82g (com pilha AA);\r\n\r\nBotões: 5 (incluindo click central);\r\n\r\nSwitches Principais: Razer Optical v3;\r\n\r\nScroll: Tactilidade média - Passos bem\r\ndefinidos;\r\n\r\nSensor: FOCUS PRO 30K (PAW3950);\r\n\r\nTipo de sensor: Óptico;\r\n\r\nDPI: 100 - 30.000 DPI;\r\n\r\nIPS: 750;\r\n\r\nAceleração: 70g;\r\n\r\nFrequência: Até 1000hz com receptor padrão / Até 4000hz com Dongle 4K (vendido separadamente);\r\n\r\nFeet: PTFE sem aditivos;\r\n\r\nIluminação: Indicador de bateria - sem RGB;\r\n\r\nCabo: 2.00 m;\r\n\r\nConexão: Cabo (USB-C) e Wireless (Dongle-2.4ghz);\r\n\r\nDuração da bateria: até 280 horas (1000hz);\r\n\r\nSoftware: Sim', 'R$ 700,00'),
(4, 'https://acdn.mitiendanube.com/stores/001/929/213/products/viper-mini-signature-edition_12-ee2c1df88554d905ba16854863159413-480-0.jpg', 'Viper Mini Signature Edition', 'ESPECIFICAÇÕES:\r\nDimensões: 119 mm (C) x 62 mm (L) x 39 mm (A);\r\n\r\nShape: Simétrico - Destro;\r\n\r\nPegadas: Claw - Palm - Fingertip;\r\n\r\nPeso: 49g;\r\n\r\nBotões: 5 (incluindo click central);\r\n\r\nSwitches Principais: Razer Optical v3;\r\n\r\nScroll: Macio - Passos bem definidos;\r\n\r\nSensor: FOCUS PRO 30K (PAW3950);\r\n\r\nTipo de sensor: Óptico;\r\n\r\nDPI: 100 - 30.000 DPI;\r\n\r\nIPS: 750;\r\n\r\nAceleração: 70g;\r\n\r\nFrequência: Até 8000hz;\r\n\r\nFeet: PTFE sem aditivos;\r\n\r\nIluminação: Indicador de bateria - sem RGB;\r\n\r\nCabo: 2.00 m;\r\n\r\nConexão: Cabo (USB-C) e Wireless (Dongle-2.4ghz);\r\n\r\nDuração da bateria: até 60 horas (1000hz) ou 12 horas (8000hz);\r\n\r\nSoftware: Sim', 'R$ 3200,00'),
(5, 'https://acdn.mitiendanube.com/stores/001/929/213/products/pulsar-x2-pink_11-6f145fe78d2bd8958f16879940141586-480-0.jpg', 'Pulsar X2 Medium', 'ESPECIFICAÇÕES:\r\nDimensões: 120 mm (C) x 63 mm (L) x 38 mm (A);\r\n\r\nShape: Simétrico - Destro;\r\n\r\nPegadas: Claw - Fingertip;\r\n\r\nPeso: 56g;\r\n\r\nBotões: 5 (incluindo click central);\r\n\r\nSwitches Principais: Huano Blue Transparent Shell Pink Dot;\r\n\r\nScroll: TTC Dustproof - Rigidez Média/Baixa - Passos bem definidos;\r\n\r\nSensor: PixArt PAW3395;\r\n\r\nTipo de sensor: Óptico;\r\n\r\nDPI: 100–26,000 DPI;\r\n\r\nIPS: 650;\r\n\r\nAceleração: 50g;\r\n\r\nFrequência: 125/250/500/1000 Hz;\r\n\r\nFeet: PTFE;\r\n\r\nIluminação: 1 zona indicador de bateria/conexão;\r\n\r\nCabo: 1.80 m, paracord;\r\n\r\nDuração da bateria: até 70 horas 2.4ghz;\r\n\r\nSoftware: Sim', 'R$ 800,00'),
(6, 'https://acdn.mitiendanube.com/stores/001/929/213/products/starlight-tenz-medium_1-a6c09126e1ee37cfd916630403062316-480-0.jpg', 'Starlight Pro Tenz Medium', 'ESPECIFICAÇÕES:\r\nDimensões: 121mm(C) x 56.7mm (L) x 36.7mm (A);\r\n\r\nShape: Simétrico - Destro;\r\n\r\nPegadas: Claw - Fingertip - Palm;\r\n\r\nPeso: 47g;\r\n\r\nBotões 5 (incluindo click central);\r\n\r\nSwitches Principais: Kailh GM 8.0 (binados);\r\n\r\nScroll: Rígido - Passos bem definidos;\r\n\r\nSensor: Finalsensor;\r\n\r\nTipo de Sensor: Óptico;\r\n\r\nDPI: 20.000 DPI;\r\n\r\nIPS: 450 IPS;\r\n\r\nAceleração: 50G;\r\n\r\nFrequência: 1000 Hz;\r\n\r\nIluminação: 2 Zonas RGB;\r\n\r\nCabo: 1.80 m, paracord;\r\n\r\nConexão: Cabo (USB-C) e Wireless (2.4ghz);\r\n\r\nDuração da bateria: até 160 horas;\r\n\r\nSoftware: Não', 'R$ 2.899,90');

-- --------------------------------------------------------

--
-- Estrutura para tabela `teclados`
--

CREATE TABLE `teclados` (
  `id` int(11) NOT NULL,
  `imagem` varchar(500) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(5000) NOT NULL,
  `preco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `teclados`
--

INSERT INTO `teclados` (`id`, `imagem`, `nome`, `descricao`, `preco`) VALUES
(1, 'https://acdn.mitiendanube.com/stores/001/929/213/products/apex-pro-mini_411-cdd5d993fdd5cbb52916580840889629-480-0.webp', 'Steelseries Apex Pro Mini', 'Apex Pro Mini\r\nO teclado mais rápido e avançado do mundo funciona sem esforço para todos os empreendimentos, se você precisa das teclas mais rápidas em jogos para destruir a concorrência ou pressionamentos deliberados para precisão de digitação - o poder é seu.;\r\n\r\nOmniPoint 2.0 Adjustable Switches\r\nOs novos switches OmniPoint 2.0 usam sensores magnéticos de última geração para um acionamento instantâneo e sem contato de teclas para fornecer o que você deseja: velocidade.;\r\n\r\nTeclas de ação 2 em 1\r\nPrograme duas ações para uma única tecla, dependendo de como você a pressiona. Caminhe para frente com um leve pressionamento de tecla e, em seguida, corra pressionando a mesma tecla mais fundo. Crie seus próprios combos avançados para superar a concorrência.;\r\n\r\nAjuste final\r\nPrecisão absoluta e personalização incomparável estão ao seu alcance. Ajuste a distância de registro de suas teclas para o 0,1 mm mais próximo. Quer prefira o toque leve de 0,2 mm ou um acionamento de 3,8 mm, a escolha é sua.;\r\n\r\nDesign compacto de 60%\r\nO Apex Pro Mini foi desenvolvido para criar mais espaço em sua mesa para movimentos de mouse vencedores de jogos, mantendo todos os recursos de um teclado de tamanho normal com suas funções secundárias impressas na lateral.;\r\n\r\nAplicativo SteelSeries Engine\r\nDesbloqueie os recursos exclusivos do Apex Pro Mini Wireless com o Engine. Ligações de teclas de ação 2 em 1, iluminação RGB por tecla e pontos de atuação personalizados são todos programáveis por meio deste software fácil de usar.;\r\n\r\nDesign:\r\nOs switches ajustáveis OmniPoint 2.0 são os mais rápidos do mundo, com resposta 11x mais rápida e atuação 10x mais rápida\r\nPersonalize a distância de atuação de cada tecla: de 0,2 mm a 3,8 mm\r\nPrograme duas ações diferentes para a mesma tecla para atalhos de jogos poderosos\r\nFormato compacto de 60% com funções impressas na lateral para funcionalidade de teclado em tamanho real\r\nPlate de Alumínio Aeronáutico\r\nAgora com keycaps PBT Doubleshot;\r\n\r\nTeclado:\r\nTipo: Mecânico;\r\n\r\nLayout: 60% (61 teclas) - ANSI;\r\n\r\nDimensões: 293mm (L) x 103mm;\r\n\r\nBacklight: RGB (16,777,216 cores);\r\n\r\nIluminação: iluminação RGB por tecla e 5 níveis de brilho;\r\n\r\nKeycaps: PBT Double-Shot;\r\n\r\nTipo de conexão: USB;\r\n\r\nAnti-ghosting: 100% anti-ghosting;\r\n\r\nRegistro: Funcionalidade N-key Rollover;\r\n\r\nControle de mídia: Sim;\r\n\r\nCompatibilidade OS: Windows, Xbox, PlayStation e Mac OS X;\r\n\r\nSoftware: Steelseries Engine;\r\n\r\nCabo: Removível - Trançado;\r\n\r\nConteúdo da caixa: USB-C to USB-A Cable, Keycap Puller, Guia de Informação do Produto;\r\n\r\n\r\nSwitches: OmniPoint Adjustable Mechanical Switch;\r\n\r\n\r\nTipo: Linear - Magnético;\r\n\r\nForça de atuação: Não informado;\r\n\r\nDistância de ativação (ajustável): 0,2 mm - 3,8 mm;\r\n\r\nVida útil (clicks): 100 milhões;\r\n\r\nPercurso total: 3.8 mm', 'R$ 1600,00'),
(2, 'https://acdn.mitiendanube.com/stores/001/929/213/products/huntsman-v3-pro-mini_5-33ebed07c005024b4017000942825356-480-0.webp', 'Razer Huntsman v3 Pro Mini', 'SWITCHES ÓPTICOS ANALÓGICOS GEN-2\r\nEleve a precisão e a capacidade de resposta com switches avançados, apresentando o Rapid Trigger para entradas ultrarrápidas consecutivas, uma faixa de atuação ajustável de 0,1–4,0 mm e uma impressionante vida útil de 100 milhões de pressionamentos de tecla.;\r\n\r\nAJUSTES RÁPIDOS ON-BOARD\r\nRealize ajustes precisos e instantâneos na altura de atuação ou na sensibilidade do Rapid Trigger com o auxílio visual de um conjunto de LEDs integrados. Isso permite a personalização do teclado sem a necessidade de recorrer a software adicional.;\r\n\r\nTECLAS MODIFICADORAS DE DUPLA FINALIDADE\r\nAs teclas modificadoras, localizadas no canto inferior direito do teclado, transformam-se em teclas de seta ao serem tocadas, oferecendo uma navegação conveniente que geralmente só é encontrada em teclados maiores.;\r\n;\r\nTECLAS TEXTURADAS DOUBLESHOT PBT\r\nMais duráveis do que as teclas convencionais, essas teclas foram projetadas para resistir a intensas sessões de jogos competitivos. Além disso, suas funções secundárias são claramente impressas nas laterais, proporcionando uma referência visual fácil.;\r\n\r\nPLACA SUPERIOR DE ALUMÍNIO ESCOVADO\r\nConfeccionada em alumínio de qualidade aeronáutica e aprimorada com um acabamento suave em metal escovado, a estrutura robusta do teclado foi desenvolvida para suportar o uso frequente e intenso, sendo resistente a empenamentos.;\r\n\r\nFATOR DE FORMATO COMPACTO DE 60%\r\nProjetado para otimizar o posicionamento e maximizar o espaço disponível para manobrar um mouse, o design compacto do teclado também se destaca por sua portabilidade, sendo fácil de transportar para torneios offline.;\r\n\r\nTeclado: Razer Huntsman v3 Pro Mini (RZ03-04990200-R3U1);\r\nTipo: Óptico-Analógico;\r\nLayout: 60% (61 teclas) - ANSI;\r\nDimensões: 293mm (L) x 103mm;\r\nBacklight: RGB (16,777,216 cores);\r\nIluminação: iluminação RGB por tecla e 5 níveis de brilho;\r\nKeycaps: PBT Double-Shot;\r\nTipo de conexão: USB-C;\r\nAnti-ghosting: 100% anti-ghosting;\r\nRegistro: Funcionalidade N-key Rollover;\r\nControle de mídia: Sim;\r\nSoftware: Synapse;\r\nCompatibilidade: PC/PS4;\r\nCabo: Removível - Trançado;\r\nConteúdo da caixa: USB-C to USB-A Cable, Guia de Informação do Produto.;\r\n\r\nSwitch: Razer™ Analog Optical Switch Gen-2;\r\nTipo: Óptico-Analógico;\r\nForça de atuação: 40g;\r\nDistância de ativação: 0.1 - 4.0 mm (ajustável);\r\nVida útil (clicks): 100 milhões;\r\nPercurso total: 4mm', 'R$ 2000,00'),
(3, 'https://acdn.mitiendanube.com/stores/001/929/213/products/wooting60he_71-821cfcb000354c6e2716580859738558-480-0.webp', 'Wooting 60HE', 'ATENÇÃO: Não é recomendada a utilização do Wooting60HE com cabos coiled alternativos. O cabo original garante que o teclado receba energia suficiente para seus recursos.;\r\n\r\nWooting60HE\r\n\r\nEntrada analógica liberada\r\nO Wooting 60HE detecta o movimento total do interruptor com precisão de 0,1 mm do início ao fim. Cada tecla emite um sinal analógico que pode ser usado para vários recursos que aprimoram sua experiência de digitação e jogo. Bem vindo ao futuro.;\r\n\r\nConstruído para o desempenho\r\nVocê precisa da entrada mais rápida possível entregue de forma consistente e sem falhas. Não apenas RGB ofuscante e falsas promessas. É assim que entregamos a você a ativação mais rápida possível.;\r\n\r\nPonto de atuação ajustável\r\nElimine o elemento mais lento na latência de entrada; o deslocamento inicial do pressionamento da tecla antes da ativação. Você tem controle total sobre seu ponto de atuação: de 0,1 a 4,0 mm. Configurável por tecla em etapas de 0,1 mm, você pode personalizar cada tecla de acordo com seu estilo de jogo.;\r\n\r\nRapid Trigger\r\nElimine o segundo elemento mais lento na latência de entrada; o retorno da atuação da tecla. O Rapid Trigger altera dinamicamente o ponto de atuação e desativação. Suas chaves serão ativadas quando você pretende pressioná-las e desativadas quando você pretende soltá-las. Você pode repetir uma tecla pressionada no meio do movimento sem precisar ultrapassar uma reinicialização fixa ou ponto de atuação para pressionamentos rápidos.;\r\n\r\nInterruptor Gateron x Lekker\r\nUm interruptor magnético sem contato alimentado por sensores de efeito Hall. Nenhuma folha de metal, pinos, óptica ou outro hardware sensível que sofre desgaste, rasgo ou seja sensível à partículas. Isso sobrevive ao desgaste e dura milhões de pressionamentos. Quebrou um? Basta trocá-lo por um novo, que já vem incluído com o teclado. Sua construção simples e construção de qualidade garantem uma prensa linear sem atrito. Não há colisão, atrito ou arranhão. Há apenas a suavidade linear em sua melhor forma.;\r\n\r\nExperiência de digitação suave\r\nVocê não precisa trocar uma incrível experiência de digitação por um desempenho de jogo de ponta. Este não é o seu teclado de jogo estereotipado.;\r\n‍Com os interruptores Lekker pré-lubrificados, estabilizadores lubrificados, camada densa espuma, plate de aço endurecido e design slim oferecem uma experiência de digitação incrivelmente satisfatória. Não se surpreenda se o seu 60HE acabar no escritório, estudo ou até mesmo em um ambiente público. Você encontrará desculpas para digitar algo no Wooting60HE.;\r\n\r\nSoftware fácil de usar\r\nVocê não precisará assistir a tutoriais do youtube para começar ou quebrar os nervos com a tarefa mais simples. O Wootility é simples de usar e fácil de dominar.;\r\n\r\nTudo armazenado no teclado\r\nVocê não precisa de software para ser executado em segundo plano. Todos os recursos funcionam diretamente do teclado e todas as suas configurações são salvas na memória interna de 8 MB.;\r\n\r\nCompatível com todos os SO\r\nNão importa se você usa Windows, MacOS ou Linux; oferecemos suporte a todos os sistemas operacionais.;\r\n\r\nCamadas e atalhos inteligentes\r\nCamadas, funções e soluções inteligentes são essenciais para atingir a produtividade máxima com o mínimo de espaço de teclado. O Wooting 60HE possui 4 perfis de teclado com 3 camadas programáveis cada. Todos acessíveis com teclas de função. Você não está restrito ao mapeamento padrão e pode remapear tudo sem limitações.;\r\n\r\nRemapeamento de teclas sem limites\r\nVocê pode mapear cada chave da maneira que achar melhor em várias camadas e perfis. Você não será forçado a aprender camadas de funções bobas com ícones não descritivos ou viver com soluções medíocres de teclas de seta. Você tem controle total sobre seu fluxo de trabalho produtivo com remapeamento.;\r\n‍\r\nMod-tap\r\n‍Pressione uma vez para a tecla de seta, segure para a tecla modificadora. Este é o poder do mod-tap. Diferencie entre uma pressão curta e longa para descobrir o pico de produtividade.;\r\n\r\nKeycaps PBT Double Shot\r\nKeycaps PBT Double Shot de alta qualidade com um design limpo, cores puras, brilho e bordas grossas em toda a volta. Esta é a estreia das keycaps Double Shot Wooting, uma vez que você as possui, você nunca mais olhará para trás. Elas são pré-instaladas e estão disponíveis apenas para teclados de layout ANSI.;\r\n\r\nTeclado:\r\nTipo: Mecânico;\r\nLayout: 60% (61 teclas) - ANSI;\r\nDimensões: 293mm (L) x 103mm;\r\nBacklight: RGB (16,777,216 cores);\r\nIluminação: iluminação RGB por tecla e 5 níveis de brilho;\r\nKeycaps: PBT Double-Shot;\r\nTipo de conexão: USB-C;\r\nAnti-ghosting: 100% anti-ghosting;\r\nRegistro: Funcionalidade N-key Rollover;\r\nControle de mídia: Sim;\r\nCompatibilidade OS: Windows e Mac OS X;\r\nSoftware: Sim;\r\nCabo: Removível - Trançado;\r\nConteúdo da caixa: USB-C to USB-A Cable, Keycap Puller, Guia de Informação do Produto, Switch Puller, Faixa lateral, 3 Switches extras;\r\n\r\nSwitches: Gateron Lekker;\r\n\r\nTipo: Linear - Silencioso - Magnético;\r\nForça de atua', 'R$ 1980,00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `senha` tinytext DEFAULT NULL,
  `perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `data_nasc`, `senha`, `perfil`) VALUES
(1, 'vivi', 'vivi@gmail.com', '2003-01-22', '$2y$10$mrWg3Y9owjRDgs6nePnfgu.s/oOPIUna9AtmVFvb0Vd/BMSCBB5BC', 0),
(2, 'vi', 'vi@vi.com', '2001-02-02', '$2y$10$RvDy4HyIouNKS8ududIzzOd.1BacsMF7NtttEq/U2hIyaYKQIOpyK', 0),
(3, 'loverboy', 'lover@boy.com', '2020-02-20', '$2y$10$mv5jhepU6JbV0Vu4RfjQmeIC1ef2gzCTqR7gNcIDZoDVdsS7LyBYu', 0),
(8, 'zaghi', 'za@ghi,com', '2001-02-20', '$2y$10$/JmGTdmWnXWab6XYz2a//ehGMukxR7JJ5In9Z39R6tgHPygamgtuO', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `mousepads`
--
ALTER TABLE `mousepads`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mouses`
--
ALTER TABLE `mouses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `teclados`
--
ALTER TABLE `teclados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mousepads`
--
ALTER TABLE `mousepads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `mouses`
--
ALTER TABLE `mouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `teclados`
--
ALTER TABLE `teclados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
