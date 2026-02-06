import React from 'react';

// style
import { RoundButton } from '../shared_style';

export const CountUpButton = ({
  onClick,
  isDisabled,
}) => (
  <button onClick={onClick} disabled={isDisabled}>
    ＋
  </button>
)
