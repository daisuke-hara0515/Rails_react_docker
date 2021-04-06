import axios from 'axios';
import { usersindex} from '../urls/index'

export const fetchUsers = () => {
    return axios.get(usersindex)
      .then(res => {
          return res.data
      })
      .catch((e) => console.error(e))
}