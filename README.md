# Flutter Web Site

Este é um projeto de exemplo desenvolvido em Flutter para explorar a responsividade e o desenvolvimento web com Flutter. Ele demonstra como criar uma interface de usuário que se adapta a diferentes tamanhos de tela, utilizando breakpoints para ajustar o layout e exibir componentes de forma apropriada em dispositivos móveis e desktop.

## Recursos

- **Responsividade**: O layout se ajusta automaticamente com base na largura da tela, utilizando breakpoints.
- **Layout Builder**: Uso do widget `LayoutBuilder` para construir layouts responsivos dinamicamente.

## Capturas de Tela
![Captura de tela 1](Captura%20de%20tela%201.png)

![Captura de tela 2](Captura%20de%20tela%202.png)

![Captura de tela 3](Captura%20de%20tela%203.png)

![Captura de tela 4](Captura%20de%20tela%204.png)

![Captura de tela 5](Captura%20de%20tela%205.png)


## Estrutura do Projeto

- `home_page.dart`: Contém a estrutura principal da página inicial.
- `app_bar_mobile.dart` e `app_bar_web.dart`: Implementações específicas da AppBar para dispositivos móveis e web.
- `advantages_section.dart`, `courses_section.dart` e `top_section.dart`: Seções diferentes da página inicial, cada uma com seu próprio layout e conteúdo, alteradas de acordo com os breakpoints.
- `breakpoints.dart`: Define os pontos de quebra utilizados para ajustar a responsividade do layout.

## Como Usar

Para usar este projeto, siga estas etapas:

1. Clone este repositório.
2. Execute `flutter pub get` para instalar as dependências.
3. Execute o aplicativo em seu navegador de preferência.
