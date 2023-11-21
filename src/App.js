import cool1 from './cool1.jpeg';
import cool2 from './cool2.jpeg';
import cool3 from './cool3.jpeg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={cool1} className="App-logo" alt="logo" />
        <img src={cool2} className="App-logo" alt="logo" />
        <img src={cool3} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
