import React from 'react';

// style
import { RoundButton } from '../shared_style';

export const CountDownButton = ({
  onClick,
  isDisabled,
}) => (
  <button onClick={onClick} disabled={isDisabled}>
    ー
  </button>
)
