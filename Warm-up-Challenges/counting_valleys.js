const countingValleys = (steps, path) => {
  let valleys = 0;
  let level = 0;
  const pathArr = path.split('')

  for (let i = 0; i < steps; i++) {
    if (pathArr[i] === 'U' && level === -1) {
      valleys += 1;
    }
  
    if (pathArr[i] === 'U') {
      level += 1
    } else {
      level -= 1
    }
  };
  console.log(valleys);
};

countingValleys(8, 'UDDDUDUU') // output 1
countingValleys(12, 'DDUUDDUDUUUD') // output 2
countingValleys(100, 'DDUUDDDUDUUDUDDDUUDDUDDDUDDDUDUUDDUUDDDUDDDUDDDUUUDUDDDUDUDUDUUDDUDUDUDUDUUUUDDUDDUUDUUDUUDUUUUUUUUU') // output 2
