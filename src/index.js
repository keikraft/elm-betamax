'use strict';

import './index.css';
import Elm from './Main.elm';

// .embed() can take an optional second argument. This would be an object describing the data we need to start a program, i.e. a userID or some token
const mountNode = document.getElementById('main');
const app = Elm.Main.embed(mountNode);
