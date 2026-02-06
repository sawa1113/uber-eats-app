import React, { Fragment, useEffect, useReducer } from 'react';

import { fetchLineFoods } from '../apis/line_foods';

import {
  initialState,
  lineFoodsActionTyps,
  lineFoodsReducer,
} from '../reducers/lineFoods';

export const Orders = () => {

  const [state, dispatch] = useReducer(lineFoodsReducer, initialState);

  useEffect(() => {
    fetchLineFoods()
      .then((data) =>
        console.log(data)
      )
      .catch((e) => console.error(e));
  }, []);

  return (
    <Fragment>
      注文画面
    </Fragment>
  )
}
