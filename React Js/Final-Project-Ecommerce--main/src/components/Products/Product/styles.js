import { makeStyles } from '@material-ui/core/styles';

export default makeStyles(() => ({

  root: {
    // maxWidth: 345, original width style
    maxWidth: '200%',
    transform: 'scale(0.9)',
    transition: 'all 0.3s ease-in-out',
    '&:hover': {
      cursor: 'pointer',
      backgroundcolor: 'rgb(220,220,220)',
      transform: 'scale(1.1)',
    },
  },
  media: {
    height: 0,
    paddingTop: '56.25%', // 16:9
  },
  cardActions: {
    display: 'flex',
    justifyContent: 'flex-end',
  },
  cardContent: {
    display: 'flex',
    justifyContent: 'space-between',
  },
}));
