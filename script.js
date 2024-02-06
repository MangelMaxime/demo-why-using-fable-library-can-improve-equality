import { value as ProjectAValue } from './fableBuild/project-a/Main.js';
import { value as ProjectBValue } from './fableBuild/project-b/Main.js';

import { equals } from 'fable-library/Util.js';

const a = ProjectAValue();
const b = ProjectBValue();

console.log(equals(a, b)); // Mimic calling equality from F# code

console.log("A: ", ProjectAValue());
console.log("B: ", ProjectBValue());
