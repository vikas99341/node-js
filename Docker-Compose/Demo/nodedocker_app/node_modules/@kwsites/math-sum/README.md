@kwsites/math-sum
===========

A lightweight library for summing numbers together. 


Usage
=====

Install using npm `npm install @kwsites/math-sum` or yarn  then use with require:

```typescript
import { sum } from '@kwsites/math-sum';

const numbers = [123, 456, 789];
const count = sum(numbers);

assert(count === 1368);
```

If the name `sum` clashes with your own variable naming, and you prefer not to alias in your imports,
you can use its alias `sumOf`;


```typescript
import { sumOf } from '@kwsites/math-sum';

const numbers = [123, 456, 789];
const sum = sumOf(numbers);

assert(sum === 1368);
```



