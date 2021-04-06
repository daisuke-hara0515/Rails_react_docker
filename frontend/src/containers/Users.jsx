import React,{Fragment, useEffect} from 'react';
import {fetchUsers} from '../apis/users';

export const Users = () => {
  useEffect(() => {
    fetchUsers()
    .then((data) =>
      console.log(data)
      )
  },[])
    return(
        <Fragment>
          <h1>ユーザー画面</h1>
          <h2>タスク一覧</h2>
        </Fragment>
    )
}