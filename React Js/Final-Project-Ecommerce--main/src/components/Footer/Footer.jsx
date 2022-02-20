import React from 'react';
import { Typography } from '@material-ui/core';
// import { Link } from 'react-router-dom';
// import { BottomNavigation, BottomNavigationAction } from '@material-ui/core';

import useStyles from './styles';

export default function Footer() {
  const classes = useStyles();
  return (
    <>
      <div className={classes.footer}>
        <Typography>
          <h4 className={classes.h4}> Here you can find gadets, books, utensils, lamps, decoration stuff and much more. To ease out shopping experience for our customers, we pledge to provide best quality products on this website</h4>
          <p className={classes.para}> Copyright 1999-2021 by Refsnes Data. All Rights Reserved. W3Schools is Powered by W3.CSS.
          </p>
        </Typography>
      </div>
    </>
  );
}
