// -- REACT
import { useState, useEffect } from 'react';
// -- STYLE
import './styles.scss';
// -- IMAGES
import imagemFechado from '../../assets/hmenu-fechado.svg/';
import imagemAberto from '../../assets/hmenu-aberto.svg/';
// -- COMPONENTS
import ILinkedin from '../Icons/ILinkedin.jsx';
import IGithub from '../Icons/IGithub.jsx';
import IInsta from '../Icons/IInsta.jsx';

// -- FUNCTION
function Menu() {
  const [icone, setIcone] = useState(imagemFechado);
  const [hMenu, setHMenu] = useState(false);

  const hMenuToggle = () => {
    setHMenu(!hMenu);
  };
  const resetHMenu = () => {
    if (window.innerWidth > 768) {
      setHMenu(false);
  }};
  
  useEffect(() => {
    const menuHamburgerRef = document.getElementById('menu-hamburger');
    const mainRef = document.getElementById('main');
    
    setIcone(icone == imagemFechado? imagemAberto: imagemFechado);
    menuHamburgerRef.classList.toggle('aberto');
    mainRef.classList.toggle('white-out');
  }, [hMenu]);

  useEffect(() => {
    window.addEventListener('resize', resetHMenu);
    resetHMenu();
    return () => {
      window.removeEventListener('resize', resetHMenu);
    };},[]);

  return (
    <div id='h-menu'>


      <button onClick={hMenuToggle}>
        <img src={icone} alt='menu hamburger' id='img-hmenu'/>
      </button>

      <section id='menu-hamburger' className='menu-hamburger'>

        <nav className='hmenu-1'><ul>
          <li><a href="/">Sobre</a></li>
          <li><a href="/">Skills</a></li>
          <li><a href="/">Projetos</a></li>
        </ul></nav>

        <nav className='hmenu-2'><ul>
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

      </section>


    </div>
  );
};

export default Menu;