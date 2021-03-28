import React from 'react';
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";

import {Users} from './containers/Users.jsx';

function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/users">
          <Users />
        </Route>
      </Switch>
    </Router>
  )
}

export default App;
