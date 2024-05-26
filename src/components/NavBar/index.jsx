import './styles.scss';

function NavBar(props) {
  const { keys, links, nomes, targets } = props;

  return (
    <div id="navbar">

      <nav><ul>
        
        {keys.map(
          (key, index) => (
            <li key={key}>
              <a href={links[index]} target={targets[index]}>
                {nomes[index]}
              </a>
            </li>
        ))}

      </ul></nav>

    </div>
  );
};

export default NavBar;