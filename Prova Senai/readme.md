<center>
    <h1>Aluno: Leonardo Falango</h1>
    Matéria: Banco de dados
    Professor: <b>Guilherme Lemos</b>
</center>

<hr/>
    <h1>Executando o código</h1>

    Atividade proposta está no arquivo 'Exercicios.docx', possui alguns erros lógicos e sintáticos nas propostas.
    Para executar corretamente a correção da prova, deve seguir a seguinte ordem de arquivos:

    <br/>
        <&nbsp/>1º -> 'createdatabase.sql';
        <&nbsp/>2º -> 'inserts.sql';
        <&nbsp/>3º -> 'Triggers/' e 'Views/' executar todos os arquivos das pastas, não importando a ordem a ser feito;
        <&nbsp/>4º -> 'tests.sql' que basicamente é a prova de que os Triggers e as Views estão funcionando.
<br/>

<hr/>
    <h1>Informações adicionais/Comentários</h1>

    Acho válido lembrar que eu não criei a estrutura do banco de dados, apenas recriei o que foi passado no exercício, ele deveria possuir no mínimo
    uma tabela a mais para as turmas, pois desse jeito nao tem como organizar de qual turma é qual aluno e etc. Além disso, no arquivo de perguntas,
    deveria existir uma padronização de camelCase ou PascoalCase ou ainda snake_case, para facilitar o entendimento.
    Partindo para o segundo tópico, a situação de pagamento deveria ser um int para economizar espaço e ela seria uma fk para outra tabela com a explicação
    da situação, ex:
    <&nbsp/><textarea>TABLE Situacoes (id, situacao):
        0 = 'em atraso',
        1 = 'pago',
        2 = 'pendente'
    <br/>
    TABLE Pagamentos (id, id_aluno, FK_situacao):
        1, 0 -> Aluno 1 está com o pagamento do boleto atrasado
        2, 1 -> Aluno 2 está com o pagamento do boleto pago
        3, 2 -> Aluno 3 está com o pagamento do boleto pendente
    </textarea>
