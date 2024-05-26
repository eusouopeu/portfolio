// -- STYLES
import './styles.scss';
// -- COMPONENTS
import Switch from '../Switch/index.jsx/';
// -- IMAGES
import ILinkedin from '../Icons/ILinkedin.jsx';
import IGithub from '../Icons/IGithub.jsx';
import IInsta from '../Icons/IInsta.jsx';


// -- FUNCTION
function Header() {

  return (
    <div id='header'>

      <section>
        <h4>Pedro Teles</h4>

        <nav><ul>
          <li><a href="#sobre">Sobre</a></li>
          <li><a href="#skills">Skills</a></li>
          <li><a href="#projetos">Projetos</a></li>
        </ul></nav>
      </section>

      <section>
        <nav><ul>
          <li>
            <ILinkedin link="https://www.linkedin.com/in/teles-pedro/" />
          </li>
          <li>
            <IGithub link="https://github.com/eusouopeu" />
          </li>
          <li>
            <IInsta link="https://www.instagram.com/eusouopeu" />
          </li>
        </ul></nav>

        <div>
          <p>Dark Mode</p>
          <Switch classe={'tema-atual'} tipo1={'claro'} tipo2={'escuro'} />
        </div>
      </section>

    </div>
  )
};

export default Header;