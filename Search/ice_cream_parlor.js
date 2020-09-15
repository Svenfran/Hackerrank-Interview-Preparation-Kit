const whatFlavors = (cost, money) => {
  const map = new Map();
  for (let i = 0; i < cost.length; i++) {
    let target = money - cost[i];
    if (map.has(target)) {
      console.log(map.get(target), i + 1);
      break;
    };
    map.set(cost[i], i + 1);
  };
};

whatFlavors([1, 4, 5, 3, 2], 4); // output: 1 4
whatFlavors([2, 2, 4, 3], 4); // output: 1 2
whatFlavors([1, 2, 3, 5, 6], 5); // output: 2 3
whatFlavors([4, 3, 2, 5, 7], 8); // output: 2 4
whatFlavors([7, 2, 5, 4, 11], 12); // output: 1 3

// Solution works in Hackerrank