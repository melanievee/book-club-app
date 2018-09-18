import React from 'react'
import { Link } from 'react-router-dom'
import axios from 'axios'
import { map } from 'underscore'

class ClubsList extends React.Component {
  constructor () {
    super();
    this.state = {
      clubs: {}
    };
  }

  fetchClubs() {
    axios.get( 'api/clubs' )
      .then(response => {
        this.setState({ clubs: response.data })
      })
      .catch(error => {
        console.error(error)
      })
  }

  componentDidMount () {
    this.fetchClubs()
  }

  clubLink({ id, name }) {
    return (
      <li key={id}>
        { name }
      </li>
    )
  }

  render () {
    console.log('clubs', this.state.clubs)
    return (
      <div>
        <h1>Clubs</h1>
        <ul>
          {map(this.state.clubs, this.clubLink)}
        </ul>
      </div>
    )
  }
}

export default ClubsList;
