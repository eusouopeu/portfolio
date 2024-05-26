// -- STYLES
import '../../styles/index.scss/';
// -- COMPONENTS
import Header from '../../components/Header/index';
import Menu from '../../components/Menu/index';
import Resumo from '../../components/Resumo/index';
import Sobre from '../../components/Sobre/index';
import Skills from '../../components/Skills/index';
import Projetos from '../../components/Projetos/index';


// -- FUNCTION
function PortfolioReponsivo() {

  return (
    <section id='body'>

      <Header/>
      <Menu/>

      <section id='main' className='lala'>

        <Resumo/>
        <Sobre/>
        <Skills/>
        <Projetos/>

      </section>
      
    </section>
  )
};

export default PortfolioReponsivo;
