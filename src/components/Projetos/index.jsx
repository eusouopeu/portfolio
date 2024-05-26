// -- IMAGES
import projeto1 from '../../assets/projeto-colabore.png';
import projeto2 from '../../assets/projeto-adv.png'
// -- COMPONENTS
import Card from '../Card/index.jsx/';

// -- FUNCTION
function Projetos() {

  return (
    <div id='projetos'>

      <hr/>

      <h2>Projetos</h2>
      <p>Aqui estão alguns dos meus projetos</p>

      <Card imagem={projeto1} nome={'Projeto 1'} texto={'Protótipo de plataforma online de cursos e aulas para o "Espaço Colabore" de Salvador'} link={'https://www.figma.com/proto/e4d7DkdfrI193U1YI08quv/Colabore-Academy?node-id=1-10&t=BIX6Cw4R8buVK73D-1&scaling=scale-down&page-id=1%3A4&starting-point-node-id=1%3A10'} />

      <Card tipo={'reverso'} imagem={projeto2} nome={'Projeto 2'} texto={'Protótipo de sistema de gestão interna desenvolvido para um escritório de advocacia de Salvador no curso de "Design Thinking" do Tomorrow UFBA'} link={'https://www.figma.com/proto/bMdOTJ9tmf36t7eLjqeBfd/Case-Jur%C3%ADdico?node-id=1-701&t=b4AvHI0VqmL8KoY9-1&scaling=scale-down&page-id=1%3A379'}  />      

    </div>
  );
};

export default Projetos;