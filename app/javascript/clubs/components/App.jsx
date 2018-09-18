import React from 'react'
import {
  BrowserRouter as Router,
  Route
} from 'react-router-dom'
import ClubsList from './ClubsList'

const App = (props) => (
  <Router>
  	<div>
  	  <Route
  	    path='/'
  	    component={ClubsList}
  	  />
  	</div>
  </Router>
)

export default App
