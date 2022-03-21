# TESTE [RARO LABS](https://rarolabs.com.br)

### ATALHOS

- [OBJETIVOS](#objetivos)
- [TECNOLOGIAS USADAS](#tecnologias-usadas)
- [GIF APP DEMO](#gif-app-demo)
- [INSTRUÇÕES PARA RODAR O APP](#instruções-para-rodar-o-app)
- [INSTRUÇÕES PARA RODAR OS TESTES](#instruções-para-rodar-os-testes)

------------

### OBJETIVOS

- [x] Vagas ocupadas
- [x] Registrar entrada dos veículos
- [x] Registrar saída dos veículos
- [x] Qual vaga X veículos está ocupando
- [x] Histórico de entradas
- [x] Histórico de saídas
- [x] Fechamento diario
- [x] Tema Claro
- [x] Tema Escuro
- [x] Cores diferentes
- [x] Persistência de Dados
- [x] Testes

------------

### TECNOLOGIAS USADAS

- [Flutter](https://flutter.dev)
- [MobX](https://pub.dev/packages/mobx)
- [Get.It](https://pub.dev/packages/get_it)
- [MobX Code Gen](https://pub.dev/packages/mobx_codegen)
- [Build Runner](https://pub.dev/packages/build_runner)
- [Shared Preferences](https://pub.dev/packages/shared_preferences)

------------

### GIF APP DEMO

<img src="https://github.com/mazieri/img/blob/main/demo%20app%20raro%20labs.gif">

------------

### INSTRUÇÕES PARA RODAR O APP

1. Instale o SDK do [Flutter](https://flutter.dev)
2. Baixe e extraia ou clone o repostório para alguma pasta a sua escolha
3. Agora é só abrir a pasta no seu editor de código preferido e executar o mesmo (eu executei o mesmo no iOS, Android e no web (só não recomendo usar os modos desktop, ao menos na versão do macOS está dando um erro com o shared preference), então fique a vontade para escolher sua plataforma de preferência, lembrando que o app foi feito pensando no iOS/Android, então rodar no desktop/web pode ficar meio estranho)... mas se quiser rodar direto de um terminal é só seguir as instruções da linha abaixo
4. No seu terminal rode o comando ```flutter devices```, adicionando ```fvm``` caso precise, ele irá lhe mostrar os dispositivos capazes de rodar o código naquele momento, seja seu desktop, web ou algum emulador
5. Agora, vá até a pasta "teste_rarolabs", estando dentro dela, para rodar é só executar diretamente o código ```flutter run``` ou caso use o [fvm](https://fvm.app) é ```fvm flutter run```, com esse comando ele irá escolher automaticamente um dos "devices" disponíveis, mas caso queira escolher por si mesmo é só adicionar depois do comando a tag ```-d``` seguindo do o identificador do dispositivo alvo, por exemplo, se for para rodar no chrome o comando ficaria assim ```-d chrome```, já no macOS ficaria assim ```-d macos``` e assim vai, o identificador é a informação que aparece logo após o nome do dispositivo ao usar o ```flutter devices```, no caso logo após a "1ª bolinha" 

### INSTRUÇÕES PARA RODAR OS TESTES

1. Instale o SDK do [Flutter](https://flutter.dev)
2. Baixe e extraia ou clone o repostório para alguma pasta a sua escolha
3. Agora é só abrir a pasta no seu editor de código preferido e executar os testes ali mesmo... mas se quiser rodar direto de um terminal é só seguir as instruções da linha abaixo
4. Vá até a pasta "teste_rarolabs", estando dentro dela, para rodar é só executar diretamente o código ```flutter test``` ou caso use o [fvm](https://fvm.app) é ```fvm flutter test```, feito isso, o código ira executar todos os testes contidos na pasta ```test```
